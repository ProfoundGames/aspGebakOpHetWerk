<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="taartToegeven.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    .auto-style2 {
        height: 26px;
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
                <asp:TextBox ID="txtTaartnaam" runat="server" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTaartnaam" ErrorMessage="Je bent de taart naam vergeten." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbBeschrijving" runat="server" Text="Beschrijving:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtBeschrijving" runat="server" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Je bent de taart beschrijving vergeten." ControlToValidate="txtBeschrijving" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbPrijs" runat="server" Text="prijs:"></asp:Label></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPrijs" runat="server" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Je bent de taart prijs vergeten." ControlToValidate="txtPrijs" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbActief" runat="server" Text="Actief:"></asp:Label></td>
            <td class="auto-style1">
                <asp:CheckBox ID="cbActief" runat="server" Text="ja" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LbFoto" runat="server" Text="Foto"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnTaartToevoegen" runat="server" Text="Toevoegen" OnClick="btnTaartToevoegen_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>
