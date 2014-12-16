<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="gebruikersOverzicht.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 529px;
        }
        .auto-style2 {
            width: 81px;
        }
        .auto-style3 {
            width: 329px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table style="width: 71%;">
        <tr>
            <td class="auto-style1"><asp:GridView ID="dgvUser" runat="server" Width="530px"></asp:GridView></td>
            <td class="auto-style2"><asp:DropDownList ID="ddlUser" runat="server"></asp:DropDownList></td>
            <td class="auto-style3">
                <asp:Button ID="btnactief" runat="server" Text="Button" OnClick="btnactief_Click" /></td>
            </tr>
    </table>
    
    <br />
    
    </asp:Content>
