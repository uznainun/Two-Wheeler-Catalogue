<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewBookings.aspx.cs" Inherits="AdminModule_AdminViewBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="View1" runat="server">

            <asp:Label ID="Label2" runat="server" class="control-label" Text="Products"></asp:Label>

            <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>
            <asp:Label ID="Label1" runat="server" class="control-label" Text="Label"></asp:Label>
        </asp:View>

        <asp:View ID="View2" runat="server">
            <asp:DetailsView ID="DetailsView1" class="table table-striped table-hover" runat="server" Width="50%" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="id">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="u_name" HeaderText="u_name" SortExpression="u_name" />
                    <asp:BoundField DataField="u_age" HeaderText="u_age" SortExpression="u_age" />
                    <asp:BoundField DataField="u_gender" HeaderText="u_gender" SortExpression="u_gender" />
                    <asp:BoundField DataField="u_contact" HeaderText="u_contact" SortExpression="u_contact" />
                    <asp:BoundField DataField="u_email" HeaderText="u_email" SortExpression="u_email" />
                    <asp:BoundField DataField="u_cityid" HeaderText="u_cityid" SortExpression="u_cityid" />
                    <asp:BoundField DataField="u_address" HeaderText="u_address" SortExpression="u_address" />
                    <asp:BoundField DataField="p_id" HeaderText="p_id" SortExpression="p_id" />
                    <asp:BoundField DataField="d_id" HeaderText="d_id" SortExpression="d_id" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [booking] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="bid" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:Button ID="Button3" runat="server" class="btn btn-primary" OnClick="Button3_Click" Text="view another" />

        </asp:View>
    </asp:MultiView>
</asp:Content>




