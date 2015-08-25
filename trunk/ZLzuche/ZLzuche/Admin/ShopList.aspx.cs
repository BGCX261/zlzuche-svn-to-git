using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    /// <summary>
    /// 店铺列表
    /// </summary>
    public partial class ShopList : System.Web.UI.Page
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
                    var shoplist = entity.Shop.ToList();
                    this.CarTypeGrid.DataSource = shoplist;
                    this.CarTypeGrid.DataBind();
                }
            }
            catch (Exception ex)
            { }
        }

        protected void CarTypeGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CarTypeGrid.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void CarTypeGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = CarTypeGrid.DataKeys[e.RowIndex].Value.ToString();
            string name = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtName"))).Text.ToString();//通过 DataKeyNames 属性来设置
            string address = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtAddress"))).Text.ToString();
            string tel = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtTel"))).Text.ToString();
            string describe = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtDescribe"))).Text.ToString();//获取当前行当前列的值，重点
            string remark = ((TextBox)(CarTypeGrid.Rows[e.RowIndex].FindControl("txtRemark"))).Text.ToString();//获取当前行当前列的值，重点
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    int intid = Convert.ToInt32(id);
                    var model = entity.Shop.FirstOrDefault(x => x.ID == intid);
                    if (model != null)
                    {
                        model.Name = name;
                        model.Address = address;
                        model.Tel = tel;
                        model.Describe = describe;
                        model.Remark = remark;
                        entity.SaveChanges();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('编辑失败');</script>");
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('编辑发生异常');</script>");
                return;
            }
            CarTypeGrid.EditIndex = -1;//设置当前编辑行为空
            BindGrid();
        }

        protected void CarTypeGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            CarTypeGrid.EditIndex = -1;//设置当前编辑行为空
            BindGrid();
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
                        var model = entity.Shop.FirstOrDefault(x => x.ID == intid);
                        if (model != null)
                        {
                            var carList = entity.Car.Where(x => x.ShopId == intid).ToList();
                            if (carList.Count > 0)
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('请先删除该店铺下的所有汽车，再删除该店铺');</script>");
                                return;
                            }
                            else
                            {
                                entity.DeleteObject(model);
                                entity.SaveChanges();
                                BindGrid();
                            }
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除失败');</script>");
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
                    ((LinkButton)e.Row.Cells[6].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除吗?')");
                }
            }
        }
    }
}