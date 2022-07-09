<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="GeneralModule_generalhomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--  <style type="text/css">
        .image_section {
            display: block;
            width: 100%;
            height: auto;
            border: none;
            background: white;
            margin-top: 20px;
        }

        .image_container {
            display: block;
            max-width: 1200px;
            min-width: 1100px;
            height: auto;
            margin: 0 auto;
            border: none;
        }

        .image_holder {
            display: block;
            position: relative;
            width: 1100px;
            height: 450px;
            margin: 0 auto;
            border: 1px solid #ccc;
            overflow: hidden;
            box-shadow: 1px 2px 3px #bbb;
            border-radius: 2px;
        }

            .image_holder .img1,
            .image_holder .img2,
            .image_holder .img3,
            .image_holder .img4 {
                position: absolute;
                transition: all .4s ease-out;
                width: 100%;
                height: 100%;
            }

            .image_holder .img1 {
                top: 0;
                bottom: 0;
                right: 0;
                left: 0;
            }

            .image_holder .img2 {
                top: 0;
                bottom: 0;
                right: 0;
                left: 100%;
            }

            .image_holder .img3 {
                top: -100%;
                bottom: 0%;
                right: 0;
                left: 0;
            }

            .image_holder .img4 {
                top: 0;
                bottom: 0;
                right: 0;
                left: -100%;
            }

        .auto-style3 {
            width: 134px;
        }

        .auto-style5 {
            width: 246px;
        }

        .auto-style6 {
            width: 545px;
        }

        .auto-style7 {
            width: 416px;
        }
    </style>--%>

    <%--<script type="text/javascript">
        setTimeout(change_first, 6000);

        function change_first() {
            var a, b;
            a = document.getElementById('img1');
            b = document.getElementById('img2');
            a.style.left = '-100%';
            b.style.left = '0%';
            setTimeout(change2, 4000);
        }

        function change2() {
            var a, b;
            a = document.getElementById('img2');
            b = document.getElementById('img3');
            a.style.top = '100%';
            b.style.top = '0%';
            setTimeout(change3, 4000);
        }

        function change3() {
            var a, b;
            a = document.getElementById('img3');
            b = document.getElementById('img4');
            a.style.left = '100%';
            b.style.left = '0%';
            setTimeout(set_all_others_position, 2000);
            setTimeout(remove_last_image, 4000);

        }


        function set_all_others_position() {
            var a, b, c;
            a = document.getElementById('img1');
            b = document.getElementById('img2');
            c = document.getElementById('img3');
            a.style.left = '100%';
            b.style.left = '100%';
            b.style.top = '0';
            c.style.left = '0';
            c.style.top = '-100%';
        }

        function remove_last_image() {
            var a, b;
            a = document.getElementById('img4');
            b = document.getElementById('img1');
            a.style.left = '-100%';
            b.style.left = '0%';
            setTimeout(change_first, 4000);

        }

    </script>--%>
    <%--<section class="image_section">
        <div class="image_container">
            <div id="special_div" class="image_holder">
                <img id="img1" class="img1" src="../DealerModule/images/bk1.jpg" />
                <img id="img2" class="img2" src="../DealerModule/images/bk2.jpg" />
                <img id="img3" class="img3" src="../DealerModule/images/bk3.jpg" />
                <img id="img4" class="img4" src="../DealerModule/images/bk1.jpg" />

            </div>
        </div>
    </section>--%>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [productview]"></asp:SqlDataSource>

</asp:Content>


