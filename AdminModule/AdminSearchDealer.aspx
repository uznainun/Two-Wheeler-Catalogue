<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminSearchDealer.aspx.cs" Inherits="AdminModule_AdminSearchDealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="u nix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>Search Dealer</h4>
                                    <div class="form-group">
                                        <asp:LinkButton class="btn btn-info" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">search by id</asp:LinkButton>
                                    </div>
                                    <div class="form-group">
                                        <asp:LinkButton class="btn btn-secondary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">search by name</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                                    <h3>search dealer by ID</h3>
                                    <div class="form-group">
                                        <label>Dealer ID</label>
                                        <asp:TextBox ID="txtsearchbyid" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsearchbyid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" class="btn btn-danger" CausesValidation="False" />
                                        </div>
                                        <div class="col-6">
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="search" class="btn btn-success" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <div class="u nix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h3>Dealer Search Result</h3>
                                    <div class="form-group">
                                        <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server">
                                        </asp:GridView>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblnodatafound" runat="server" class="alert alert-danger" Text="NO DATA FOUND" Visible="False"></asp:Label>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button ID="Button3" runat="server" Text="Search Another Dealer" class="btn btn-info" OnClick="Button3_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <div class="u nix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h3>search dealer by Name</h3>
                                    <div class="form-group">
                                        <label>Dealer Name</label>
                                        <asp:TextBox ID="txtsearchbyname" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsearchbyname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button7" runat="server" Text="Cancel" OnClick="Button7_Click" class="btn btn-danger" CausesValidation="False" />
                                        </div>
                                        <div class="col-6">
                                            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="search" class="btn btn-success" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <div class="u nix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h3>Dealer Search Result</h3>
                                    <div class="form-group">
                                        <asp:GridView class="table table-striped table-hover" ID="GridView2" runat="server">
                                        </asp:GridView>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblnodatafound0" runat="server" class="alert alert-danger" Text="NO DATA FOUND" Visible="False"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="Button4" runat="server" Text="Search Another Dealer" class="btn btn-info" OnClick="Button4_Click1" />
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
