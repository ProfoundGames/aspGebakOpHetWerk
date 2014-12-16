<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="mijnBestellingen.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table runat="server">
        <tr>
            <td>
                <asp:Label ID="lblOrders" Text="Orders List" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataGrid ID="dgOrders" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" DataSourceID="SqlDataSource1">
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" Mode="NumericPages" />
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GebakOphetWerkDBOrderData %>" SelectCommand="SELECT [order].orderID, [order].orderDate, orderItem.cakeID, orderItem.amount, orderItem.TotalAmountOfMoney FROM [order] RIGHT OUTER JOIN orderItem ON [order].orderID = orderItem.orderID WHERE (@userID = [order].userID) ORDER BY [order].orderID">
                    <SelectParameters>
                        <asp:SessionParameter Name="userID" SessionField="uID" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
