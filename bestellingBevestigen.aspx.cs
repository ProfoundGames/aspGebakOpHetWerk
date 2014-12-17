using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GebakOphetWerkDBEntities entity = new GebakOphetWerkDBEntities();

            dgvOrderReview.DataSource = entity.GetOrderList(Convert.ToInt32(Session["currentOrderID"]));
            dgvOrderReview.DataBind();
            Checks.CheckLoggedin();

        }

        protected void btnOrderBevestig_Click(object sender, EventArgs e)
        {
            Session["notificatie"] = "Bestelling Bevestigd!";
            Session["redirect"] = "home.aspx";
            //redirect naar de homepage
            Response.Redirect("notificatie.aspx");
        }
    }
}