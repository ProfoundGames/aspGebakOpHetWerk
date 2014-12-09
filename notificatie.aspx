<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="notificatie.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="text-align:center; font-size: 17px;">
                <asp:Label ID="lblNotificatie" runat="server" Text="Er zijn geen notificaties."></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
