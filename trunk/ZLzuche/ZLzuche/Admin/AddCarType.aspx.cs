using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class AddCarType : System.Web.UI.Page
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
            string cartypename = this.CarTypeName.Text.Trim();
            string describe = this.Describe.Text.Trim();
            string remark = this.Remark.Text.Trim();
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    ZLzuche.Model.CarType cartype = new Model.CarType();
                    cartype.CarTypeName = cartypename;
                    cartype.Describe = describe;
                    
                    cartype.Remark = remark;
                    entity.AddToCarType(cartype);
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