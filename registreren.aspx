<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="registreren.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="lblFirstname" Text="Voornaam: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMiddleName" Text="Tussenvoegsel: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastName" Text="Achternaam: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" Text="Username: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" Text="Password: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" Text="Email: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegExpValidatorEmail" runat="server" ErrorMessage="Email incorrect" ValidationExpression="^[1-9][0-9]{3}\s?[a-zA-Z]{2}$" ControlToValidate="txtPostalCode"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStreetName" Text="Straat naam: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtStreetName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblHouseNumber" Text="Huisnummer: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtHouseNumber" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblHouseNrSuffix" Text="achtervoegsel: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtHouseNrSuffix" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPostalCode" Text="Postcode: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegExpValidatorPostalCode" runat="server" ErrorMessage="Postcode incorrect" ValidationExpression="^[1-9][0-9]{3}\s?[a-zA-Z]{2}$" ControlToValidate="txtPostalCode"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" Text="Plaats: " runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnSubmit" Text="Registreren" runat="server" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
