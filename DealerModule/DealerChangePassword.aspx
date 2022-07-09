<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="DealerChangePassword.aspx.cs" Inherits="DealerModule_DealerChangePassword" %>

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
                                    <h3>Change password</h3>
                                    <div class="form-group">
                                        <label>New Password</label>
                                        <asp:TextBox ID="txtpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Re-Enter Password</label>
                                        <asp:TextBox ID="txtreenterpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtreenterpassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtreenterpassword" Display="Dynamic" ErrorMessage="password mis-matached" Font-Bold="True" Font-Names="sans-serfi" Font-Size="13px" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button1" runat="server" CausesValidation="False" class="btn btn-danger" OnClick="Button1_Click" Text="leave" />
                                        </div>
                                        <div class="col-6">
                                            <asp:Button ID="Button2" runat="server" class="btn btn-success" OnClick="Button2_Click" Text="change" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server"></asp:View>
    </asp:MultiView>
</asp:Content>
