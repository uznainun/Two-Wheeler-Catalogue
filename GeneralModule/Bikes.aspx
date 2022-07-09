<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="Bikes.aspx.cs" Inherits="GeneralModule_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" Width="100%" DataSourceID="SqlDataSource1" RepeatColumns="1" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="col-6" style="margin: auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="user-profile">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="user-photo m-b-30">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"../DealerModule/images/"+ Eval("proimages") %>' class="img-fluid" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="user-profile-name">Two Wheeler</div>

                                        <div class="user-job-title">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("brand") %>' class="control-label" />
                                        </div>
                                        <div class="ratings">
                                            <h4>Ratings</h4>
                                            <div class="rating-star">
                                                <span>8.9</span>
                                                <i class="ti-star color-primary"></i>
                                                <i class="ti-star color-primary"></i>
                                                <i class="ti-star color-primary"></i>
                                                <i class="ti-star color-primary"></i>
                                                <i class="ti-star"></i>
                                            </div>
                                        </div>
                                        <div class="user-send-message">
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-danger btn-addon">Book Now
                                <i class="ti-email"></i>
                                            </asp:LinkButton>

                                        </div>
                                        <div class="custom-tab user-profile-tab">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li role="presentation" class="active">
                                                    <a href="#1" aria-controls="1" role="tab" data-toggle="tab">About</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active" id="1">
                                                    <div class="contact-information">
                                                        <h4>Contact information</h4>

                                                        <div class="address-content">
                                                            <span class="contact-title">#</span>
                                                            <span class="mail-address">
                                                                <asp:Label ID="lblproductid" runat="server" class="control-label" Text='<%# Eval("p_id") %>' /></span>
                                                            <span class="mail-address">
                                                                <asp:Label ID="lbldealerid" runat="server" class="control-label" Text='<%# Eval("d_id") %>' /></span>
                                                        </div>
                                                        <div class="phone-content">
                                                            <span class="contact-title">Product</span>
                                                            <span class="phone-number">
                                                                <asp:Label ID="p_nameLabel" runat="server" class="control-label" Text='<%# Eval("p_name") %>' /></span>
                                                        </div>

                                                        <div class="email-content">
                                                            <span class="contact-title">Brand:</span>
                                                            <span class="contact-email">
                                                                <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' class="control-label" /></span>
                                                        </div>
                                                        <div class="website-content">
                                                            <span class="contact-title">Price:</span>
                                                            <span class="contact-website">
                                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' class="control-label" /></span>
                                                        </div>
                                                        <div class="skype-content">
                                                            <span class="contact-title">Type:</span>
                                                            <span class="contact-skype">
                                                                <asp:Label ID="typeLabel" runat="server" class="control-label" Text='<%# Eval("type") %>' /></span>
                                                        </div>
                                                    </div>
                                                    <div class="basic-information">
                                                        <h4>Basic information</h4>
                                                        <div class="birthday-content">
                                                            <span class="contact-title">Description:</span>
                                                            <span class="birth-date">
                                                                <asp:Label ID="s_descLabel" runat="server" class="control-label" Text='<%# Eval("s_desc") %>' />
                                                            </span>
                                                        </div>
                                                        <div class="gender-content">
                                                            <span class="contact-title">Description:</span>
                                                            <span class="gender">
                                                                <asp:Label ID="l_descLabel" runat="server" Text='<%# Eval("l_desc") %>' class="control-label" /></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [productview] where type = 'bikes'"></asp:SqlDataSource>
</asp:Content>

