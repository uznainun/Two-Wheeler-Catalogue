<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="RemoveProduct.aspx.cs" Inherits="DealerModule_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <h4>Remove Product</h4>
            <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label1" runat="server" class="control-label" Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" class="table table-striped table-hover" runat="server" DataSourceID="SqlDataSource1">
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [product] WHERE ([p_id] = @p_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="p_id" SessionField="pid" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>

            <div class="row">
                <div class="col-6">
                    <asp:Button ID="Button2" runat="server" class="btn btn-success" OnClick="Button2_Click" Text="View Another" />
                </div>
                <div class="col-6">
                    <asp:Button ID="Button3" runat="server" class="btn btn-danger" OnClick="Button3_Click" Text="Delete Product (Danger Zone)" />
                </div>
            </div>

        </asp:View>
    </asp:MultiView>
</asp:Content>

