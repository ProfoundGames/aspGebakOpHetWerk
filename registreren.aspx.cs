using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            GebakOphetWerkDBEntities objGOHW = new GebakOphetWerkDBEntities();
            objGOHW.gebruikers.Add(new gebruiker
            {
                firstName = txtFirstName.Text,
                middleName = txtMiddleName.Text,
                lastName = txtLastName.Text,
                userName = txtUsername.Text,
                password = txtPassword.Text,
                email = txtEmail.Text,
                streetName = txtStreetName.Text,
                houseNumber = Convert.ToInt32(txtHouseNumber.Text),
                houseNumberSuffix = txtHouseNrSuffix.Text,
                postalCode = txtPostalCode.Text,
                city = txtCity.Text
            });
            objGOHW.SaveChanges();
        }
    }
}