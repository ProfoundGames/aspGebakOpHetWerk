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
            <td colspan="2">
                <asp:GridView Width="100%" ID="dgvBestellingLijst" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td style="width:50%"></td>
            <td class="auto-style1" style="float:left">Kies een Taart : <asp:DropDownList ID="ddlTaartSoort" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTaartSoort_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td style=" float:left">Aantal : <asp:TextBox ID="txtAmount" runat="server" TextMode="Number" Width="35px" Height="16px" AutoPostBack="True" OnTextChanged="txtAmount_TextChanged">0</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmount" ErrorMessage="Aantal is een verplicht veld." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td style="float:left;">Total Amount: <asp:Label ID="lblTotalAmount" runat="server" Text="0"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnAddToOrder" Text="Toevoegen aan order" runat="server" Height="23px" OnClick="btnAddToOrder_Click" /></td>
        </tr>
    </table>
</asp:Content>
