using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTaartToevoegen_Click(object sender, EventArgs e)
        {
             try
            {
                GebakOphetWerkDBEntities ObjTaart = new GebakOphetWerkDBEntities();
                string taartnaam = Convert.ToString(txtTaartnaam.Text);
                string beschrijving = Convert.ToString(txtBeschrijving.Text);
                double prijs = Convert.ToDouble(txtPrijs.Text);
                //bool actief = 

                if(txtBeschrijving.Text != null || txtBeschrijving.Text != "" || txtPrijs.Text !=null || txtPrijs.Text !="" || txtTaartnaam.Text != null || txtTaartnaam.Text != "")
                {
                                 
                }
                else
                {
                   ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Geen lege velden!');", true);
                }
            }
             catch (Exception ex)
             {
                 ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
             }

        }
    }
}