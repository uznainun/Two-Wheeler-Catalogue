<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="GeneralModule_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            outline: none;
            box-sizing: border-box;
        }

        .main_section {
            display: block;
            text-align: center;
            border: none;
            max-width: 1200px;
            margin: auto;
        }

        .login_section {
            position: relative;
            border: none;
            display: inline-block;
            width: 900px;
            height:400px;
            margin: auto;
            padding: 15px 30px;
            background: #fafafa;
            box-shadow: 0px 0px 20px #eee;
            margin-top: 20px;
            border: 2px solid #eee;
        }

        .left_side {
            padding: 1px;
            display: block;
            max-width: 500px;
            float: left;
            border: none;
            padding-right: 10px;
        }

            .left_side .left_bottom {
                float: left;
                width: 100%;
                border-top: 1px solid silver;
            }

        .right_side {
            position: relative;
            border-left: 1px solid silver;
            max-width: 350px;
            padding: 10px 50px 40px 30px;
            display: block;
            float: left;
        }

        .left_side .existing_user,
        .left_side .forgot,
        .left_side input[type="text"],
        .left_side input[type="password"],
        .left_Side hr,
        .left_side button {
            display: block;
            float: left;
            clear: left;
            overflow: auto;
        }

        .existing_user {
            margin-bottom: 20px;
            text-transform: uppercase;
            font: bold 25px agency fb;
            color: royalblue;
        }

        .username,
        .userpassword {
            border: 1px solid silver;
            width: 300px;
            height: 33px;
            margin-bottom: 15px;
            font: bold 17px agency fb;
            color: gray;
        }

        .login_button {
            font: bold 20px agency fb;
            color: white;
            background-color: royalblue;
            border: none;
            cursor: pointer;
            padding: 4px 20px 6px 20px;
            margin-bottom: 10px;
            margin-top: 1px;
            text-transform: capitalize;
            box-shadow: 5px 5px 10px #bbb;
        }

        .forgot {
            font: bold 18px agency fb;
            color: #333;
            margin-bottom: 10px;
        }

        .forgot_click_here {
            font: bold 18px agency fb;
            text-decoration: none;
            color: royalblue;
        }

        .new_user {
            display: inline-block;
            float: left;
            position: relative;
            font: bold 28px agency fb;
            color: #333;
            margin-bottom: 10px;
        }

        .register_button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            font: bold 23px agency fb;
            color: white;
            background-color: royalblue;
            cursor: pointer;
            padding: 4px 20px 6px 20px;
            text-transform: capitalize;
            box-shadow: 5px 5px 10px #bbb;
            left: -2px;
        }

        .right_side button {
            display: block;
            margin-bottom: 20px;
            width: 230px;
            height: 60px;
            line-height: 60px;
            vertical-align: middle;
            overflow: visible;
            margin-left: 70px;
            cursor: pointer;
            box-shadow: 5px 5px 10px #bbb;
        }

        .fb {
            position: relative;
            margin-top: 20px;
            background-color: rgba(61, 90, 152, 0.96);
            color: white;
            font: bold 20px agency fb;
            border: none;
        }

        .google {
            position: relative;
            margin-top: 20px;
            background-color: #5694fb;
            color: white;
            font: bold 20px agency fb;
            border: none;
        }

        .twitter {
            position: relative;
            margin-top: 20px;
            background-color: rgba(80, 171, 241, 0.90);
            color: white;
            font: bold 20px agency fb;
            border: none;
        }

        .fb::before {
            content: '';
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 170px;
            font: bold 39px agency fb;
            line-height: 60px;
            vertical-align: middle;
            background-color: transparent;
            transform: translateX(-50px);
            background-image: url(images/facebook.png);
            background-size: cover;
            background-repeat: no-repeat;
        }

        .google::before {
            content: 'G';
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 170px;
            font: bold 39px agency fb;
            line-height: 60px;
            vertical-align: middle;
            background: #4285f4;
            transform: translateX(-50px);
        }

        .twitter::before {
            content: '';
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 170px;
            font: bold 39px agency fb;
            line-height: 60px;
            vertical-align: middle;
            background-color: transparent;
            background-image: url(images/twitter.png);
            background-size: cover;
            background-repeat: no-repeat;
            transform: translateX(-50px);
        }

        strong {
            font-size: 29px;
        }

        .right_side::before {
            content: 'OR';
            position: absolute;
            top: 100px;
            left: 145px;
            right: 145px;
            bottom: 100px;
            border-radius: 50%;
            background: #f6f6f6;
            font: bold 20px agency fb;
            text-align: center;
            z-index: 1000;
            height: 60px;
            line-height: 60px;
            vertical-align: middle;
            box-sizing: border-box;
            border: 1px solid silver;
            color: royalblue;
            transform: translateX(-175px) translateY(20px);
        }

        .inner_right_aside_container {
            text-align: center;
        }

         .recover_heading {
            display: inline-block;
            float: left;
            position: relative;
            font: bold 28px agency fb;
            color: #333;
            margin-bottom: 10px;
        }
        .forgot_subheading {
          color: #99a3b1;
          font:500 13px sans-serif; 

        }

        @media screen and (min-width:0px) and (max-width:950px) {
            .right_side {
                clear: both;
                border: none;
                border-top: 1px solid silver;
                padding-top: 30px;
                margin-top: 30px;
            }

                .right_side::before {
                    transform: translateY(-130px);
                }
        }

        .auto-style1 {
            width: 38px;
        }

        .auto-style7 {
            width: 38px;
            height: 58px;
        }

        .auto-style9 {
        }

        .auto-style10 {
            width: 38px;
            height: 47px;
        }

        .auto-style11 {
            height: 47px;
        }

        .auto-style12 {
            height: 47px;
            width: 307px;
        }

        .auto-style13 {
            height: 58px;
            width: 307px;
        }

        .auto-style16 {
            width: 144px;
        }

        .auto-style17 {
            width: 38px;
            height: 43px;
        }

        .auto-style20 {
            width: 241px;
            text-align: right;
        }
        .auto-style23 {
            height: 47px;
            width: 119px;
        }
        .auto-style24 {
            height: 58px;
            width: 119px;
        }
        .auto-style26 {
            height: 43px;
            width: 119px;
            text-align: right;
        }
        .auto-style27 {
            width: 119px;
        }
        .auto-style28 {
            width: 307px;
        }
        .auto-style29 {
            height: 43px;
            width: 307px;
            text-align: right;
        }
    </style>
    <section class="main_section">
        <section class="login_section">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table style="width: 100%;" cellspacing="0">
                        <tr>
                            <td class="auto-style10"></td>
                            <td class="auto-style12">
                                <asp:Label ID="Label1" CssClass="existing_user" runat="server" Text="EXISTING USER LOGIN HERE"></asp:Label>
                            </td>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7"></td>
                            <td class="auto-style13">
                                <asp:TextBox CssClass="username" ID="txtuserid" placeholder=" Enter Username " runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style24">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserid" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style9"  rowspan="8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style28">
                                <asp:TextBox CssClass="userpassword" ID="txtuserpassword" placeholder=" Enter Password " runat="server" TextMode="Password"></asp:TextBox>

                            </td>
                            <td class="auto-style27">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserpassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style28">
                                <asp:Button CssClass="login_button" ID="btlogin" runat="server" Text="Login" OnClick="Button1_Click" />
                            </td>
                            <td class="auto-style27">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style28">
                                <asp:Label CssClass="forgot" ID="Label2" runat="server" Text="Forgot your password?"></asp:Label>
                                <asp:LinkButton CssClass="forgot_click_here" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">click here</asp:LinkButton>
                            </td>
                            <td class="auto-style27">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style28" style="padding-right: 20px;">
                                <hr />
                            </td>
                            <td class="auto-style27" style="padding-right: 20px;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style29">
                                <asp:Label CssClass="new_user" ID="Label3" runat="server" Text="New User Register Here"></asp:Label>
                            </td>
                            <td class="auto-style26">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style29" style="padding-right: 1px;">
                                <asp:Button ID="btregisternow" runat="server" CssClass="register_button" Text="Register Now" OnClick="Button2_Click" CausesValidation="False" />
                            </td>
                            <td class="auto-style26" style="padding-right: 20px;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style29">&nbsp;</td>
                            <td class="auto-style26">&nbsp;</td>
                        </tr>
                    </table>
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table style="width:100%;">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align: center">
                                <asp:Label ID="Label4" runat="server" CssClass="recover_heading" Text="Forgot Password? Get it here"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align: left">
                                <asp:Label ID="Label6" CssClass="forgot_subheading" runat="server" Text="Please enter your registered email address. "></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align: left">
                                <asp:Label ID="Label5"  CssClass="forgot_subheading" runat="server" Text="You will receive a new Password in your mail box."></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="text-align: left">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtforgotemailid" runat="server" CssClass="username" placeholder=" Enter Email ID "></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btrecover" runat="server" CssClass="register_button"   OnClick="btrecover_Click" Text="Recover"  />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View3" runat="server"></asp:View>
            </asp:MultiView>

        </section>
    </section>
</asp:Content>

