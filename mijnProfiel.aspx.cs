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
            if (!Checks.CheckLoggedin())
            {
                Response.Redirect("login.aspx");
            }

            int userID = (int)Session["uID"];

            GebakOphetWerkDBEntities objProfiles = new GebakOphetWerkDBEntities();

            if (!Page.IsPostBack)
            {
                var userInfo = (from ui in objProfiles.gebruikers
                                where ui.userID == userID
                                select new
                                {
                                    firstname = ui.firstName,
                                    middlename = ui.middleName,
                                    lastname = ui.lastName,
                                    username = ui.userName,
                                    city = ui.city,
                                    street = ui.streetName,
                                    houseNum = ui.houseNumber,
                                    houseNumsuffix = ui.houseNumberSuffix,
                                    postcode = ui.postalCode
                                });

                foreach (var item in userInfo)
                {
                    txtFirstname.Text = item.firstname;
                    txtMiddlename.Text = item.middlename;
                    txtLastname.Text = item.lastname;
                    txtUsername.Text = item.username;
                    txtCity.Text = item.city;
                    txtStreetName.Text = item.street;
                    txtHouseNumber.Text = item.houseNum.ToString();
                    txtSuffix.Text = item.houseNumsuffix;
                    txtPostcode.Text = item.postcode;
                }
            }
        }
        protected void btnChange_Click(object sender, EventArgs e)
        {
            txtCity.ReadOnly = false;
            txtStreetName.ReadOnly = false;
            txtHouseNumber.ReadOnly = false;
            txtSuffix.ReadOnly = false;
            txtPostcode.ReadOnly = false;
            btnSaveChange.Visible = true;
            btnChange.Visible = false;
        }

        protected void btnSaveChange_Click(object sender, EventArgs e)
        {
            int userID = (int)Session["uID"];
            //
            GebakOphetWerkDBEntities objEditUser = new GebakOphetWerkDBEntities();
            objEditUser.UpdateUserInformation(userID, txtCity.Text, txtStreetName.Text, Convert.ToInt32(txtHouseNumber.Text), txtSuffix.Text, txtPostcode.Text);
            objEditUser.SaveChanges();
            //
            txtCity.ReadOnly = true;
            txtStreetName.ReadOnly = true;
            txtHouseNumber.ReadOnly = true;
            txtSuffix.ReadOnly = true;
            txtPostcode.ReadOnly = true;
            //
            btnSaveChange.Visible = false;
            btnChange.Visible = true;
            //
        }
    }
}