<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="mijnProfiel.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <table runat="server">
        <tr>
            <td>
                <asp:Label ID="lblFirstname" Text="Voornaam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstname" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMiddleName" Text="Tussen Voegsel" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMiddlename" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastname" Text="Achternaam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLastname" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" Text="Gebruikersnaam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" Text="Woonplaats" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStreetName" Text="Straat naam" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStreetName" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblHouseNumber" Text="Huis nummer" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHouseNumber" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSuffix" Text="Toevoeging" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSuffix" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPostcode" Text="Postcode" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPostcode" ReadOnly="true" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegExpValidatorPostalCode" runat="server" ErrorMessage="Postcode incorrect" ValidationExpression="^[1-9][0-9]{3}\s?[a-zA-Z]{2}$" ControlToValidate="txtPostCode"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblChange" Text="Gegevens aanpassen" runat="server"></asp:Label></td>
            <td>
                <asp:Button ID="btnChange" Text="Edit" runat="server" OnClick="btnChange_Click" />
                <asp:Button ID="btnSaveChange" UseSubmitBehavior="false" Text="Save Changes" Visible="false" runat="server" OnClick="btnSaveChange_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
