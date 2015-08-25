using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZLzuche.Model;

namespace ZLzuche.com
{
    public partial class LongRent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetCarTime.Text = DateTime.Now.ToString("yyyy-MM-dd");

                BindData();
                BindCarType();
                BindCarName();
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
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                //短租（取车城市）
                var takeCityList = entity.Shop.OrderBy(model => model.City).Select(model => new { City = model.City }).Distinct();
                if (takeCityList.Count() == 1)
                {
                    var item = takeCityList.ToList()[0];
                    lblShortRentTakeCity.Text = item.City;
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        public void BindCarType()
        {
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                var cartypelist = entity.CarType.ToList();
                cartypelist.Insert(0, new Model.CarType() { CarTypeName = "--请选择--", ID = 0 });
                this.CarTypeId.DataSource = cartypelist;
                this.CarTypeId.DataTextField = "CarTypeName";
                this.CarTypeId.DataValueField = "ID";
                this.CarTypeId.DataBind();
                this.CarTypeId.SelectedIndex = 0;
            }
        }

        protected void CarTypeId_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.CarName.Items.Clear();
            this.BindCarName();
        }

        public void BindCarName()
        {
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                List<ZLzuche.Model.Car> carlist = new List<Model.Car>();
                int cartypeid = Convert.ToInt32(this.CarTypeId.SelectedItem.Value);
                if (cartypeid > 0)
                {
                    carlist = entity.Car.Where(x => x.CarTypeId == cartypeid).ToList();
                }
                //else
                //{
                //    carlist = entity.Car.ToList();
                //}
                carlist.Insert(0, new Model.Car() { CarName = "--请选择--", ID = 0 });
                this.CarName.DataSource = carlist;
                this.CarName.DataTextField = "CarName";
                this.CarName.DataValueField = "ID";
                this.CarName.DataBind();
                this.CarName.SelectedIndex = 0;
            }
        }

        protected void lbnNext2_Click(object sender, EventArgs e)
        {
            this.CurrentNavIndex = 2;
            divStep01.Visible = false;
            divStep02.Visible = true;
            divCarInfo.Visible = true;
            divOrderInfo.Visible = true;
            divClientLinkInfo.Visible = true;
            divClient.Visible = false;
            divQuotationList.Visible = false;

            using (var db = new ZLzucheEntities())
            {
                var carId = string.IsNullOrEmpty(CarName.Text) ? 0 : Convert.ToInt32(CarName.Text);
                var car = db.Car.SingleOrDefault(model => model.ID ==carId);
                if (car != null)
                {

                    ltlCarName.Text =car.CarType.CarTypeName + car.CarName + car.CarModel;
                    ltlDerailleur.Text = car.Derailleur;
                    ltlCarAge.Text = car.CarAge.ToString();
                    ltlRentCost.Text = String.Format("{0:N0}元",car.MonthPrice);
                }
            }
            ltlTakeCity2.Text = lblShortRentTakeCity.Text;
            ltlTakeTime2.Text = GetCarTime.Text;
            ltlRentCycle.Text = ddlRentCycle.SelectedItem.Text;
            ltlTrank2.Text = CarTypeId.SelectedItem.Text;
            ltlCar2.Text = CarName.SelectedItem.Text;


        }

        protected void btnStepSwitchOver_Click(object sender, EventArgs e)
        {
            CurrentNavIndex = 1;
            divStep01.Visible = true;
            divStep02.Visible = false;
        }

        protected void lbnNext3_Click(object sender, EventArgs e)
        {
            CurrentNavIndex = 4;
            divStep01.Visible = false;
            divStep02.Visible = true;
            divClientLinkInfo.Visible = false;
            divCarInfo.Visible = false;
            divOrderInfo.Visible = false;
            divClient.Visible = true;
            divQuotationList.Visible = true;

            ltlLinkMan.Text = txtLinkMan.Text;
            ltlPhone.Text = txtPhone.Text;
            ltlCompanyName.Text = txtCompanyName.Text;
            ltlEmail.Text = txtEmail.Text;



            using (var db = new ZLzucheEntities())
            {
                var carId = string.IsNullOrEmpty(CarName.Text) ? 0 : Convert.ToInt32(CarName.Text);
                var car = db.Car.SingleOrDefault(model => model.ID == carId);
                if (car != null)
                {
                    var imageUrl = string.Format("~/images/CarImage/{0}.jpg", car.ID);
                    imgCar.ImageUrl = this.ResolveUrl( imageUrl);
                    ltlCarType3.Text = car.CarType.CarTypeName;
                    ltlCar3.Text = car.CarName;
                    ltlCarAge3.Text = car.CarAge.ToString();
                    ltlSingleCarRentCost3.Text = String.Format("{0:N0}元", car.MonthPrice);
                    ltlMonthCost.Text = string.Format("{0:N0}元", Convert.ToInt32(ddlRentCycle.Text)*car.MonthPrice);
                    ltlBaseMonthRentCost.Text = string.Format("{0:N0}元/月", car.MonthPrice);
                    ltlCarRentCycle3.Text = ddlRentCycle.SelectedItem.Text;
                    ltlCarRentNum.Text = txtRentNum.Text + "台";
                    ltlTotalRentCost.Text = String.Format("{0:N0}元",
                                                          Convert.ToInt32(ddlRentCycle.Text) * car.MonthPrice *
                                                          Convert.ToDecimal(txtRentNum.Text));
                    ;
                }
            }

        }

        protected void lbnNext1_Click(object sender, EventArgs e)
        {
            CurrentNavIndex = 1;
            divStep01.Visible = true;
            divStep02.Visible = false;
        }

        protected void lbnSubmit_Click(object sender, EventArgs e)
        {
            using (var db = new ZLzucheEntities())
            {
                var orders = new Orders
                {
                    CustomerID = CustomerHelper.CustomerId,
                    OrderType = "长租",
                    GetCarTime = Convert.ToDateTime(GetCarTime.Text),
                    RentMonth =Convert.ToInt32(ddlRentCycle.Text),
                    LinkMan = txtLinkMan.Text,
                    Phone =  txtPhone.Text,
                    CompanyName = txtCompanyName.Text,
                    Email =  txtEmail.Text,
                    CreateTime = DateTime.Now
                };
                var carId = string.IsNullOrEmpty(CarName.Text) ? 0 : Convert.ToInt32(CarName.Text);
                if (carId > 0)
                {
                    var car = db.Car.SingleOrDefault(model => model.ID == carId);
                    var orderDetails = new OrderDetails
                    {
                        Orders = orders,
                        CarId = car.ID,
                        Price = car.MonthPrice,
                        CarNum = Convert.ToInt32(txtRentNum.Text),
                        Status = 0,
                        CreateBy = CustomerHelper.CustomerId,
                        CreateTime = DateTime.Now
                    };
                    orders.OrderDetails.Add(orderDetails);
                }
                db.Orders.AddObject(orders);
                db.SaveChanges();
                ScriptHelper.Alert(this, "长租订单提交成功");
                var gotoUrl = this.ResolveUrl("~/LongRent.aspx");
                ScriptHelper.Goto(this, gotoUrl);
            }
        }
    }
}