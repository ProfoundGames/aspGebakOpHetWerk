using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Session["notificatie"] != null)
            {
                lblNotificatie.Text = Session["notificatie"].ToString();
                Session["notificatie"] = null;

                string objString = string.Format("5;URL={0}", Session["redirect"]);
                Session["redirect"] = null;
                Response.AddHeader("REFRESH", objString);
            }
        }
    }
}