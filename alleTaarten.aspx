<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="alleTaarten.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
    </style>

    <link href="css/alleTaarten.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="server">
    <table style="width: 100%; text-align: center;">
        <tr>
            <td style="width: 33%"><a href="taartToegeven.aspx"><asp:Label ID="addCake" runat="server" Text="Taart toevoegen"></asp:Label></a></td>
            <td style="width: 33%"></td>
            <td style="width: 33%; font-size:20px;"></td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style1"></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="cakeID" DataSourceID="SqlDataSource1" ClientIDMode="AutoID">
                    <AlternatingItemTemplate>
                        <li style="background-color: #FFF8DC; color: black;">

                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 75px;">
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></td>
                                    <td>
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></td>
                                    <td>
                                        <asp:Label ID="cakeIDLabel" runat="server" Text='<%# Eval("cakeID") %>' /></td>
                                    <td rowspan="2">

                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="picureLabel" runat="server" Text='' /></td>
                                    <td colspan="2" style="padding: 5px;">
                                        <asp:Label ID="discriptionLabel" runat="server" Text='<%# Eval("discription") %>' /></td>
                                </tr>
                            </table>
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #008A8C; color: #FFFFFF;">

                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 75px;">
                                        <asp:Label ID="priceTextBox" runat="server" Text='<%# Eval("price") %>' /></td>
                                    <td>
                                        <asp:Label ID="nameTextBox" runat="server" Text='<%# Eval("name") %>' /></td>
                                    <td>
                                        <asp:Label ID="cakeIDLabel1" runat="server" Text='<%# Eval("cakeID") %>' /></td>
                                    <td rowspan="2">
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="picureTextBox" runat="server" Text='' /></td>
                                    <td colspan="2" style="padding: 5px;">
                                        <asp:Label ID="discriptionTextBox" runat="server" Text='<%# Eval("discription") %>' /></td>
                                </tr>
                            </table>
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="color: black;">

                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 75px;">
                                        <asp:Label ID="priceTextBox" runat="server" Text='<%# Eval("price") %>' /></td>
                                    <td>
                                        <asp:Label ID="nameTextBox" runat="server" Text='<%# Eval("name") %>' /></td>
                                    <td>
                                        <asp:Label ID="cakeIDLabel1" runat="server" Text='<%# Eval("cakeID") %>' /></td>
                                    <td rowspan="2">
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="picureTextBox" runat="server" Text='' /></td>
                                    <td colspan="2" style="padding: 5px;">
                                        <asp:Label ID="discriptionTextBox" runat="server" Text='<%# Eval("discription") %>' /></td>
                                </tr>
                            </table>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="background-color: #0B243B; color: white;">

                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 75px;">
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></td>
                                    <td>
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></td>
                                    <td>
                                        <asp:Label ID="cakeIDLabel" runat="server" Text='<%# Eval("cakeID") %>' /></td>
                                    <td rowspan="2">
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="picureLabel" runat="server" Text='' /></td>
                                    <td colspan="2" style="padding: 5px;">
                                        <asp:Label ID="discriptionLabel" runat="server" Text='<%# Eval("discription") %>' /></td>
                                </tr>
                            </table>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="background-color: #FFFFFF; font-weight: bold; color: black;">

                            <table style="width: 100%;">
                                <tr>
                                    <td>
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></td>
                                    <td>
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></td>
                                    <td>
                                        <asp:Label ID="cakeIDLabel" runat="server" Text='<%# Eval("cakeID") %>' /></td>
                                    <td rowspan="2">
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="picureLabel" runat="server" Text='' /></td>
                                    <td>
                                        <asp:Label ID="discriptionLabel" runat="server" Text='<%# Eval("discription") %>' /></td>
                                </tr>
                            </table>
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GebakOphetWerkDBConnectionString %>" SelectCommand="SELECT [name], [discription], [price], [cakeID] FROM [taart] WHERE ([active] = @active)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="active" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnBestel" runat="server" Text="Bestel" OnClick="btnBestel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
