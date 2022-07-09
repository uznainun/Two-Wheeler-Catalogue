<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminMasterPage.master" AutoEventWireup="true" CodeFile="PendingRegistration.aspx.cs" Inherits="AdminModule_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="View1" runat="server">

            <asp:Label ID="Label2" runat="server" class="control-label" Text="pending requests"></asp:Label>
            <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>

        </asp:View>
        <asp:View ID="View2" runat="server">


            <asp:Label ID="Label1" runat="server" class="control-label" Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" class="table table-striped table-hover" runat="server" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="d_id" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="d_id" HeaderText="d_id" InsertVisible="False" ReadOnly="True" SortExpression="d_id" />
                    <asp:BoundField DataField="s_name" HeaderText="s_name" SortExpression="s_name" />
                    <asp:BoundField DataField="d_name" HeaderText="d_name" SortExpression="d_name" />
                    <asp:BoundField DataField="d_age" HeaderText="d_age" SortExpression="d_age" />
                    <asp:BoundField DataField="d_gender" HeaderText="d_gender" SortExpression="d_gender" />
                    <asp:BoundField DataField="d_contact" HeaderText="d_contact" SortExpression="d_contact" />
                    <asp:BoundField DataField="d_email" HeaderText="d_email" SortExpression="d_email" />
                    <asp:BoundField DataField="d_pincode" HeaderText="d_pincode" SortExpression="d_pincode" />
                    <asp:BoundField DataField="d_address" HeaderText="d_address" SortExpression="d_address" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT [d_id], [s_name], [d_name], [d_age], [d_gender], [d_contact], [d_email], [d_pincode], [d_address] FROM [dealerregistration] WHERE ([d_id] = @d_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="d_id" SessionField="d_id" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>



            <div class="row mt-4">
                <div class="col-4">
                    <asp:Button ID="Button4" runat="server" class="btn btn-primary" Text="Select Another" OnClick="Button4_Click" />
                </div>
                <div class="col-4">
                    <asp:Button ID="Button2" runat="server" class="btn btn-danger" OnClick="Button2_Click" Text="reject" />
                </div>
                <div class="col-4">
                    <asp:Button ID="Button3" runat="server" class="btn btn-success" OnClick="Button3_Click" Text="Approve" />
                </div>
            </div>

        </asp:View>
    </asp:MultiView>
</asp:Content>

