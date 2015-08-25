using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string name = this.txtUserName.Text.Trim();
            string password = this.txtPassword.Text.Trim();
            string md5password=Common.Md5.GetMd5Hash(password);
            try
            {
                using (var db = new Model.ZLzucheEntities())
                {
                    var entity = db.Customer.FirstOrDefault(model => (model.LoginID == name || model.Phone == name || model.Email == name || model.PapersNumber == name) && model.Password == md5password);
                    if (entity != null && entity.ID > 0)
                    {
                        Session["CustomerId"] = entity.ID;
                        Session["LoginId"] = entity.LoginID;
                        var url = this.ResolveUrl("~/Index.aspx");
                        Response.Redirect(url);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('用户名或密码错误');</script>");
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('用户登录失败');</script>");
                return;
            }
        }
    }
}
