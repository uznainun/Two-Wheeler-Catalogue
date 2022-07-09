<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Newsletter.aspx.cs" Inherits="AdminModule_newsletter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="u nix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="index.html"><span>Focus</span></a>
                        </div>
                        <div class="login-form">
                            <h3>Admin NewsLetter</h3>
                            <div class="form-group">
                                <label>From</label>
                                <asp:TextBox ID="txtfrom" runat="server" value="admin@twowheeler.com" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Subject</label>
                                <asp:TextBox ID="txtsubject" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Message</label>
                                <asp:TextBox Height="300px" ID="txtmessage" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                    <asp:Button ID="Button2" runat="server" class="btn btn-danger" OnClick="Button2_Click" Text="Cancel" />
                                </div>
                                <div class="col-6">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Send" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

