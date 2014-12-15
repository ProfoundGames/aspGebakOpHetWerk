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
                if (Page.IsValid)
                {
                    GebakOphetWerkDBEntities ObjTaart = new GebakOphetWerkDBEntities();

                    ObjTaart.taarts.Add(new taart
                    {
                        name = txtTaartnaam.Text,
                        discription = txtBeschrijving.Text,
                        price = Convert.ToDecimal(txtPrijs.Text),
                        active = cbActief.Checked
                    });
                }
            }
            catch (Exception ex)
            {
                Session["notificatie"] = ex.Message;
                Session["redirect"] = "taartToegeven.aspx";

            }
        }
    }
}