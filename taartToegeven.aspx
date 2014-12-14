<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="taartToegeven.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="LbTaartnaam" runat="server" Text="Taart naam:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtTaartnaam" runat="server" Width="166px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbBeschrijving" runat="server" Text="Beschrijving:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtBeschrijving" runat="server" Width="166px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbPrijs" runat="server" Text="prijs:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPrijs" runat="server" Width="166px"></asp:TextBox></td>

        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbActief" runat="server" Text="Actief:"></asp:Label></td>
            <td class="auto-style1">
                <asp:RadioButton ID="rbActiefJa" Text="Ja" runat="server" /><asp:RadioButton ID="rbActiefNee" Text="Nee" runat="server" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LbFoto" runat="server" Text="Foto"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
            <td>
                <asp:Button ID="btnTaartToevoegen" runat="server" Text="Toevoegen" OnClick="btnTaartToevoegen_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>
