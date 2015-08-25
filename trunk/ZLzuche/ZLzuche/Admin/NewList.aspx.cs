using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class NewList : System.Web.UI.Page
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
                    var cartypelist = entity.News.OrderByDescending(x => x.CreateTime).ToList();
                    this.CarTypeGrid.DataSource = cartypelist;
                    this.CarTypeGrid.DataBind();
                }
            }
            catch (Exception ex)
            { }
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
                        var model = entity.News.FirstOrDefault(x => x.Id == intid);
                        if (model != null)
                        {
                            entity.DeleteObject(model);
                            entity.SaveChanges();
                            BindGrid();
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('删除失败，没找到该新闻');</script>");
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
                    ((LinkButton)e.Row.Cells[3].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除吗?')");
                }
            }
        }
    }
}