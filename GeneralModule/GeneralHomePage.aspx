<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="GeneralHomePage.aspx.cs" Inherits="GeneralModule_generalhomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <style type="text/css">
		
		.image_section {
			display: block;
			width: 100%;
			height: auto;
			border: none;
			background: white;
			margin-top:20px;
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
            border-radius:2px;
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

	</style>
	<script type="text/javascript">
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

	</script>
    <section class="image_section">
		<div class="image_container">
			<div id="special_div" class="image_holder">
				<img id="img1" class="img1" src="../DealerModule/images/bk1.jpg" />
				<img id="img2" class="img2" src="../DealerModule/images/bk2.jpg" />
				<img id="img3" class="img3" src="../DealerModule/images/bk3.jpg" />
				<img id="img4" class="img4" src="../DealerModule/images/bk1.jpg" />

			</div>
		</div>
	</section>
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" Width="100%" DataSourceID="SqlDataSource1" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table style="width:auto;margin:auto;">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5" style="text-align: center">
                            <asp:Label ID="p_nameLabel" runat="server" CssClass="lblh" Text='<%# Eval("p_name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td rowspan="7">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"../DealerModule/p_images/"+ Eval("proimages") %>' Width="100px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblproductid" runat="server" CssClass="lblaside" Text='<%# Eval("p_id") %>' />
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' CssClass="lblaside" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' CssClass="lblaside" />
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="typeLabel" runat="server" CssClass="lblaside" Text='<%# Eval("type") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="s_descLabel" runat="server" CssClass="lblaside" Text='<%# Eval("s_desc") %>' />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="l_descLabel" runat="server" Text='<%# Eval("l_desc") %>' CssClass="lblaside" />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="lbldealerid" runat="server" CssClass="lblaside" Text='<%# Eval("d_id") %>' />
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lkbt">details</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwoWheelerCatalogueConnectionString3 %>" SelectCommand="SELECT * FROM [productview]"></asp:SqlDataSource>

    </div>

</asp:Content>


