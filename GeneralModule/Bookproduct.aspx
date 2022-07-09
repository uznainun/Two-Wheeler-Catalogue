<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="Bookproduct.aspx.cs" Inherits="GeneralModule_Bookproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" Height="923px" Width="543px">
                    <ItemTemplate>
                        #<asp:Label ID="p_idLabel" runat="server" Text='<%# Eval("p_id") %>' />
                        <br />
                        Product&nbsp;
                        <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
                        <br />
                        Price :
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        About:
                        <asp:Label ID="s_descLabel" runat="server" Text='<%# Eval("s_desc") %>' />
                        <br />
                        Description:
                        <asp:Label ID="l_descLabel" runat="server" Text='<%# Eval("l_desc") %>' />
                        <br />
                        #<asp:Label ID="d_idLabel" runat="server" Text='<%# Eval("d_id") %>' />
                        <br />
                        Brand:
                        <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' />
                        <br />
                        Type:
                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        <br />
                        Image:
                        <asp:Label ID="proimagesLabel" runat="server" Text='<%# Eval("proimages") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [productview] WHERE ([p_id] = @p_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="p_id" SessionField="pid" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
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

