<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="UpdateProduct.aspx.cs" Inherits="DealerModule_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <h4>Update Product Details</h4>
            <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="u nix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>
                                        <asp:Label ID="lblproductname" runat="server" class="control-label" Text="Label"></asp:Label></h4>

                                    <div class="form-group">
                                        <label>Product ID</label>
                                        <asp:Label ID="lblpid" runat="server" class="control-label" Text="Id"></asp:Label>
                                    </div>

                                    <div class="form-group">
                                        <label>Product Name</label>
                                        <asp:TextBox ID="txtpname" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpname" ErrorMessage="Enter product Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>



                                    <div class="form-group">
                                        <label>Price</label>
                                        <asp:TextBox ID="txtprice" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtprice" ErrorMessage="Enter Price" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>



                                    <div class="form-group">
                                        <label>Category</label>
                                        <asp:DropDownList ID="ddltype" runat="server" AutoPostBack="True" class="form-control" Enabled="False" OnSelectedIndexChanged="ddltype_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>Brand</label>
                                        <asp:DropDownList ID="ddlbrand" runat="server" class="form-control" Enabled="False" EnableTheming="True" DataTextField="id" DataValueField="id">
                                            <asp:ListItem>Select Brand ...</asp:ListItem>
                                            <asp:ListItem Value="1">Boom Motors</asp:ListItem>
                                            <asp:ListItem Value="2">TVS</asp:ListItem>
                                            <asp:ListItem Value="3">Hero Moto Corp.</asp:ListItem>
                                            <asp:ListItem Value="4">Honda</asp:ListItem>
                                            <asp:ListItem Value="5">Bajaj</asp:ListItem>
                                            <asp:ListItem Value="6">Suzuki</asp:ListItem>
                                            <asp:ListItem Value="7">Yamaha</asp:ListItem>
                                            <asp:ListItem Value="8">Bajaj </asp:ListItem>
                                            <asp:ListItem Value="9">Royal Enfield </asp:ListItem>
                                            <asp:ListItem Value="10">Suzuki Motorcycle </asp:ListItem>
                                            <asp:ListItem Value="11">Mahindra </asp:ListItem>
                                            <asp:ListItem Value="12">Yamaha </asp:ListItem>
                                            <asp:ListItem Value="13">Honda Motorcycle </asp:ListItem>
                                            <asp:ListItem Value="14">TVS</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>Short Description</label>
                                        <asp:TextBox ID="txtsdesc" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtsdesc" Display="Dynamic" ErrorMessage="Enter Short Description" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Long Description</label>
                                        <asp:TextBox ID="txtldesc" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtldesc" ErrorMessage="Enter long Description" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <label>Product color</label>
                                        <asp:TextBox ID="txtcolor" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcolor" ErrorMessage="please enter product colo" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>mileage</label>
                                        <asp:TextBox ID="txtmileage" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmileage" ErrorMessage="please enter milleage" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Bhp</label>
                                        <asp:TextBox ID="txtbhp" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbhp" ErrorMessage="Please enter BHP" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Tyres</label>
                                        <asp:DropDownList ID="ddltyres" runat="server" class="form-control" Enabled="False">
                                            <asp:ListItem>Tube</asp:ListItem>
                                            <asp:ListItem>TubeLess</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>Fuel Tank</label>
                                        <asp:TextBox ID="txtfueltank" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfueltank" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Top Speed</label>
                                        <asp:TextBox ID="txttopspeed" runat="server" class="form-control" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttopspeed" Display="Dynamic" ErrorMessage="enter top speed" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <label>Brakes</label>
                                        <asp:DropDownList ID="ddlbrakes" runat="server" class="form-control" Enabled="False">
                                            <asp:ListItem>Front</asp:ListItem>
                                            <asp:ListItem>REAR</asp:ListItem>
                                            <asp:ListItem>Both(front,rear)</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>


                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button3" runat="server" class="btn btn-danger" OnClick="Button3_Click" Text="leave" />
                                        </div>
                                        <div class="col-6">
                                            <asp:Button ID="btupdate" class="btn btn-success" runat="server" Text="edit" OnClick="Button2_Click" />
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


