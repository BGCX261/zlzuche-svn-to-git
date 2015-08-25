using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZLzuche.Admin
{
    public partial class AddFocusImage : System.Web.UI.Page
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
            int AddedFcousImageId = 0;
            string describe = this.Describe.Text.Trim();
            string linkUrl = this.LinkUrl.Text.Trim();
            string remark = this.Remark.Text.Trim();
            try
            {
                using (ZLzuche.Model.ZLzucheEntities entity = new Model.ZLzucheEntities())
                {
                    ZLzuche.Model.FocusImage model = new Model.FocusImage();
                    model.Describe = describe;
                    model.LinkURL = linkUrl;
                    model.CreateTime = DateTime.Now;
                    model.Remark = remark;
                    entity.AddToFocusImage(model);
                    entity.SaveChanges();

                    if (foucsimage.HasFile)
                    {
                        try
                        {
                            //图片尺寸：621*268
                            AddedFcousImageId = model.ID;
                            string name = foucsimage.FileName;//文件的名字
                            string size = foucsimage.PostedFile.ContentLength.ToString();
                            string last = name.Substring(name.LastIndexOf(".") + 1);//得到文件的后缀名(gif/jpg)
                            if ((last == "bmp") || (last == "gif") || (last == "jpg"))
                            {
                                using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(foucsimage.PostedFile.InputStream))
                                {
                                    if (myImage.Width != 621 && myImage.Height != 268)
                                    {
                                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('只能上传621*268尺寸的图片');</script>");
                                        return;
                                    }
                                }
                                string filename = AddedFcousImageId + "." + last;
                                string webFilePath = Server.MapPath("../images/FocusImage/" + filename);
                                foucsimage.SaveAs(webFilePath);

                                model.FileName = filename;
                                entity.SaveChanges();
                            }
                            else
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('只能上传bmp、gif、jpg格式的图片');</script>");
                                return;
                            }

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