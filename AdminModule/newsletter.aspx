<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Newsletter.aspx.cs" Inherits="AdminModule_newsletter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 298px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                <asp:Label ID="Label5" runat="server" CssClass="lblhbr" Text="Admin Newsletter"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 298px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label6" runat="server" CssClass="lblaside" Text="from"></asp:Label>
            </td>
            <td style="width: 298px; text-align: right">
                <asp:TextBox  ID="txtfrom" runat="server" value="admin@twowheeler.com" CssClass="txtb"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label1" runat="server" CssClass="lblaside" Text="subject"></asp:Label>
            </td>
            <td style="width: 298px; text-align: right">
                <asp:TextBox ID="txtsubject" runat="server" CssClass="txtb"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">
                <asp:Label ID="Label3" runat="server" CssClass="lblaside" Text="message"></asp:Label>
            </td>
            <td style="width: 298px; text-align: right">
                <asp:TextBox ID="txtmessage" runat="server" CssClass="txtvb" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 298px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 298px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 195px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: right; width: 195px">
                <asp:Button ID="Button2" runat="server" CssClass="bt" OnClick="Button2_Click" Text="leave" />
            </td>
            <td style="text-align: right; width: 147px">
                <asp:Button ID="Button1" runat="server" CssClass="bt" Text="send" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 195px">&nbsp;</td>
            <td style="width: 147px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

