using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class AddShop : System.Web.UI.Page
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
            string name = this.Name.Text.Trim();
            string tel = this.Tel.Text.Trim();
            string address = this.Address.Text.Trim();
            string describe = this.Describe.Text.Trim();
            string remark = this.Remark.Text.Trim();
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    ZLzuche.Model.Shop shop = new Model.Shop();
                    shop.Name = name;
                    shop.Tel = tel;
                    shop.Address = address;
                    shop.Describe = describe;
                    shop.Remark = remark;
                    entity.AddToShop(shop);
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