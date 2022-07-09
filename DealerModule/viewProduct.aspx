<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="viewProduct.aspx.cs" Inherits="DealerModule_viewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="View1" runat="server">
            <h4>View Products</h4>
            <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label1" runat="server" class="control-label" Text="Label"></asp:Label>

            <asp:DetailsView ID="DetailsView1" class="table table-striped table-hover" runat="server" DataSourceID="SqlDataSource1" >
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [product] WHERE ([p_id] = @p_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="p_id" SessionField="pid" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="View Another Product" OnClick="Button2_Click" />

        </asp:View>
    </asp:MultiView>
</asp:Content>

