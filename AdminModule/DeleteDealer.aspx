<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DeleteDealer.aspx.cs" Inherits="AdminModule_DeleteDealer" %>

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
                                    <h3>Delete Account for forever</h3>
                                    <div class="form-group">
                                        <label>Dealer ID</label>
                                        <asp:TextBox ID="txtdid" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdid" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Re-Enter Dealer ID</label>
                                        <asp:TextBox ID="txtreenter" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtreenter" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtdid" ControlToValidate="txtreenter" Display="Dynamic" ErrorMessage="mis-matached" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button1" runat="server" CausesValidation="False" class="btn btn-success" OnClick="Button1_Click" Text="Cancel" />
                                        </div>
                                        <div class="col-6">
                                            <asp:Button ID="Button2" runat="server" class="btn btn-danger" OnClick="Button2_Click" Text="Delete Account (Danger Zone)" />
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

