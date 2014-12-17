using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Checks.Redirect();

            int userID = (int)Session["uID"];

            GebakOphetWerkDBEntities objProfiles = new GebakOphetWerkDBEntities();

            var userInfo = (from ui in objProfiles.gebruikers
                            where ui.userID == userID
                            select new
                            {
                                firstname = ui.firstName,
                                middlename = ui.middleName,
                                lastname = ui.lastName,
                                username = ui.userName,
                                password = ui.password,
                                city = ui.city,
                                street = ui.streetName,
                                houseNum = ui.houseNumber,
                                houseNumsuffix = ui.houseNumberSuffix
                            });

            foreach (var item in userInfo)
            {
                txtFirstname.Text = item.firstname;
                txtMiddlename.Text = item.middlename;
                txtLastname.Text = item.lastname;
                txtUsername.Text = item.username;
                txtPassword.Text = item.password;
                txtCity.Text = item.city;
                txtStreetName.Text = item.street;
                txtHouseNumber.Text = item.houseNum.ToString();
                txtSuffix.Text = item.houseNumsuffix;
            }
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {

        }
    }
}