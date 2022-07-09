<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="DealerIncreaseQuantity.aspx.cs" Inherits="DealerModule_DealerIncreaseQuantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">

            <h4>Stock Quantity</h4>
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            </asp:GridView>

            <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>

        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label2" runat="server" class="control-label" Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" class="table table-striped table-hover" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="id">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="p_id" HeaderText="p_id" SortExpression="p_id" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [stock] WHERE ([p_id] = @p_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="p_id" SessionField="pid" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>


            <div class="u nix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>Increase Quantity</h4>
                                    <div class="form-group">
                                        <label>Quanity</label>
                                        <h4></h4>
                                        <asp:TextBox ID="txtincreaseQuantity" runat="server" class="form-control"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtincreaseQuantity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>

                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button3" runat="server" class="btn btn-danger" Text="leave" />
                                        </div>
                                        <div class="col-6">
                                            <asp:Button ID="Button2" runat="server" class="btn btn-success" OnClick="Button2_Click" Text="Add Quantity" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </asp:View>
    </asp:MultiView>
</asp:Content>

