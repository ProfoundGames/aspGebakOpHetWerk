using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GebakOphetWerkDBEntities objGebaksModel = new GebakOphetWerkDBEntities();

            dgvOrderspercustomer.DataSource = objGebaksModel.GetAllOrdersPerUser(DateTime.Today);
            dgvOrderspercustomer.DataBind();
            Checks.Redirect();

        }
    }
}