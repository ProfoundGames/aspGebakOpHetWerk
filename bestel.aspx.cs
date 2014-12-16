using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        public GebakOphetWerkDBEntities entity = new GebakOphetWerkDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            //De GridView vullen
            int? tempOrderID = Convert.ToInt32(Session["currentOrderID"]);

            var hasOrder = from O in entity.orderItems
                           where O.orderID == tempOrderID
                           select O;

            if (hasOrder.Any())
            {
                dgvBestellingLijst.DataSource = entity.GetOrderList(Convert.ToInt32(Session["currentOrderID"]));
                dgvBestellingLijst.DataBind();
            }

            if (Session["currentOrderID"] == null)
            {
                int usrString = Convert.ToInt32(Session["uID"]);
                var user = from u in entity.gebruikers
                           where u.userID == usrString
                           select u;
                gebruiker objGebruiker = (gebruiker)user.First();

                entity.orders.Add(new order
                {
                    userID = Convert.ToInt32(Session["uID"]),
                    orderDate = DateTime.Today,
                    gebruiker = objGebruiker
                });
                entity.SaveChanges();

                if (entity.GetOrderIdList((int)Session["uID"]) != null)
                {
                    Session["currentOrderID"] = entity.GetOrderIdList((int)Session["uID"]).First();
                }
                else
                {
                    Session["notificatie"] = "Something Somewhere went terrible wrong.";
                    Session["redirect"] = "bestel.aspx";
                    //redirect naar de homepage
                    Response.Redirect("notificatie.aspx");
                }

                

            }

            if(!IsPostBack)
            {
                ddlTaartSoort.DataSource = entity.GetTaartenList();
                ddlTaartSoort.DataTextField = "name";
                ddlTaartSoort.DataValueField = "cakeID";
                ddlTaartSoort.DataBind();
                ddlTaartSoort.SelectedIndex = 0;
            }
            lblTotalAmount.Text = Convert.ToString(CalculateTotalAmount());
        }

        protected void btnAddToOrder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (Session["currentOrderID"] != null)
                {

                    GebakOphetWerkDBEntities ef = new GebakOphetWerkDBEntities();

                    int userID = Convert.ToInt32(Session["uID"]);

                    var oID = from O in entity.orders
                              where O.userID == userID
                              orderby O.orderID descending
                              select O;
                    order objOrder = oID.First();

                    int taartID = Convert.ToInt32(ddlTaartSoort.SelectedValue);
                    var idTaart = from T in entity.taarts
                                  where T.cakeID == taartID
                                  select T;
                    taart objTaart = idTaart.First();

                    orderItem objOrderItem = new orderItem();

                    objOrderItem.cakeID = Convert.ToInt32(ddlTaartSoort.SelectedValue);
                    objOrderItem.orderID = objOrder.orderID;
                    objOrderItem.TotalAmountOfMoney = CalculateTotalAmount();
                    objOrderItem.amount = Convert.ToInt32(txtAmount.Text);

                    ef.orderItems.Add(objOrderItem);

                    txtAmount.Text = "0";
                    ddlTaartSoort.SelectedIndex = 0;

                    ef.SaveChanges();

                    Page_Load(sender, e);
                }
            }
        }

        public Decimal CalculateTotalAmount()
        {
            if (entity.GetCakePrice(Convert.ToInt32(ddlTaartSoort.SelectedValue)) != null && txtAmount.Text != "" && txtAmount.Text != "0")
            {

                decimal objDecimel = Convert.ToDecimal(entity.GetCakePrice(Convert.ToInt32(ddlTaartSoort.SelectedValue)).First());

                int objInt = Convert.ToInt32(txtAmount.Text);

                Decimal totalPrice = (objDecimel * objInt);

                return totalPrice;

            }
            else
                return 0;
        }

        protected void ddlTaartSoort_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblTotalAmount.Text = Convert.ToString(CalculateTotalAmount());
        }

        protected void txtAmount_TextChanged(object sender, EventArgs e)
        {
            lblTotalAmount.Text = Convert.ToString(CalculateTotalAmount());
        }

        protected void btnBevestig_Click(object sender, EventArgs e)
        {
            Response.Redirect("bestellingBevestigen.aspx");
        }

    }
}