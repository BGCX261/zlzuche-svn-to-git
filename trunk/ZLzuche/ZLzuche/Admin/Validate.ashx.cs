using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using Newtonsoft.Json;
using ZLzuche.Model;

namespace ZLzuche.Admin
{
    /// <summary>
    /// Validate 的摘要说明
    /// </summary>
    public class Validate : IHttpHandler, IRequiresSessionState
    {
        public HttpRequest Request { get; set; }

        public HttpResponse Response { get; set; }

        public HttpSessionState Session { get; set; }

        public void ProcessRequest(HttpContext context)
        {
            this.Request = context.Request;
            this.Response = context.Response;
            this.Session = context.Session;

            var result = new JsonResult();
            var method = Request.QueryString["method"];
            if (method == "IsLogin")
                result = this.IsLogin();
            if (method == "OnLogin")
                result = this.OnLogin();


            Response.ContentType = "text/plain";
            var json = JsonConvert.SerializeObject(result);
            Response.Write(json);
        }

        public bool IsReusable
        {
            get { return false; }
        }

        private JsonResult IsLogin()
        {
            var result = new JsonResult();
            if (CustomerHelper.CustomerId > 0 || UserHelper.CurrentUserId() > 0)
            {
                result.IsSuccess = true;
            }
            else
            {
                result.IsSuccess = false;
            }
            return result;
        }

        private JsonResult OnLogin()
        {
            var userName = Request.Params["username"];
            var password = Request.Params["password"];
            var md5pwd = Common.Md5.GetMd5Hash(password);
            using (var db = new Model.ZLzucheEntities())
            {
                var entity =
                    db.Customer.FirstOrDefault(
                        model =>
                        (model.LoginID == userName || model.Phone == userName || model.Email == userName ||
                         model.PapersNumber == userName) && model.Password == md5pwd);
                var result = new JsonResult();
                if (entity != null && entity.ID > 0)
                {
                    Session["CustomerId"] = entity.ID;
                    Session["LoginId"] = entity.LoginID;
                    result.IsSuccess = true;
                    result.Result = entity.CustomerName;
                }
                return result;
            }
        }

    }

    /// <summary>
    /// 
    /// </summary>
    public class JsonResult
    {
        public bool IsSuccess { get; set; }

        public object Result { get; set; }
    }
}