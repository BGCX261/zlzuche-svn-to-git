using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZLzuche.Model;

namespace ZLzuche
{
    public partial class MyZL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = string.Empty;
                if (Session["CustomerId"] == null)
                {
                    Response.Redirect("~/Account/Login.aspx");
                }
                else
                {
                    id = Session["CustomerId"].ToString();
                }
                BindGrid(Convert.ToInt32(id));
            }
        }

        /// <summary>
        /// 绑定订单
        /// </summary>
        /// <param name="customerId"></param>
        private void BindGrid(int customerId)
        {
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    var ordersList = entity.Orders.Where(x => x.CustomerID == customerId).ToList();
                    this.OrderGrid.DataSource = ordersList;
                    this.OrderGrid.DataBind();
                }
            }
            catch (Exception ex)
            { }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetCustomerName(string customerId)
        {
            int id = Convert.ToInt32(customerId);
            string customerName = string.Empty;
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                var customerModel = entity.Customer.Where(x => x.ID == id).FirstOrDefault();
                if (customerModel != null)
                {
                    customerName = customerModel.CustomerName;
                }
            }
            return customerName;
        }

        public string GetCarName(string orderId)
        {
            int id = Convert.ToInt32(orderId);
            string carName = string.Empty;
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                var orderdetail = entity.OrderDetails.Where(x => x.OrderId == id).FirstOrDefault();
                if (orderdetail != null)
                {
                    int carid = Convert.ToInt32(orderdetail.CarId);
                    var carmodel = entity.Car.Where(x => x.ID == carid).FirstOrDefault();
                    if (carmodel != null)
                    {
                        carName = carmodel.CarName;
                    }
                }
            }
            return carName;
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string id = Session["CustomerId"] == null ? string.Empty : Session["CustomerId"].ToString();
            string oldpassword = this.OldPassword.Text.Trim();
            string newpassword = this.NewPassword.Text.Trim();
            string renewpassword = this.ReNewPassword.Text.Trim();
            try
            {
                if (string.IsNullOrEmpty(id))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('用户标识为空，不能修改密码');</script>");
                    Response.Redirect("~/Account/Login.aspx");
                    return;
                }
                if (newpassword.Equals(renewpassword) == false)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('新密码和确认密码输入不一致，请重新输入');</script>");
                    this.NewPassword.Text = string.Empty;
                    this.ReNewPassword.Text = string.Empty;
                    this.NewPassword.Focus();
                    return;
                }
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    int uid=Convert.ToInt32(id);
                    //string md5password=Common.Md5.GetMd5Hash(password);
                    string md5password = Common.Md5.GetMd5Hash(oldpassword);
                    var model = entity.Customer.Where(x => x.ID == uid && x.Password == md5password).FirstOrDefault();
                    if (model == null)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('原始密码输入错误，请重新输入');</script>");
                        this.OldPassword.Text = string.Empty;
                        this.OldPassword.Focus();
                        return;
                    }
                    else
                    {
                        model.Password = Common.Md5.GetMd5Hash(newpassword);
                        entity.SaveChanges();
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('密码修改成功');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('修改密码发生异常');</script>");
                return;
            }
        }

        //protected void OrderGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    string id = OrderGrid.DataKeys[e.RowIndex].Value.ToString();
        //    if (!string.IsNullOrEmpty(id))
        //    {
        //        try
        //        {
        //            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
        //            {
        //                int intid = Convert.ToInt32(id);
        //                var model = entity.Orders.FirstOrDefault(x => x.ID == intid);
        //                var orderdetail = entity.OrderDetails.FirstOrDefault(x => x.OrderId == intid);
        //                if (orderdetail != null)
        //                {
        //                    entity.DeleteObject(orderdetail);
        //                    entity.DeleteObject(model);
        //                    entity.SaveChanges();
        //                    BindGrid(CustomerHelper.CustomerId);
        //                }  
        //                else
        //                {
        //                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除失败，没找到该订单');</script>");
        //                    return;
        //                }
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除发生异常');</script>");
        //            return;
        //        }
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除失败');</script>");
        //        return;
        //    }
        //}

        //protected void OrderGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    //如果是绑定数据行 
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
        //        {
        //            //int a = e.Row.Cells.Count;
        //            //var b = e.Row.Cells[10].Text;
        //            ((LinkButton)e.Row.Cells[7].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除吗?')");
        //        }
        //    }
        //}
    }
}