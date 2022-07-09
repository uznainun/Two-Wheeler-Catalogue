<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="ProductInfo.aspx.cs" Inherits="GeneralModule_productinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td> <asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource1" RepeatColumns="2" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lblpid" runat="server" Text='<%# Eval("p_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="s_descLabel" runat="server" Text='<%# Eval("s_desc") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Width="100px" ImageUrl='<%# "../DealerModule/images/" + Eval("proimages") %>'/>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server">Click To Book</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    p_id: <br />
                    p_name: <br />
                    price: <br />
                    s_desc: <br />
                    l_desc:
                    <asp:Label ID="l_descLabel" runat="server" Text='<%# Eval("l_desc") %>' />
                    <br />
                    d_id:
                    <asp:Label ID="d_idLabel" runat="server" Text='<%# Eval("d_id") %>' />
                    <br />
                    brand:
                    <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' />
                    <br />
                    type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    proimages:
                    <asp:Label ID="proimagesLabel" runat="server" Text='<%# Eval("proimages") %>' />
                    <br />
<br />
                </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [productview]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
</asp:Content>

