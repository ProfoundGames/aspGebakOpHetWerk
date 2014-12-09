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


            var user = from u in objGebaksModel.gebruikers
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

                    //redirect naar de homepage
                    Response.Redirect("home.aspx");
                }
                else
                    Response.Redirect("home.aspx");
            }
            else
            {
                if (txtUsername.Text == "" || txtPassword.Text == "")
                {
                    string errortekst = string.Format("Geen gegevens ingevoerd, Voer een gebruikersnaam en een wachtwoord in.");
                    lblError.Text = errortekst;
                    txtUsername.Focus();
                }
                else
                {
                    string errortekst = string.Format("Gebruikersnaam en/of wachtwoord is/zijn incorrect, voer de correcte gebruikersnaam in en/of het juiste wachtwoord");
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
    }
}