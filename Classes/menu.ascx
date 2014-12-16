<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu.ascx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.Classes.WebUserControl1" %>
<asp:Menu ID="MenuTop" Orientation="horizontal" runat="server" BackColor="#000000" DynamicHorizontalOffset="0" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#ffffff" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#808080" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="50px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#000000" />
        <DynamicSelectedStyle BackColor="#808080" />
        <Items>
            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/aspGebakOpHetWerk/home.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="Username" Value="Username" Selectable="False">
                <asp:MenuItem Text="Mijn Profiel" Value="MijnProfiel" NavigateUrl="~/aspGebakOpHetWerk/mijnProfiel.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Mijn Bestellingen" Value="Mijn Bestellingen" NavigateUrl="~/aspGebakOpHetWerk/mijnBestellingen.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Uitloggen" Value="Uitloggen" NavigateUrl="~/aspGebakOpHetWerk/login.aspx"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Taarten" Value="Taarten" Selectable="False">
                <asp:MenuItem Text="Alle Taarten" Value="AlleTaarten" NavigateUrl="~/aspGebakOpHetWerk/alleTaarten.aspx"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Taart Beheer" Value="TaartBeheer" Selectable="False">
                <asp:MenuItem Text="Taart Toevoegen" Value="TaartToevoegen" NavigateUrl="~/aspGebakOpHetWerk/taartToegeven.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Taarten Beheren" Value="TaartenBeheren"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Gebruikers beheer" Value="GebruikersBeheer" Selectable="False">
                <asp:MenuItem Text="Gebruikers Beheren" Value="GebruikersBeheren" NavigateUrl="~/aspGebakOpHetWerk/gebruikersOverzicht.aspx"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Bestellingen" Value="Bestellingen" Selectable="False">
                <asp:MenuItem Text="Bestelling Overzicht" Value="BestellingOverzicht" NavigateUrl="~/aspGebakOpHetWerk/bestellingen.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Alle Bestellingen" Value="AlleBestellingen" NavigateUrl="~/aspGebakOpHetWerk/OrdersOverzicht.aspx"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Registreren" Value="Registreren" NavigateUrl="~/aspGebakOpHetWerk/registreren.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Inloggen" Value="Inloggen" NavigateUrl="~/aspGebakOpHetWerk/login.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Uitloggen" Value="Uitloggen" NavigateUrl="~/aspGebakOpHetWerk/logoutCheck.aspx"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#808080" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="50px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#000000" />
    </asp:Menu>  