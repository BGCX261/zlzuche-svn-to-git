using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.com
{
    public partial class Leasing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCarType();
                BindCarName();
                BindCarModel();
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
        protected void CarName_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.CarModel.Items.Clear();
            this.BindCarModel();
        }

        public void BindCarModel()
        {
            using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
            {
                List<ZLzuche.Model.Car> carlist = new List<Model.Car>();
                int carid = Convert.ToInt32(this.CarName.SelectedItem.Value);
                if (carid > 0)
                {
                    string carname = this.CarName.SelectedItem.Text;
                    carlist = entity.Car.Where(x => x.CarName == carname).ToList();
                }
                //else
                //{
                //    carlist = entity.Car.ToList();
                //}
                carlist.Insert(0, new Model.Car() { CarModel = "--请选择--", ID = 0 });
                this.CarModel.DataSource = carlist;
                this.CarModel.DataTextField = "CarModel";
                this.CarModel.DataValueField = "ID";
                this.CarModel.DataBind();
                this.CarModel.SelectedIndex = 0;
            }
        }

        protected void CarModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            string carid = CarModel.SelectedItem.Value;
            if (Convert.ToInt32(carid) > 0)
            {
                int id = Convert.ToInt32(carid);
                string carmodel = CarModel.SelectedItem.Text;
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    var model = entity.Car.Where(x => x.ID == id && x.CarModel == carmodel).FirstOrDefault();
                    if (model != null)
                    {
                        this.clzdj.Text = model.clzdj;
                        this.clgzs.Text = model.clgzs;
                        this.ycspf.Text = model.ycspf;
                        this.gcfy.InnerHtml = (Convert.ToInt32(model.clzdj) + Convert.ToInt32(model.clgzs) + Convert.ToInt32(model.ycspf)).ToString() + "元";

                        this.threeyear.Checked = true;
                        this.rzzlfy.InnerHtml = model.C3Yearzlfy + "元";
                        this.sfzj.Text = (Convert.ToInt32(model.C3Yearzlfy) * 0.3).ToString();
                        this.yzj.Text = Convert.ToInt32(Convert.ToInt32(model.C3Yearzlfy) * 0.7 / 36).ToString();
                    }
                }
            }
        }

        protected void rdo_CheckedChanged(object sender, EventArgs e)
        {
            string carid = CarModel.SelectedItem.Value;
            if (Convert.ToInt32(carid) > 0)
            {
                int id = Convert.ToInt32(carid);
                string carmodel = CarModel.SelectedItem.Text;
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    var model = entity.Car.Where(x => x.ID == id && x.CarModel == carmodel).FirstOrDefault();
                    if (model != null)
                    {
                        if (oneyear.Checked == true)
                        {
                            this.rzzlfy.InnerHtml = model.C1Yearzlfy + "元";
                            this.sfzj.Text = (Convert.ToInt32(model.C1Yearzlfy) * 0.3).ToString();
                            this.yzj.Text = Convert.ToInt32(Convert.ToInt32(model.C3Yearzlfy) * 0.7 / 12).ToString();
                        }
                        if (twoyear.Checked == true)
                        {
                            this.rzzlfy.InnerHtml = model.C2Yearzlfy + "元";
                            this.sfzj.Text = (Convert.ToInt32(model.C2Yearzlfy) * 0.3).ToString();
                            this.yzj.Text = Convert.ToInt32(Convert.ToInt32(model.C3Yearzlfy) * 0.7 / 24).ToString();
                        }
                        if (threeyear.Checked == true)
                        {
                            this.rzzlfy.InnerHtml = model.C3Yearzlfy + "元";
                            this.sfzj.Text = (Convert.ToInt32(model.C3Yearzlfy) * 0.3).ToString();
                            this.yzj.Text = Convert.ToInt32(Convert.ToInt32(model.C3Yearzlfy) * 0.7 / 36).ToString();
                        }
                    }
                }
            }
        }
    }
}