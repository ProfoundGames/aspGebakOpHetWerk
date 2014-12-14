using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string passwdString = CalculateHashedPassword(txtPassword.Text);
            GebakOphetWerkDBEntities objGOHW = new GebakOphetWerkDBEntities();

            string objString;
            if(txtHouseNrSuffix.Text != "")
            {objString = txtHouseNrSuffix.Text;}
            else
            {objString = null;}

            objGOHW.gebruikers.Add(new gebruiker
            {
                firstName = txtFirstName.Text,
                middleName = txtMiddleName.Text,
                lastName = txtLastName.Text,
                userName = txtUsername.Text,
                password = passwdString,
                email = txtEmail.Text,
                streetName = txtStreetName.Text,
                houseNumber = Convert.ToInt32(txtHouseNumber.Text),
                houseNumberSuffix = objString,
                postalCode = txtPostalCode.Text,
                city = txtCity.Text,
                accountActive = true,
            });

            objGOHW.SaveChanges();

            Session["notificatie"] = "Gebruiker Geregistreerd, u word doorgestuurd naar de homepage.";
            Session["redirect"] = "home.aspx";
            Response.Redirect("notificatie.aspx");

        }
        private static string CalculateHashedPassword(string clearpwd)
        {
            using (var sha = SHA256.Create())
            {
                var computedHash = sha.ComputeHash(System.Text.Encoding.Unicode.GetBytes(clearpwd));
                return Convert.ToBase64String(computedHash);
            }
        }
    }
}