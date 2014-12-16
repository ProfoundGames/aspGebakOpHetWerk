using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            {
            GebakOphetWerkDBEntities objGebaksModel = new GebakOphetWerkDBEntities();
           
            dgvUser.DataSource = objGebaksModel.GetallUsers();
            dgvUser.DataBind();

            ddlUser.DataSource = objGebaksModel.GetUsername();
            ddlUser.DataBind();

            }

        protected void btnactief_Click(object sender, EventArgs e)
        {
           
        }
    }

}