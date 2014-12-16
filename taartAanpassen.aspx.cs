using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GebakOphetWerkDBEntities entity = new GebakOphetWerkDBEntities();

            Checks.Redirect();
            if (!IsPostBack)
            {
                ddlTaart.DataSource = entity.GetAllCakes();
                ddlTaart.DataTextField = "name";
                ddlTaart.DataValueField = "cakeID";
                ddlTaart.DataBind();
                ddlTaart.SelectedIndex = 0;

                UpdateControl();
            }

            lblError.Text = "";

        }

        public void UpdateControl()
        {
            GebakOphetWerkDBEntities entity = new GebakOphetWerkDBEntities();
            int objIntCakeID = Convert.ToInt32(ddlTaart.SelectedValue);
            txtNaam.Text = entity.GetAllCakeInfo(objIntCakeID).First().name;
            txtDesc.Text = entity.GetAllCakeInfo(objIntCakeID).First().discription;
            txtPrijs.Text = Convert.ToString(entity.GetAllCakeInfo(objIntCakeID).First().price);
            cbActief.Checked = entity.GetAllCakeInfo(objIntCakeID).First().active;
        }

        protected void btnOpSlaan_Click(object sender, EventArgs e)
        {
            decimal objDecimal = new decimal();

            if (decimal.TryParse(txtPrijs.Text, out objDecimal))
            {
                GebakOphetWerkDBEntities entity = new GebakOphetWerkDBEntities();

                String tempString = txtDesc.Text;

                entity.UpdateCake(Convert.ToInt32(ddlTaart.SelectedValue), txtNaam.Text, txtDesc.Text, Convert.ToDecimal(txtPrijs.Text), cbActief.Checked);
                entity.SaveChanges();
                Response.Redirect("taartAanpassen.aspx");
            }
            else
            {
                lblError.Text = "Er staat geen correct nummber in het prijs vak.";
            }
        }

        protected void ddlTaart_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateControl();
        }

    }
}