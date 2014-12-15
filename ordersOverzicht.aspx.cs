using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GebakOphetWerkDBEntities objGebaksModel = new GebakOphetWerkDBEntities();

            var Orders = from o in objGebaksModel.orderItems
                         from t in objGebaksModel.taarts 
                         select new { taarten = o.taart, order = o.order, aantal = o.amount };

            ListBox1.DataSource = Orders.ToString();
            ListBox1.DataBind();
        }
    }
}