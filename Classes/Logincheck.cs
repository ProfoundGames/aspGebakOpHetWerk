using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public class Checks
    {
        public static bool CheckAdmin()
        {
            if (HttpContext.Current.Session["uID"] == null || HttpContext.Current.Session["role"] == null)
            {
                HttpContext.Current.Response.Redirect("login.aspx");
                return false;
            }
            else if((bool)HttpContext.Current.Session["role"])
            {
                return true;                              
            }
            else 
            {               
                return false;

            }
        }
        
    }
}