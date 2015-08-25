using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZLzuche.Model;

namespace ZLzuche
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindFocusImages();
                this.BindData();
                this.BindTakeStore();

                this.txtTakeTime.Text = DateTime.Today.ToString("yyyy-MM-dd");
                this.txtReturnTime.Text = DateTime.Today.AddDays(2).ToString("yyyy-MM-dd");
                txtLongRantTakeDate.Text = DateTime.Today.ToString("yyyy-MM-dd");
            }
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
                    txtLongRentTakeCity.Visible = ddlShortRentTakeCity.Visible = false;
                    var item = takeCityList.ToList()[0];
                    lblShortRentTakeCity.Text = item.City;
                    txtLongRentTakeCity.Text = lblLongRentTakeCity.Text = item.City; 
                }
            }
        }

        private void BindFocusImages()
        {
            using (var db = new ZLzucheEntities())
            {
                var focusImageList = db.FocusImage.OrderByDescending(model => model.CreateTime).Take(4);
                repFocusImage.DataSource = focusImageList;
                repFocusImage.DataBind();
            }
        }

        private void BindTakeStore()
        {
            using (var db = new ZLzucheEntities())
            {
                //(还车门店)
                var takeStoreList = db.Shop.OrderBy(model =>model.Name).Select(model => new { Name = model.Name }).Distinct();
                ddlTakeStore.DataSource = takeStoreList;
                ddlTakeStore.DataBind();
                ddlTakeStore.Items.Insert(0, new ListItem("--请选择--",""));
                if (takeStoreList.Count() == 1)
                {
                    ddlTakeStore.SelectedIndex = 1;
                    ddlTakeStore.Visible = false;
                    var item = takeStoreList.ToList()[0];
                    lblTakeStore.Text = item.Name;
                    cbIsEqualStore.Checked = true;
                    cbIsEqualStore.Visible = false; 
                }
            }
        }

        protected void ddlShortRentTakeCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.BindTakeStore();
        }
        
        protected void lbnShortRent_Click(object sender, EventArgs e)
        {
            var takeCity = ddlShortRentTakeCity.Text;
            var takeStore = ddlTakeStore.Text;
            var isSend = cbIsSend.Checked;
            var equalStore = cbIsEqualStore.Checked;
            var takeTime = txtTakeTime.Text;
            var returnTime = txtReturnTime.Text;
            var urlFormat =
                "~/ShortRent.aspx?takeCity={0}&takeStore={1}&isSend={2}&equalStore={3}&takeTime={4}&returnTime={5}&navIndex=2";
            var url = string.Format(urlFormat,takeCity,takeStore,isSend,equalStore,takeTime,returnTime);
            url = this.ResolveUrl(url);
            Response.Redirect(url);
        }
    }
}