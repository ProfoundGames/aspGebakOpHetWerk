using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        public GebakOphetWerkDBEntities entity = new GebakOphetWerkDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["role"] != null)
            {
                if ((bool)Session["role"])
                {
                    addCake.Text = "Voeg een taart toe.";
                }
                else
                {
                    addCake.Text = "";
                }
            }
            
            
        }

        protected void btnAanpassen_Click(object sender, EventArgs e)
        {

             

        }

        protected void btnBestel_Click(object sender, EventArgs e)
        {
            Response.Redirect("bestel.aspx");
        }
    }
}