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

            if ((bool)HttpContext.Current.Session["role"])
            {

                return true;

            }
            else
            {

                return false;


            }
        }

        public static bool CheckLoggedin()
        {
            if ((HttpContext.Current.Session["role"]) != null)
            {

                return true;

            }
            else
            {
                HttpContext.Current.Response.Redirect("home.aspx");
                return false;
            }


        }

        public static void Redirect()
        {
            if (CheckLoggedin())
            {
                if (CheckAdmin())
                {

                }
                else
                {
                    HttpContext.Current.Response.Redirect("home.aspx");
                }

            }
            else
            {
                HttpContext.Current.Response.Redirect("home.aspx");
            }
        }
    }
}