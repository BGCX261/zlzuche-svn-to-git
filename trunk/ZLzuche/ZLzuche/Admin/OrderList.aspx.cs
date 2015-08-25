using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    /// <summary>
    /// 订单列表
    /// </summary>
    public partial class OrderList : System.Web.UI.Page
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
                    var ordersList = entity.Orders.OrderByDescending(x=>x.CreateTime).ToList();
                    this.OrderGrid.DataSource = ordersList;
                    this.OrderGrid.DataBind();
                }
            }
            catch (Exception ex)
            { }
        }
    }
}