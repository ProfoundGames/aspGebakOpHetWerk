using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            GebakOphetWerkDBEntities objGebaksModel = new GebakOphetWerkDBEntities();

            string usrString = txtUsername.Text.ToLower();
            string passwdString = CalculateHashedPassword(txtPassword.Text);


            var user = from u in objGebaksModel.gebruiker
                       where u.password == passwdString && u.userName == usrString
                       select u;

            if (user.Any())
            {
                gebruiker objGebruiker = (gebruiker)user.First();

                //Session maken
                if (Session.IsNewSession)//als er nog geen session bestaat dit doen
                {
                    Session["uID"] = objGebruiker.userID;
                    Session["role"] = objGebruiker.role;
                    Session["notificatie"] = "Inloggen gelukt!";
                    Session["redirect"] = "home.aspx";
                    //redirect naar de homepage
                    Response.Redirect("notificatie.aspx");
                }
                else
                {
                    Session["notificatie"] = "Inloggen gelukt!";
                    Session["redirect"] = "home.aspx";
                    Response.Redirect("notificatie.aspx");
                }
            }
            else
            {
                if (txtUsername.Text == "" || txtPassword.Text == "")
                {
                    string errortekst = string.Format("Geen gegevens ingevoerd, Voer een username en een password in.");
                    lblError.Text = errortekst;
                    txtUsername.Focus();
                }
                else
                {
                    string errortekst = string.Format("Username en/of password is/zijn incorrect, voer de goede username in en/of het juiste password");
                    lblError.Text = errortekst;
                    txtUsername.Text = "";
                    txtPassword.Text = "";
                    txtUsername.Focus();
                }
            }
        }

        private static string CalculateHashedPassword(string clearpwd)
        {
            using (var sha = SHA256.Create())
            {
                var computedHash = sha.ComputeHash(System.Text.Encoding.Unicode.GetBytes(clearpwd));
                return Convert.ToBase64String(computedHash);
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("registreren.aspx");
        }
    }
}