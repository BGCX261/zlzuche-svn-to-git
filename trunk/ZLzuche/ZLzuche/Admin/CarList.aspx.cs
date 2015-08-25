using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class CarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    var carlist = entity.Car.ToList();
                    this.CarTypeGrid.DataSource = carlist;
                    this.CarTypeGrid.DataBind();
                }
            }
            catch (Exception ex)
            { }
        }

        public string GetShopName(string shopId)
        {
            int id = Convert.ToInt32(shopId);
            string shopname = string.Empty;
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                var shopmodel = entity.Shop.Where(x => x.ID == id).FirstOrDefault();
                if (shopmodel != null)
                {
                    shopname = shopmodel.Name;
                }
            }
            return shopname;
        }

        public string GetCarTypeName(string cartypeid)
        {
            int id = Convert.ToInt32(cartypeid);
            string cartypename = string.Empty;
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                var cartypemodel = entity.CarType.Where(x => x.ID == id).FirstOrDefault();
                if (cartypemodel != null)
                {
                    cartypename = cartypemodel.CarTypeName;
                }
            }
            return cartypename;
        }

        protected void CarTypeGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CarTypeGrid.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void CarTypeGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //string id = CarTypeGrid.DataKeys[e.RowIndex].Value.ToString();
            //string name = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtName"))).Text.ToString();//通过 DataKeyNames 属性来设置
            //string describe = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtDescribe"))).Text.ToString();//获取当前行当前列的值，重点
            //string remark = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtRemark"))).Text.ToString();//获取当前行当前列的值，重点
            //try
            //{
            //    using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            //    {
            //        int intid = Convert.ToInt32(id);
            //        var model = entity.CarType.FirstOrDefault(x => x.ID == intid);
            //        if (model != null)
            //        {
            //            model.CarTypeName = name;
            //            model.Describe = describe;
            //            model.Remark = remark;
            //            entity.SaveChanges();
            //        }
            //        else
            //        {
            //            ClientScript.RegisterStartupScript(this.GetType(), "alert", "编辑失败，没找到该车辆");
            //            return;
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "编辑发生异常");
            //    return;
            //}
            //CarTypeGrid.EditIndex = -1;//设置当前编辑行为空
            //BindGrid();
        }

        protected void CarTypeGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //CarTypeGrid.EditIndex = -1;//设置当前编辑行为空
            //BindGrid();
        }

        protected void CarTypeGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = CarTypeGrid.DataKeys[e.RowIndex].Value.ToString();
            if (!string.IsNullOrEmpty(id))
            {
                try
                {
                    using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                    {
                        int intid = Convert.ToInt32(id);
                        var model = entity.Car.FirstOrDefault(x => x.ID == intid);
                        if (model != null)
                        {
                           
                                entity.DeleteObject(model);
                                entity.SaveChanges();
                                BindGrid();
                            
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除失败，没找到该车辆');</script>");
                            return;
                        }
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除发生异常');</script>");
                    return;
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除失败');</script>");
                return;
            }
        }

        protected void CarTypeGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //如果是绑定数据行 
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    //int a = e.Row.Cells.Count;
                    //var b = e.Row.Cells[10].Text;
                    ((LinkButton)e.Row.Cells[11].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除吗?')");
                }
            }
        }
    }
}