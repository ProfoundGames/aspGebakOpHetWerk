using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public class Logincheck
    {
        public static void CheckLogin()
        {
            if (HttpContext.Current.Session["uID"] == null || HttpContext.Current.Session["role"] == null)
            {
                HttpContext.Current.Response.Redirect("login.aspx");
            }
        }
    }
}