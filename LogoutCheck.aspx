<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="logoutCheck.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPHContent" runat="server">
    <center><asp:Label  ID="Label1" runat="server" Text="Weet je zeker dat je uit wilt loggen?"></asp:Label></center>
   <center> <asp:Button ID="btnJa" runat="server" Text="Ja" Width="61px" OnClick="btnJa_Click" /><asp:Button ID="btnNee" runat="server" Text="Nee" Width="61px" OnClick="btnNee_Click" /></center>
</asp:Content>
