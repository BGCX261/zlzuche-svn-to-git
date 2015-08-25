using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class AdminSiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerId"] == null || Session["LoginId"] == null || Session["LoginId"].ToString() != "admin")
            {
                Response.Redirect("~/Index.aspx");
            }
        }
    }
}