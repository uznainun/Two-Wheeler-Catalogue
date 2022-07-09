<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="GeneralModule_login" %>

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
                                    <h4>Login</h4>
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <asp:TextBox ID="txtuserid" runat="server" TextMode="Email" class="form-control" placeholder="Email"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserid" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox ID="txtuserpassword" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserpassword" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            Remember Me
                                        </label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="pull-right">
                                            <asp:LinkButton class="btn btn-link" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Forgotten Password?</asp:LinkButton>
                                        </label>
                                    </div>
                                    <asp:Button ID="btlogin" runat="server" Text="Sign in" OnClick="Button1_Click" class="btn btn-primary btn-flat m-b-30 m-t-30" />
                                    <div class="social-login-content">
                                        <div class="social-button">
                                            <button type="button" class="btn btn-primary bg-facebook btn-flat btn-addon m-b-10"><i class="ti-facebook"></i>Sign in with facebook</button>
                                            <button type="button" class="btn btn-primary bg-twitter btn-flat btn-addon m-t-10"><i class="ti-twitter"></i>Sign in with twitter</button>
                                        </div>
                                    </div>
                                    <div class="register-link m-t-15 text-center">
                                        <p>Don't have account ? </p>
                                        <asp:Button ID="btregisternow" runat="server" class="btn btn-success" Text="Sign Up Here" OnClick="Button2_Click" CausesValidation="False" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="unix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>Reset Password</h4>
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <asp:TextBox TextMode="Email" ID="txtforgotemailid" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtforgotemailid" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>
                                    <asp:Button ID="btrecover" runat="server" class="btn btn-primary btn-flat m-b-15" OnClick="btrecover_Click" Text="Submit" />
                                    <div class="register-link text-center">
                                        <p>Back to <a href="#">Home</a></p>
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

