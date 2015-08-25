using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZLzuche.Model
{
    public class CustomerHelper
    {
        public static int CustomerId
        {
            get
            {
                if (HttpContext.Current.Session == null) return 0;
                var customerId = HttpContext.Current.Session["CustomerId"];
                if (customerId != null && Convert.ToString(customerId) != "" && Convert.ToInt32(customerId) > 0)
                {
                    return Convert.ToInt32(customerId);
                }
                return 0;
            }
        }

        public static string CustomerName {
            get
            {
                using (var db = new ZLzucheEntities())
                {
                    if (CustomerId == 0) return "";
                    var entity = db.Customer.FirstOrDefault(model => model.ID == CustomerId);
                    return entity == null ? "" : entity.CustomerName;
                }
            }
        }
    }
}