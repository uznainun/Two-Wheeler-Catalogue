<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="DealerModule_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="d_id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            d_id:
            <asp:Label ID="d_idLabel" runat="server" Text='<%# Eval("d_id") %>' />
            <br />
            s_name:
            <asp:Label ID="s_nameLabel" runat="server" Text='<%# Eval("s_name") %>' />
            <br />
            d_name:
            <asp:Label ID="d_nameLabel" runat="server" Text='<%# Eval("d_name") %>' />
            <br />
            d_age:
            <asp:Label ID="d_ageLabel" runat="server" Text='<%# Eval("d_age") %>' />
            <br />
            d_gender:
            <asp:Label ID="d_genderLabel" runat="server" Text='<%# Eval("d_gender") %>' />
            <br />
            d_contact:
            <asp:Label ID="d_contactLabel" runat="server" Text='<%# Eval("d_contact") %>' />
            <br />
            d_email:
            <asp:Label ID="d_emailLabel" runat="server" Text='<%# Eval("d_email") %>' />
            <br />
            d_pincode:
            <asp:Label ID="d_pincodeLabel" runat="server" Text='<%# Eval("d_pincode") %>' />
            <br />
            d_cityid:
            <asp:Label ID="d_cityidLabel" runat="server" Text='<%# Eval("d_cityid") %>' />
            <br />
            d_address:
            <asp:Label ID="d_addressLabel" runat="server" Text='<%# Eval("d_address") %>' />
            <br />
            d_dp:
            <asp:Label ID="d_dpLabel" runat="server" Text='<%# Eval("d_dp") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [dealerregistration] WHERE ([d_id] = @d_id)">
        <SelectParameters>
            <asp:SessionParameter Name="d_id" SessionField="delid" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

