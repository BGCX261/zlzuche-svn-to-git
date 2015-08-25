using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche
{
    public partial class NewApply : System.Web.UI.Page
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
            string enterpriseName = this.EnterpriseName.Text.Trim();
            string linkman = this.Linkman.Text.Trim();
            string linktel = this.LinkTel.Text.Trim();
            string email = this.Email.Text.Trim();
            string needinfo = this.NeedInfo.Text.Trim();
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    ZLzuche.Model.rzzlApply model = new Model.rzzlApply();
                    model.EnterpriseName = enterpriseName;
                    model.Linkman = linkman;
                    model.LinkTel = linktel;
                    model.Email = email;
                    model.NeedInfo = needinfo;
                    model.ApplyTime = DateTime.Now;
                    entity.AddTorzzlApply(model);
                    entity.SaveChanges();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('申请成功');window.close();</script>");
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('新增失败');</script>");
                return;
            }
        }
    }
}