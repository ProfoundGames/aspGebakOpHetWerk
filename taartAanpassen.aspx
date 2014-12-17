<%@ Page Title="" Language="C#" MasterPageFile="~/aspGebakOpHetWerk/default.Master" AutoEventWireup="true" CodeBehind="taartAanpassen.aspx.cs" Inherits="aspGebakOpHetWerk.aspGebakOpHetWerk.WebForm15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="CPHMenuItems" runat="server">
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="CPHContent" runat="server">

    <table style="width:100%; text-align:center;">
        <tr>
            <td>
                Seleteer een taart: <asp:DropDownList ID="ddlTaart" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTaart_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td style="text-align:right; width: 50%">Naam: </td>
                        <td style="text-align:left; width: 50%"">
                            <asp:TextBox ID="txtNaam" runat="server" Width="198px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNaam" ErrorMessage="Een taart naam is verplicht!" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr>
                        <td style="text-align:right; width: 50%">Beschrijving: </td>
                        <td style="text-align:left; width: 50%"">
                            <asp:TextBox ID="txtDesc" runat="server" Height="66px" TextMode="MultiLine" Width="198px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc" ErrorMessage="Een taart beschrijving is verplicht!" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr>
                        <td style="text-align:right; width: 50%">Prijs: </td>
                        <td style="text-align:left; width: 50%"">
                            <asp:TextBox ID="txtPrijs" runat="server" Width="198px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrijs" ErrorMessage="Een taart prijs is verplicht!" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr>
                        <td style="text-align:right; width: 50%">Taart Actief: </td>
                        <td style="text-align:left; width: 50%"">
                            <asp:CheckBox ID="cbActief" runat="server" Text=" = Taart Actief" /></td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr>
                        <td style="text-align:right; width: 50%">Foto: </td>
                        <td style="text-align:left; width: 50%""></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnOpSlaan" runat="server" Text="Sla op" Width="143px" OnClick="btnOpSlaan_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
