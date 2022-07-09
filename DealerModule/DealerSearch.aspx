<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="DealerSearch.aspx.cs" Inherits="DealerModule_DealerSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td style="width: 458px">&nbsp;</td>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 19px; text-align: center">
                        <asp:Label ID="Label1" runat="server" Text="search Product" class="control-label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 458px">&nbsp;</td>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 458px">&nbsp;</td>
                    <td style="width: 185px">
                        <asp:LinkButton class="btn btn-link" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">search by id</asp:LinkButton>
                    </td>
                    <td style="width: 203px; text-align: right">
                        <asp:LinkButton class="btn btn-link" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">search by name</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 458px">&nbsp;</td>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 458px">&nbsp;</td>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 458px">&nbsp;</td>
                    <td style="width: 185px">&nbsp;</td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td style="width: 764px">&nbsp;</td>
                    <td style="width: 86px">
                        &nbsp;</td>
                    <td style="width: 183px">
                        <asp:Button ID="Button4" runat="server" Text="Cancel" OnClick="Button4_Click" class="btn btn-success" CausesValidation="False" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 764px">&nbsp;</td>
                    <td style="width: 86px">&nbsp;</td>
                    <td style="width: 183px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 764px">&nbsp;</td>
                    <td style="width: 86px">&nbsp;</td>
                    <td style="width: 183px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td style="height: 21px"></td>
                    <td style="height: 21px; width: 126px;"></td>
                    <td style="height: 21px; width: 260px;"></td>
                    <td style="height: 21px; width: 49px;"></td>
                    <td style="height: 21px">&nbsp;</td>
                    <td style="height: 21px">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 21px; text-align: center">
                        <asp:Label ID="Label2" runat="server" Text="search product by id" class="control-label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 126px">&nbsp;</td>
                    <td style="width: 260px">&nbsp;</td>
                    <td style="width: 49px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 126px">&nbsp;</td>
                    <td style="width: 260px">&nbsp;</td>
                    <td style="width: 49px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 21px"></td>
                    <td style="height: 21px; width: 126px;">
                        <asp:Label ID="Label3" runat="server" Text="product id" class="control-label"></asp:Label>
                    </td>
                    <td style="height: 21px; text-align: right; width: 260px;">
                        <asp:TextBox ID="txtsearchbyid" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td style="height: 21px; width: 49px;"></td>
                    <td style="height: 21px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsearchbyid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 21px">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 126px">&nbsp;</td>
                    <td style="width: 260px">&nbsp;</td>
                    <td style="width: 49px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 126px">&nbsp;</td>
                    <td style="width: 260px">&nbsp;</td>
                    <td style="width: 49px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 126px">&nbsp;</td>
                    <td style="width: 260px">&nbsp;</td>
                    <td style="width: 49px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td style="width: 715px">&nbsp;</td>
                    <td style="width: 142px">&nbsp;</td>
                    <td style="width: 147px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 715px">&nbsp;</td>
                    <td style="width: 142px">
                        <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" class="btn btn-success" CausesValidation="False" />
                    </td>
                    <td style="width: 147px">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="search" class="btn btn-success" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 715px">&nbsp;</td>
                    <td style="width: 142px">&nbsp;</td>
                    <td style="width: 147px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px; text-align: center">
                        <asp:Label ID="Label6" runat="server" class="control-label" Text="search via id"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView  class="form-control" ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 492px">&nbsp;</td>
                    <td style="width: 243px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 492px">
                        &nbsp;</td>
                    <td style="width: 243px">
                        <asp:Button ID="Button11" runat="server" class="btn btn-success" OnClick="Button11_Click" Text="Search Via Name " />
                    </td>
                    <td>
                        <asp:Button ID="Button12" class="btn btn-success" runat="server"  OnClick="Button12_Click" Text="Search  Via Id" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 492px">&nbsp;</td>
                    <td style="width: 243px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 139px">&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 42px">&nbsp;</td>
                    <td style="width: 56px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: center">
                        <asp:Label ID="Label5" runat="server" Text="Search product by name" class="control-label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 139px">
                        &nbsp;</td>
                    <td style="text-align: right; width: 252px">
                        &nbsp;</td>
                    <td style="width: 42px">&nbsp;</td>
                    <td style="width: 56px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 139px">
                        <asp:Label ID="Label4" runat="server" class="control-label" Text="product name"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 252px">
                        <asp:TextBox ID="txtsearchbyname" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td style="width: 42px">&nbsp;</td>
                    <td style="width: 56px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsearchbyname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="width: 139px">&nbsp;</td>
                    <td style="width: 252px">&nbsp;</td>
                    <td style="width: 42px">&nbsp;</td>
                    <td style="width: 56px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td style="width: 510px">&nbsp;</td>
                    <td style="width: 172px">&nbsp;</td>
                    <td style="width: 167px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 510px">&nbsp;</td>
                    <td style="width: 172px">
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Cancel" class="btn btn-success" CausesValidation="False" />
                    </td>
                    <td style="width: 167px">
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="search" class="btn btn-success" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 510px">&nbsp;</td>
                    <td style="width: 172px">&nbsp;</td>
                    <td style="width: 167px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="Label7" runat="server" class="control-label" Text="search via name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView  class="form-control" ID="GridView2" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="lblnodatafound0" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td style="width: 653px">&nbsp;</td>
                    <td style="width: 266px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 653px">&nbsp;</td>
                    <td style="width: 266px">
                        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="search via name" class="btn btn-success" />
                    </td>
                    <td>
                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="search via id" class="btn btn-success" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 653px">&nbsp;</td>
                    <td style="width: 266px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View6" runat="server">
            <table style="width:100%;">
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
            <table style="width:100%;">
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

