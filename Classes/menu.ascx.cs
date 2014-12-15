using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspGebakOpHetWerk.aspGebakOpHetWerk.Classes
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Checks.CheckLoggedin())
            {
               MenuItem Inloggen =  MenuTop.FindItem(@"Inloggen");
               MenuItem Registreren = MenuTop.FindItem(@"Registreren");
               MenuTop.Items.Remove(Inloggen);
               MenuTop.Items.Remove(Registreren);

               if (Checks.CheckAdmin())
                {
                    
                }
                else
                {
                   
                    MenuItem TaartBeheer = MenuTop.FindItem(@"TaartBeheer");
                    MenuItem GebruikersBeheer = MenuTop.FindItem(@"GebruikersBeheer");
                    MenuItem Bestellingen = MenuTop.FindItem(@"Bestellingen");                   
                    MenuTop.Items.Remove(Bestellingen);
                    MenuTop.Items.Remove(GebruikersBeheer);
                    MenuTop.Items.Remove(TaartBeheer);

                }
            }
            else
            {
                MenuItem Username = MenuTop.FindItem(@"Username");
                MenuItem TaartBeheer = MenuTop.FindItem(@"TaartBeheer");
                MenuItem GebruikersBeheer = MenuTop.FindItem(@"GebruikersBeheer");
                MenuItem Bestellingen = MenuTop.FindItem(@"Bestellingen");
                MenuItem Uitloggen = MenuTop.FindItem(@"Uitloggen");
                if (Bestellingen != null)
                {
                    MenuTop.Items.Remove(GebruikersBeheer);
                    MenuTop.Items.Remove(Username);
                    MenuTop.Items.Remove(TaartBeheer);
                    MenuTop.Items.Remove(Uitloggen);
                    MenuTop.Items.Remove(Bestellingen);
                }


            }
        }
    }
}