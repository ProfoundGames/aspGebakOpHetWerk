<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="ordersOverzicht.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">

    <table style="width: 100%; text-align:center">
        <tr>
            <td colspan="3">
                <asp:GridView Width="100%" ID="dgvTotalOrders" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="rbToday" runat="server" Checked="True" Text="Bestellingen van vandaag" OnCheckedChanged="rbToday_CheckedChanged" />
            </td>
            <td style="width: 33%"></td>
            <td>
                <asp:RadioButton ID="rbYesterday" runat="server" Text="Bestellingen van gisteren" OnCheckedChanged="rbYesterday_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"></td>
        </tr>
    </table>

</asp:Content>
