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
            if((bool)HttpContext.Current.Session["role"])
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
            if(HttpContext.Current.Session["uID"] == null || HttpContext.Current.Session["role"] == null)
            {
                
                return false;
                
            }
            else
            {
                
                return true;
            }

      
        }
        
        public static void Redirect()
       {
           if(Checks.CheckLoggedin())
            {
                if (Checks.CheckAdmin())
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