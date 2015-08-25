using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZLzuche.Model;

namespace ZLzuche.com
{
    public partial class ShortRent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindData();
                this.BindTakeStore();
                this.txtTakeTime.Text = DateTime.Today.ToString("yyyy-MM-dd");
                ltlTakeTime.Text = this.txtTakeTime.Text;
                this.txtReturnTime.Text = DateTime.Today.AddDays(2).ToString("yyyy-MM-dd");

                this.BindUrlData();

                if (CurrentNavIndex == 2)
                {
                    Step01.Visible = false;
                    Step02.Visible = true;
                }
            }
        }

        protected int CurrentNavIndex
        {
            get
            {
                var index = 0;
                if (string.IsNullOrEmpty(hfCurrentStepIndex.Value))
                {
                    var navIndex = Request.QueryString["navIndex"];
                    if (!Int32.TryParse(navIndex, out index)) index = 1;
                    hfCurrentStepIndex.Value = Convert.ToString(index);
                }
                return Convert.ToInt32(hfCurrentStepIndex.Value);
            }
            set { this.hfCurrentStepIndex.Value = Convert.ToString(value); }
        }


        private void BindData()
        {
            using (var db = new ZLzucheEntities())
            {
                //短租（取车城市）
                var takeCityList = db.Shop.OrderBy(model => model.City).Select(model => new { City = model.City }).Distinct();
                ddlShortRentTakeCity.DataSource = takeCityList;
                ddlShortRentTakeCity.DataBind();
                if (takeCityList.Count() == 1)
                {
                    ddlShortRentTakeCity.SelectedIndex = 1;
                    ddlShortRentTakeCity.Visible = false;
                    var item = takeCityList.ToList()[0];
                    lblShortRentTakeCity.Text = item.City;
                }
            }
        }

        private void BindTakeStore()
        {
            using (var db = new ZLzucheEntities())
            {
                //(还车门店)
                var takeStoreList = db.Shop.OrderBy(model => model.Name).Select(model => new { Name = model.Name }).Distinct();
                ddlTakeStore.DataSource = takeStoreList;
                ddlTakeStore.DataBind();
                ddlTakeStore.Items.Insert(0, new ListItem("--请选择--", ""));
                if (takeStoreList.Count() == 1)
                {
                    ddlTakeStore.SelectedIndex = 1;
                    ddlTakeStore.Visible = false;
                    var item = takeStoreList.ToList()[0];
                    lblTakeStore.Text = item.Name;
                    ltlTakeStore.Text = item.Name;
                    cbIsEqualStore.Checked = true;
                    cbIsEqualStore.Visible = false;
                }
            }
        }

        protected void ddlShortRentTakeCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.BindTakeStore();
        }


        private void BindUrlData()
        {
            var takeCity = Request.QueryString["takeCity"];
            var takeStore = Request.QueryString["takeStore"];
            var isSend = Request.QueryString["isSend"];
            var equalStore = Request.QueryString["equalStore"];
            var takeTime = Request.QueryString["takeTime"];
            var returnTime = Request.QueryString["returnTime"];
            if (!string.IsNullOrEmpty(takeCity))
                ddlShortRentTakeCity.Text = lblShortRentTakeCity.Text = takeCity;
            if (!string.IsNullOrEmpty(takeStore))
                ddlTakeStore.Text = lblTakeStore.Text = takeStore;
            if (!string.IsNullOrEmpty(isSend))
                cbIsSend.Checked = Convert.ToBoolean(isSend);
            if (!string.IsNullOrEmpty(equalStore))
                cbIsEqualStore.Checked = Convert.ToBoolean(equalStore);
            if (!string.IsNullOrEmpty(takeTime))
                txtTakeTime.Text = takeTime;
            if (!string.IsNullOrEmpty(returnTime))
                txtReturnTime.Text = returnTime;
        }

        protected decimal CalculateTotalRent(decimal price)
        {
            var takeTime = txtTakeTime.Text;
            var returnTime = txtReturnTime.Text;
            var dtTakeTime = DateTime.Now;
            var dtReturnTime = DateTime.Now;
            if (DateTime.TryParse(takeTime, out dtTakeTime) && DateTime.TryParse(returnTime, out dtReturnTime))
            {
                var timespan = dtReturnTime - dtTakeTime;
                return timespan.Days * price;
            }
            return 0;

        }

        protected void lbnShortRent_Click(object sender, EventArgs e)
        {
            CurrentNavIndex = 2;
            ltlTakeTime.Text = txtTakeTime.Text;
            ltlTakeStore.Text = ddlTakeStore.Text;
            Step01.Visible = false;
            Step02.Visible = true;
        }

        protected void btnStepSwitchOver_Click(object sender, EventArgs e)
        {
            var linkbutton = (LinkButton)sender;
            if (linkbutton.CommandName == "Step02")
            {
                CurrentNavIndex = 2;
                ltlTakeTime.Text = txtTakeTime.Text;
                ltlTakeStore.Text = ddlTakeStore.Text;
                Step04.Visible = Step01.Visible = false;
                Step02.Visible = true;
            }
            else if (linkbutton.CommandName == "Step04")
            {
                CurrentNavIndex = 4;
                Step01.Visible = Step02.Visible = false;
                Step04.Visible = true;
                SwitchStep4();
            }
            else
            {
                CurrentNavIndex = 1;
                Step01.Visible = true;
                Step04.Visible = Step02.Visible = false;
            }
        }

        private void SwitchStep4()
        {
            using (var db = new ZLzucheEntities())
            {
                var carId = string.IsNullOrEmpty(hfCarId.Value) ? 0 : Convert.ToInt32(hfCarId.Value);
                var car = db.Car.FirstOrDefault(model => model.ID == carId);
                lblCarInfo4.Text = (car == null) ? "" : string.Format("{0}/{1}", car.CarName, car.CarModel);

                lblMemberName4.Text = UserHelper.CurrentUserName();
                lbltakeTime4.Text = txtTakeTime.Text;
                lblReturnTime4.Text = txtReturnTime.Text;

                var timespan = Convert.ToDateTime(lblReturnTime4.Text) - Convert.ToDateTime(lbltakeTime4.Text);
                var days = timespan.Days;
                lblTakeDays4.Text = lblRentCycleDays4.Text = Convert.ToString(days);
                lblTotalRentMoney4.Text = car == null ? "0" : Convert.ToString(car.Price * days);
                lblInsureMoney.Text = car == null ? "0" : Convert.ToString(40 * days);

                lblTotalMoney4.Text = Convert.ToString(Convert.ToDecimal(lblTotalRentMoney4.Text) + Convert.ToDecimal(lblInsureMoney.Text));
            }
        }

        protected void repCarList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "order")
            {
                var repItem = e.Item;
                var carId = e.CommandArgument;
                this.hfCarId.Value = carId.ToString();

                CurrentNavIndex = 4;
                Step01.Visible = Step02.Visible = false;
                Step04.Visible = true;
                SwitchStep4();

                SwitchStep4();
            }
        }

        protected void lbnSubmitOrder_Click(object sender, EventArgs e)
        {
            using (var db = new ZLzucheEntities())
            {
                var orders = new Orders
                    {
                        CustomerID = CustomerHelper.CustomerId,
                        OrderType = "短租",
                        GetCarTime = Convert.ToDateTime(txtTakeTime.Text),
                        ReturnCarTime = Convert.ToDateTime(txtReturnTime.Text),
                        HireDays = Convert.ToString((Convert.ToDateTime(txtReturnTime.Text) - Convert.ToDateTime(txtTakeTime.Text)).Days),
                        CreateTime = DateTime.Now
                    };
                var carId = string.IsNullOrEmpty(hfCarId.Value) ? 0 : Convert.ToInt32(hfCarId.Value);
                if (carId > 0)
                {
                    var car = db.Car.SingleOrDefault(model => model.ID == carId);
                    var orderDetails = new OrderDetails
                        {
                            Orders = orders,
                            CarId = car.ID,
                            Price = car.Price,
                            CarNum = 1,
                            Status = 0,
                            CreateBy = CustomerHelper.CustomerId,
                            CreateTime = DateTime.Now
                        };
                    orders.OrderDetails.Add(orderDetails);
                }
                db.Orders.AddObject(orders);
                db.SaveChanges();
                ScriptHelper.Alert(this,"短租订单提交成功");
                var gotoUrl = this.ResolveUrl("ShortRent.aspx");
                ScriptHelper.Goto(this,gotoUrl);
            }
        }

    }
}