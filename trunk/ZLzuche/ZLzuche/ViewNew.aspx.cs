using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche
{
    public partial class ViewNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string newid = string.Empty;
            if (Request.QueryString["Id"] != null && !string.IsNullOrEmpty(Request.QueryString["Id"].ToString()))
            {
                newid = Request.QueryString["Id"].ToString();
                this.BindNew(Convert.ToInt32(newid));
            }
        }

        public void BindNew(int newid)
        {
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    var newmodel = entity.News.Where(x => x.Id == newid).FirstOrDefault();
                    if (newmodel == null)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('该新闻不存在');</script>");
                        return;
                    }
                    else
                    {
                        this.labTitle.InnerHtml = newmodel.Subject;
                        this.buildTime.InnerHtml = "发表时间：" + newmodel.CreateTime.ToString();
                        this.divContent.InnerHtml = newmodel.Content;
                    }
                }
            }
            catch (Exception ex)
            { 
                
            }
        }
    }
}