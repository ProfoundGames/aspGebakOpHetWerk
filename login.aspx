<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="lblUsername" Text="Username" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" Text="Password" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" />
            </td>
            <td>
                <asp:Label ID="lblError" Text="" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnRegister" Text="Registreren" runat="server" OnClick="btnRegister_Click" /></td>
        </tr>
    </table>
</asp:Content>
