<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="DealerModule_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   


         <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">&nbsp;</td>
                        <td style="width: 250px">&nbsp;</td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: center">
                            <asp:Label ID="Label19" runat="server" class="control-label" Text="Product Description"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">&nbsp;</td>
                        <td style="width: 250px">&nbsp;</td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">
                            <asp:Label ID="Label1" runat="server" class="control-label" Text="Product Name"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 250px">
                            <asp:TextBox ID="txtpname" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpname" ErrorMessage="Enter product Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">
                            <asp:Label ID="Label2" runat="server" class="control-label" Text="Price"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 250px">
                            <asp:TextBox ID="txtprice" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtprice" ErrorMessage="Enter Price" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">
                            <asp:Label ID="Label3" runat="server" class="control-label" Text="Category"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 250px">
                            <asp:DropDownList ID="ddltype" runat="server" AutoPostBack="True" class="form-control" OnSelectedIndexChanged="ddltype_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">
                            <asp:Label ID="Label4" runat="server" class="control-label" Text="Brand"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 250px">
                            <asp:DropDownList ID="ddlbrand" runat="server" class="form-control">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">
                            <asp:Label ID="Label5" runat="server" class="control-label" Text="Short Description"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 250px">
                            <asp:TextBox ID="txtsdesc" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtsdesc" Display="Dynamic" ErrorMessage="Enter Short Description" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">
                            <asp:Label ID="Label6" runat="server" class="control-label" Text="Long Description"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 250px">
                            <asp:TextBox ID="txtldesc" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtldesc" ErrorMessage="Enter long Description" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 464px">&nbsp;</td>
                        <td style="width: 175px">&nbsp;</td>
                        <td style="width: 250px">&nbsp;</td>
                        <td style="width: 27px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td style="width: 471px">&nbsp;</td>
                        <td style="width: 259px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 471px">&nbsp;</td>
                        <td style="width: 259px; text-align: right;">
                            <asp:Button ID="Button1" runat="server" Text="Cancel"     class="btn btn-success"  CausesValidation="False"    />
                        </td>
                        <td style="width: 161px; text-align: right;">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"  class="btn btn-success"     Text  ="Next" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 471px">&nbsp;</td>
                        <td style="width: 259px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">&nbsp;</td>
                        <td style="width: 276px">&nbsp;</td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: center">
                            <asp:Label ID="Label15" runat="server" class="control-label" Text="Product Specification"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">&nbsp;</td>
                        <td style="width: 276px">&nbsp;</td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">
                            <asp:Label ID="Label10" runat="server" class="control-label" Text="Product color"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 276px">
                            <asp:TextBox ID="txtcolor" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcolor" ErrorMessage="please enter product colo" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">
                            <asp:Label ID="Label9" runat="server" class="control-label" Text="mileage"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 276px">
                            <asp:TextBox ID="txtmileage" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmileage" ErrorMessage="please enter milleage" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">
                            <asp:Label ID="Label8" runat="server" class="control-label" Text="Bhp"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 276px">
                            <asp:TextBox ID="txtbhp" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbhp" ErrorMessage="Please enter BHP" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">
                            <asp:Label ID="Label14" runat="server" class="control-label" style="text-align: right" Text="Tyres"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 276px">
                            <asp:DropDownList ID="ddltyres" runat="server" class="form-control">
                                <asp:ListItem>Tube</asp:ListItem>
                                <asp:ListItem>TubeLess</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">
                            <asp:Label ID="Label12" runat="server" class="control-label" Text="Brakes"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 276px">
                            <asp:DropDownList ID="ddlbrakes" runat="server" class="form-control">
                                <asp:ListItem>Front</asp:ListItem>
                                <asp:ListItem>REAR</asp:ListItem>
                                <asp:ListItem>Both(front,rear)</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">
                            <asp:Label ID="Label13" runat="server" class="control-label" Text="Fuel Tank"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 276px">
                            <asp:TextBox ID="txtfueltank" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfueltank" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">
                            <asp:Label ID="Label11" runat="server" class="control-label" Text="Top Speed"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 276px">
                            <asp:TextBox ID="txttopspeed" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttopspeed" Display="Dynamic" ErrorMessage="enter top speed" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">&nbsp;</td>
                        <td style="width: 276px; text-align: right;">&nbsp;</td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">&nbsp;</td>
                        <td style="width: 276px">&nbsp;</td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 476px">&nbsp;</td>
                        <td style="width: 130px">&nbsp;</td>
                        <td style="width: 276px">&nbsp;</td>
                        <td style="width: 35px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td style="width: 708px">&nbsp;</td>
                        <td style="width: 156px">&nbsp;</td>
                        <td style="width: 140px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 708px">&nbsp;</td>
                        <td style="width: 156px">
                            <asp:Button ID="Button3" runat="server" CausesValidation="False" class="btn btn-success" Text="cancel" />
                        </td>
                        <td style="width: 140px">
                            <asp:Button ID="Button4" runat="server" class="btn btn-success" OnClick="Button4_Click" Text="Next" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 708px">&nbsp;</td>
                        <td style="width: 156px">&nbsp;</td>
                        <td style="width: 140px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 483px">&nbsp;</td>
                        <td style="width: 113px">&nbsp;</td>
                        <td style="width: 279px">&nbsp;</td>
                        <td style="width: 39px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: center;">
                            <asp:Label ID="Label20" runat="server" class="control-label" Text="product image and Stock"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 483px">&nbsp;</td>
                        <td style="width: 113px">&nbsp;</td>
                        <td style="width: 279px">&nbsp;</td>
                        <td style="width: 39px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 483px">&nbsp;</td>
                        <td style="width: 113px">
                            <asp:Label ID="Label18" runat="server" class="control-label" Text="Quantity"></asp:Label>
                        </td>
                        <td style="width: 279px; text-align: right;">
                            <asp:TextBox ID="Txtquantity" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="width: 39px">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Txtquantity" Display="Dynamic" ErrorMessage="enter top speed" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 483px">&nbsp;</td>
                        <td style="width: 113px">&nbsp;</td>
                        <td style="width: 279px">
                            &nbsp;</td>
                        <td style="width: 39px">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 483px">&nbsp;</td>
                        <td style="width: 113px">
                            <asp:Label ID="Label21" runat="server" class="control-label" Text="product image"></asp:Label>
                        </td>
                        <td style="width: 279px; text-align: right;">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td style="width: 39px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td style="width: 623px">&nbsp;</td>
                        <td style="width: 147px">&nbsp;</td>
                        <td style="width: 147px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 623px">&nbsp;</td>
                        <td style="width: 147px">
                            <asp:Button ID="Button5" runat="server" class="btn btn-success" Text="Cancel" />
                        </td>
                        <td style="width: 147px">
                            <asp:Button ID="Button6" runat="server" class="btn btn-success" OnClick="Button6_Click" Text="Submit" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 623px">&nbsp;</td>
                        <td style="width: 147px">&nbsp;</td>
                        <td style="width: 147px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 452px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 452px">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label16" runat="server" class="control-label" Text="Your Product Has Been Successfully Added.to upload more product  images click "></asp:Label>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-link" OnClick="LinkButton1_Click">Here..</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 452px">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label17" runat="server" Text="Go To Home Page click" class="control-label"></asp:Label>&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" class="btn btn-link">Here..</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 452px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
</asp:Content>

