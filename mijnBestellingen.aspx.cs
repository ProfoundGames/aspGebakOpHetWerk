using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.IsNewSession)
            {
                Response.Redirect("login.aspx");
            }

            GebakOphetWerkDBEntities objOrders = new GebakOphetWerkDBEntities();

            int UserID = (int)Session["uID"];


            var varorders = (from vo in objOrders.orders
                             where vo.userID == UserID
                             select objOrders.GetOrderList(vo.orderID));

            dgOrders.DataSource = varorders;
            DataBind();


        }
    }
}