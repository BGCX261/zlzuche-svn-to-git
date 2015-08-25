using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    /// <summary>
    /// 会员/客户列表
    /// </summary>
    public partial class CustomerList : System.Web.UI.Page
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
                    var customerList = entity.Customer.ToList();
                    this.CustomerGrid.DataSource = customerList;
                    this.CustomerGrid.DataBind();
                }
            }
            catch (Exception ex)
            { }
        }
    }
}