<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="bestel.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table style="width:100%; text-align:center;">
        <tr>
            <td></td>
        </tr>
        <tr>
            <td style="width:50%"></td>
            <td class="auto-style1" style="float:left">Kies een Taart : <asp:DropDownList ID="ddlTaartSoort" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td style=" float:left">Aantal : <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Width="35px" Height="16px"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnAddToOrder" Text="Toevoegen aan order" runat="server" Height="23px" /></td>
        </tr>
    </table>
</asp:Content>
