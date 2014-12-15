<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="mijnProfiel.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table runat="server">
        <tr>
            <td>
                <asp:Label ID="lblFirstname" Text="Voornaam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMiddleName" Text="Tussen Voegsel" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMiddlename" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastname" Text="Achternaam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" Text="Gebruikersnaam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" Text="Wachtwoord" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" Text="Woonplaats" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStreetName" Text="Straat naam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStreetName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblHouseNumber" Text="Huis nummer" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHouseNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSuffix" Text="Toevoeging" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSuffix" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
