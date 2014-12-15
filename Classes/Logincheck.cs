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
        
    }
}