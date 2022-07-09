<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="GeneralModule_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:60%; margin:auto">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:Label ID="Label1" runat="server" class="control-label" Text="about two wheeler catalog"></asp:Label>
                <br />
                <%--<input runat="server" id="txt1" type="text" /><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <button>hello </button>--%>
                

            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <hr /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="lblh">
               
                    <span data-reactid="883" style="box-sizing: border-box; margin: 0px; padding: 0px;"><span data-reactid="884" style="box-sizing: border-box; margin: 0px; padding: 0px;">Mail Us:</span></span> </td>
            <td class="lblh">
               
                    <span data-reactid="891" style="box-sizing: border-box; margin: 0px; padding: 0px;"><span data-reactid="892" style="box-sizing: border-box; margin: 0px; padding: 0px;">Registered Office Address:</span></span>
              
                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="lblaside">
               
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            two wheeler catalog Private Limited,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            sir syed Iqbal Park,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            #56/18 &amp; 55/09, 7th Floor,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            solina payeen, silk factory Road,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            srinagar - 190009,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                  
            </td>
            <td class="lblaside">
               
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            two wheeler catalog Private Limited,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            saria bala, Ground Floor, 7th Main,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            80 Feet Road, 3rd Block,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            lal chowk,</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            srinagar - 190009</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            India</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            CIN : U51109KA2012PTC066107</p>
                        <p style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.5;">
                            Telephone:<span class="Apple-converted-space">&nbsp;</span><a href="tel:18002089898" style="box-sizing: border-box; margin: 0px; padding: 0px; text-decoration: none; color: rgb(40, 116, 240); border: none; outline: none; font-weight: 500;">1800 208 9898</a></p>
                   
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <br />
            <br />

        </asp:View>


        <asp:View ID="View2" runat="server">
            bye

            <asp:Button ID="Button2" runat="server" Text="Previous" OnClick="Button2_Click" />


        </asp:View>



    </asp:MultiView>

</asp:Content>

