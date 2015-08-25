using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZLzuche.Model;

namespace ZLzuche
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (CustomerHelper.CustomerId > 0 || UserHelper.CurrentUserId() > 0)
                {
                    hyLogin.Visible = false;
                    ltlLoginName.Visible = true;
                    ltlLoginName.Text = CustomerHelper.CustomerId > 0
                                            ? CustomerHelper.CustomerName
                                            : UserHelper.CurrentUserName();
                }

                if (Session["CustomerId"] != null && Session["LoginId"] != null && Session["LoginId"].ToString() == "admin")
                {
                    this.tdAdmin.Visible = true;
                }
            }
        }

    }
}
