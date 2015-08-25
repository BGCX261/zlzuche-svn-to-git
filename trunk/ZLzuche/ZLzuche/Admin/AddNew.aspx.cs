using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class AddNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnNew_Click(object sender, EventArgs e)
        {
            string newtype = this.NewType.SelectedItem.Text; ;
            string subject = this.Subject.Text.Trim();
            string hidcontent = this.hidcontent.Value;
            string content = HttpUtility.UrlDecode(hidcontent);
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    ZLzuche.Model.News news = new Model.News();
                    news.NewType = newtype;
                    news.Subject = subject;
                    news.Content =content;
                    news.CreateBy = Convert.ToInt32(Session["ID"] == null ? "0" : Session["ID"].ToString());
                    news.CreateTime = DateTime.Now;
                    entity.AddToNews(news);
                    entity.SaveChanges();
                }
                Response.Write("<script language='javascript'>window.opener.location.reload();</script>");
                Response.Write("<script language='javascript'>window.opener=null;window.close();</script>");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('新增失败');</script>");
                return;
            }
        }
    }
}