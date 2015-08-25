using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Account
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        /// <summary>
        /// 用户注册
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string phone = this.phone.Text.Trim();
            string email = this.email.Text.Trim();
            string name = this.name.Text.Trim();
            string cardno = this.cardno.Text.Trim();
            string password = this.password.Text.Trim();
            string repassword = this.repassword.Text.Trim();
            string checkcode = this.checkcode.Text.Trim();
            string ischeck = Session["UserCode"].ToString();
            if (password.Equals(repassword) == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('两次密码输入不一致');</script>");
                return;
            }
            if (ischeck.Equals(checkcode.ToUpper()) == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('验证码输入错误');</script>");
                return;
            }
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    ZLzuche.Model.Customer customer = new Model.Customer();
                    customer.LoginID = name;
                    customer.Phone = phone;
                    customer.Email = email;
                    customer.CustomerName = name;
                    customer.PapersNumber = cardno;
                    customer.Password = Common.Md5.GetMd5Hash(password);
                    customer.RegisterTime = DateTime.Now;
                    entity.AddToCustomer(customer);
                    entity.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('用户注册失败');</script>");
                return;
            }
        }
    }
}
