<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="DealerProductImage.aspx.cs" Inherits="DealerModule_DealerProductImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td colspan="4" style="text-align: center">
                        <asp:Label ID="Label5" runat="server" class="control-label" Text="upload product images"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 488px">&nbsp;</td>
                    <td style="width: 99px">&nbsp;</td>
                    <td style="text-align: right; width: 272px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 488px">&nbsp;</td>
                    <td style="width: 99px">
                        <asp:Label ID="Label1" runat="server" class="control-label" Text="image 1"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 272px">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 488px">&nbsp;</td>
                    <td style="width: 99px">
                        <asp:Label ID="Label2" runat="server" class="control-label" Text="image 2"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 272px">
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 488px">&nbsp;</td>
                    <td style="width: 99px">
                        <asp:Label ID="Label3" runat="server" class="control-label" Text="image 3"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 272px">
                        <asp:FileUpload ID="FileUpload3" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 488px">&nbsp;</td>
                    <td style="width: 99px">
                        <asp:Label ID="Label4" runat="server" class="control-label" Text="image 4"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 272px">
                        <asp:FileUpload ID="FileUpload4" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 488px">&nbsp;</td>
                    <td style="width: 99px">&nbsp;</td>
                    <td style="width: 272px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width: 100%;">
                <tr>
                    <td style="width: 584px">&nbsp;</td>
                    <td style="text-align: right; width: 119px">
                        <asp:Button ID="Button1" runat="server" class="btn btn-success" OnClick="Button1_Click1" Text="leave" />
                    </td>
                    <td style="width: 170px; text-align: right">
                        <asp:Button ID="Button2" runat="server" class="btn btn-success" OnClick="Button2_Click" Text="upload" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 584px">&nbsp;</td>
                    <td style="width: 119px">&nbsp;</td>
                    <td style="width: 170px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

