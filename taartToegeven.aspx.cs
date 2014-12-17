using System;
using System.Collections.Generic;
using System.IO;
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
            Checks.Redirect();
        }

        protected void btnTaartToevoegen_Click(object sender, EventArgs e)
        {

            try
            {
                if (Page.IsValid)
                {
                    GebakOphetWerkDBEntities ObjTaart = new GebakOphetWerkDBEntities();
                    if (FuUpload.HasFile)
                    {
                        try
                        {
                            if (FuUpload.PostedFile.ContentType == "image/jpeg")
                            {
                                if (FuUpload.PostedFile.ContentLength < 102400)
                                {
                                    string filename = Path.GetFileName(FuUpload.FileName);
                                    FuUpload.SaveAs(Server.MapPath("~/") + filename);
                                    StatusLabel.Text = "Upload status: File uploaded!";
                                }
                                else
                                    StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
                            }
                            else
                                StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
                        }
                        catch (Exception ex)
                        {
                            StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                        }
                        ObjTaart.taarts.Add(new taart
                        {
                            name = txtTaartnaam.Text,
                            discription = txtBeschrijving.Text,
                            price = Convert.ToDecimal(txtPrijs.Text),
                            active = cbActief.Checked,
                            picture = "~/image/" + Path.GetFileName(FuUpload.FileName)
                        });
                        ObjTaart.SaveChanges();
                        txtTaartnaam.Text = "";
                        txtBeschrijving.Text = "";
                        txtPrijs.Text = "";
                        cbActief.Checked = false;
                        Session["notificatie"] = "Toevoegen gelukt!";
                        Response.Redirect("notificatie.aspx");

                    }
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