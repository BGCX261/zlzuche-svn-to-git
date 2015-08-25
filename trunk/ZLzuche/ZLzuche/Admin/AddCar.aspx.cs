using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class AddCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindShop();
                BindCarType();
            }
        }

        private void BindShop()
        {
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                var shopList = entity.Shop.ToList();
                this.ShopId.DataSource = shopList;
                shopList.Insert(0, new Model.Shop() { Name = "--请选择--", ID = 0 });
                this.ShopId.DataTextField = "Name";
                this.ShopId.DataValueField = "ID";
                this.ShopId.DataBind();
                this.ShopId.SelectedIndex = 0;
            }
        }

        private void BindCarType()
        {
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                var cartypeList = entity.CarType.ToList();
                this.CarTypeId.DataSource = cartypeList; ;
                cartypeList.Insert(0, new Model.CarType() { CarTypeName = "--请选择--", ID = 0 });
                this.CarTypeId.DataTextField = "CarTypeName";
                this.CarTypeId.DataValueField = "ID";
                this.CarTypeId.DataBind();
                this.CarTypeId.SelectedIndex = 0;
            }
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnNew_Click(object sender, EventArgs e)
        {
            int AddedCarId = 0;
            int shipId = Convert.ToInt32(this.ShopId.SelectedItem.Value);
            int cartypeid = Convert.ToInt32(this.CarTypeId.SelectedItem.Value);
            string carname = this.CarName.Text.Trim();
            string carmodel = this.CarModel.Text.Trim();
            string basicInsure = this.BasicInsure.Text.Trim();
            string PreAuthorization = this.PreAuthorization.Text.Trim();
            decimal price = Convert.ToDecimal(this.Price.Text.Trim());
            string IsMileage = this.IsMileage.SelectedItem.Value;
            string Status = this.Status.SelectedItem.Value;
            string describe = this.Describe.Text.Trim();
            string remark = this.Remark.Text.Trim();

            int carnum = Convert.ToInt32(this.CarNum.Text.Trim());
            string carage = this.CarAge.Text.Trim();
            string derailleur = this.drpDerailleur.SelectedItem.Text;
            decimal monthprice = Convert.ToDecimal(this.MonthPrice.Text.Trim());
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    ZLzuche.Model.Car car = new Model.Car();
                    car.ShopId = shipId;
                    car.CarTypeId = cartypeid;
                    car.CarName = carname;
                    car.CarModel = carmodel;
                    car.BasicInsure = basicInsure;
                    car.PreAuthorization = PreAuthorization;
                    car.Price = Convert.ToDecimal(price);
                    car.IsMileage = IsMileage;
                    car.Status = Status;
                    car.Describe = describe;
                    car.Remark = remark;

                    car.carnum = carnum;
                    car.CarAge = carage;
                    car.Derailleur = derailleur;
                    car.MonthPrice = monthprice;
                    entity.AddToCar(car);
                    entity.SaveChanges();

                    if (carpic.HasFile)
                    {
                        try
                        {
                            AddedCarId = car.ID;
                            string name = carpic.FileName;//文件的名字
                            string size = carpic.PostedFile.ContentLength.ToString();
                            string last = name.Substring(name.LastIndexOf(".") + 1);//得到文件的后缀名(gif/jpg)
                            string filename = AddedCarId + "." + last;
                            string webFilePath = Server.MapPath("../images/CarImage/" + filename);
                            carpic.SaveAs(webFilePath);
                        }
                        catch (Exception ex)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('上传图片失败');</script>");
                            return;
                        }
                    }
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