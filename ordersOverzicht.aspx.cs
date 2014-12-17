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
        DateTime vandaag;
        DateTime gisteren;
        protected void Page_Load(object sender, EventArgs e)
        {
            Checks.Redirect();
            GebakOphetWerkDBEntities objGebaksModel = new GebakOphetWerkDBEntities();

            dgvTotalOrders.DataSource = objGebaksModel.GetAllOrderList(DateTime.Today);
            dgvTotalOrders.DataBind();

            
        }

        protected void rbToday_CheckedChanged(object sender, EventArgs e)
        {
            GebakOphetWerkDBEntities objGebaksModel = new GebakOphetWerkDBEntities();
            if (!IsPostBack)
            {
                if (rbToday.Checked == true)
                {
                    vandaag = DateTime.Today;
                    rbYesterday.Checked = false;
                    dgvTotalOrders.DataSource = objGebaksModel.GetAllOrderList(vandaag);
                    dgvTotalOrders.DataBind();

                }
                else if(rbYesterday.Checked == true)
                {
                    rbToday.Checked = false;
                    gisteren = DateTime.Today.AddDays(-1);                   
                    dgvTotalOrders.DataSource = objGebaksModel.GetAllOrderList(gisteren);
                    dgvTotalOrders.DataBind();

                }
            }
        }

        protected void rbYesterday_CheckedChanged(object sender, EventArgs e)
        {
            GebakOphetWerkDBEntities objGebaksModel = new GebakOphetWerkDBEntities();
            if (!IsPostBack)
            {
                if (rbYesterday.Checked == true)
                {
                    rbToday.Checked = false;
                    gisteren = DateTime.Today.AddDays(-1);
                    dgvTotalOrders.DataSource = objGebaksModel.GetAllOrderList(gisteren);
                    dgvTotalOrders.DataBind();

                }
                else if (rbToday.Checked == true)
                {
                    vandaag = DateTime.Today;
                    rbYesterday.Checked = false;
                    dgvTotalOrders.DataSource = objGebaksModel.GetAllOrderList(vandaag);
                    dgvTotalOrders.DataBind();

                }
                
            }

        }
    }
}