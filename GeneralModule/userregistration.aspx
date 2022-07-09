<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="GeneralModule_userregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:MultiView ID="MultiView1" runat="server">
        
        <asp:View ID="View1" runat="server">   
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6" style="width: 468px">&nbsp;</td>
                    <td class="auto-style4" style="width: 102px">&nbsp;</td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 20px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: center">
                        <asp:Label ID="Label15" runat="server" Text="User Registration" CssClass="lblh"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 468px">&nbsp;</td>
                    <td class="auto-style4" style="width: 102px"></td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 20px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 468px">&nbsp;</td>
                    <td class="auto-style4" style="width: 102px">
                        <asp:Label ID="Label1" runat="server" CssClass="lblaside" Text="Email ID "></asp:Label>
                    </td>
                    <td class="auto-style3" style="text-align: right; width: 239px;">
                        <asp:TextBox ID="txtemailid" runat="server" CssClass="txtn" placeholder=" enter your email address . . ."></asp:TextBox>
                    </td>
                    <td class="auto-style5" style="width: 20px">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="Invalid Email Id" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 468px">&nbsp;</td>
                    <td class="auto-style4" style="width: 102px"></td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 20px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 468px">&nbsp;</td>
                    <td class="auto-style4" style="width: 102px">&nbsp;</td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 20px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style63" style="width: 502px">&nbsp;</td>
                    <td class="auto-style62" style="width: 187px">
                        &nbsp;</td>
                    <td class="auto-style54" style="width: 114px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63" style="width: 502px">
                        &nbsp;</td>
                    <td class="auto-style51" style="text-align: right; width: 187px;">
                        <asp:Button ID="Button3"  CssClass="bt" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Cancel" />
                    </td>
                    <td class="auto-style50" style="text-align: right; width: 114px;">
                        <asp:Button ID="Button1"  CssClass="bt" runat="server" OnClick="Button1_Click" Text="Next" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63" style="width: 502px">&nbsp;</td>
                    <td class="auto-style62" style="width: 187px">&nbsp;</td>
                    <td class="auto-style54" style="width: 114px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width:100%;">
                <tr>
                    <td style="width: 232px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 232px">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label13" runat="server"  CssClass="lblaside" Text="Enter the OTP you  recieved via  "></asp:Label>
                        <asp:LinkButton ID="lbtuseremailid" runat="server" CausesValidation="False" CssClass="lkbt" OnClick="lbtuseremailid_Click">user emai id</asp:LinkButton>
                        <asp:Label ID="Label16" runat="server" CssClass="lblaside"  Text=" . To change your email address click "></asp:Label>
                        <asp:LinkButton ID="lbthere" runat="server" CausesValidation="False" CssClass="lkbt"  OnClick="LinkButton2_Click">here </asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 232px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style67" style="width: 388px">
                        &nbsp;</td>
                    <td class="auto-style66" style="width: 131px">
                        &nbsp;</td>
                    <td style="width: 223px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 388px">&nbsp;</td>
                    <td class="auto-style66" style="width: 131px">
                        &nbsp;</td>
                    <td style="width: 223px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 388px"></td>
                    <td class="auto-style66" style="width: 131px">
                        <asp:Label ID="Label2" CssClass="lblaside"  runat="server" Text="Enter OTP"></asp:Label>
                    </td>
                    <td style="width: 223px; height: 22px; text-align: right;">
                        <asp:TextBox ID="txtotp" runat="server" CssClass="txtn"></asp:TextBox>
                    </td>
                    <td  style="padding-left:20px;" class="auto-style65">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtotp" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtotp" Display="Dynamic" ErrorMessage="Invalid Code" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
                    </td>
                    <td style="padding-left: 20px;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 388px">&nbsp;</td>
                    <td class="auto-style66" style="width: 131px">
                        &nbsp;</td>
                    <td style="width: 223px">
                        &nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style36" style="width: 457px">&nbsp;</td>
                    <td class="auto-style38" style="width: 171px">&nbsp;</td>
                    <td class="auto-style35" style="width: 117px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36" style="width: 457px">&nbsp;</td>
                    <td class="auto-style38" style="text-align: right; width: 171px;">
                        <asp:Button ID="Button5" CssClass="bt" runat="server" CausesValidation="False" OnClick="Button5_Click" Text="Cancel" />
                    </td>
                    <td class="auto-style35" style="text-align: right; width: 117px;">
                        <asp:Button ID="Button2" CssClass="bt" runat="server" OnClick="Button2_Click" Text="Next" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36" style="width: 457px">&nbsp;</td>
                    <td class="auto-style38" style="width: 171px">&nbsp;</td>
                    <td class="auto-style35" style="width: 117px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style19" style="width: 225px">&nbsp;</td>
                    <td class="auto-style74">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" style="width: 225px">&nbsp;</td>
                    <td class="auto-style74">
                        <asp:Label ID="Label17" CssClass="lblaside"  runat="server" Text="I don't recieve otp "></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  CssClass="lkbt"  CausesValidation="False">resend me code again</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" style="width: 225px">&nbsp;</td>
                    <td class="auto-style74">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
                 <table style="width:100%;">
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px">&nbsp;</td>
                         <td class="auto-style70" style="width: 334px">&nbsp;</td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" colspan="5" style="text-align: center;">
                             <asp:Label ID="Label19" runat="server" CssClass="lblh" Text="User Details"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px">&nbsp;</td>
                         <td class="auto-style70" style="width: 334px">&nbsp;</td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px"></td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label3" runat="server" Text="Name" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtname" runat="server" CssClass="txtn"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                         </td>
                         <td class="auto-style11">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label4" runat="server" Text="Age" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlage" runat="server" CssClass="sls">
                                 <asp:ListItem>18</asp:ListItem>
                                 <asp:ListItem>19</asp:ListItem>
                                 <asp:ListItem>20</asp:ListItem>
                                 <asp:ListItem>21</asp:ListItem>
                                 <asp:ListItem>22</asp:ListItem>
                                 <asp:ListItem>23</asp:ListItem>
                                 <asp:ListItem>24</asp:ListItem>
                                 <asp:ListItem>25</asp:ListItem>
                                 <asp:ListItem>26</asp:ListItem>
                                 <asp:ListItem>27</asp:ListItem>
                                 <asp:ListItem>28</asp:ListItem>
                                 <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                 <asp:ListItem>31</asp:ListItem>
                                 <asp:ListItem>32</asp:ListItem>
                                 <asp:ListItem>33</asp:ListItem>
                                 <asp:ListItem>34</asp:ListItem>
                                 <asp:ListItem>35</asp:ListItem>
                                 <asp:ListItem>36</asp:ListItem>
                                 <asp:ListItem>37</asp:ListItem>
                                 <asp:ListItem>38</asp:ListItem>
                                 <asp:ListItem>39</asp:ListItem>
                                 <asp:ListItem>40</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label6" runat="server" Text="Gender" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlgender" runat="server" CssClass="slm">
                                 <asp:ListItem Value="Male">Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label11" runat="server" Text="Contact No." CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtcno" runat="server" CssClass="txtn"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcno" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcno" Display="Dynamic" ErrorMessage="Invalid Contact No." Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label5" runat="server" Text="Pincode" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtpincode" runat="server" CssClass="txtn"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpincode" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" Display="Dynamic" ErrorMessage="Invalid Pin Code" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px"></td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label8" runat="server" Text="Region" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlregion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlregion_SelectedIndexChanged" CssClass="slm">
                             </asp:DropDownList>
                         </td>
                         <td class="auto-style69"></td>
                         <td class="auto-style1">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label7" runat="server" Text="City" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlcity" runat="server" CssClass="slm">
                             </asp:DropDownList>
                         </td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label9" runat="server" Text="Address" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtaddress" runat="server" CssClass="txtn"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label10" runat="server" Text="Profile Picture" CssClass="lblaside"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:FileUpload ID="FileUpload1" runat="server" />
                         </td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px">&nbsp;</td>
                         <td class="auto-style70" style="width: 334px">&nbsp;</td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
                 <table style="width:100%;">
                     <tr>
                         <td style="width: 540px">&nbsp;</td>
                         <td class="auto-style41" style="width: 130px">&nbsp;</td>
                         <td class="auto-style47" style="width: 157px">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td style="width: 540px">&nbsp;</td>
                         <td class="auto-style53" style="text-align: right; width: 130px;">
                             <asp:Button ID="Button6" CssClass="bt" runat="server" OnClick="Button6_Click" Text="Leave" CausesValidation="False" />
                         </td>
                         <td class="auto-style52" style="text-align: right; width: 157px;">
                             <asp:Button ID="btregister" CssClass="bt" runat="server" OnClick="Button4_Click" Text="Register" />
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td style="width: 540px">&nbsp;</td>
                         <td class="auto-style41" style="width: 130px">&nbsp;</td>
                         <td class="auto-style47" style="width: 157px">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 210px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center;" colspan="3">
                        <asp:Label ID="Label12" runat="server" Text="Congratulation, you are sucessufully registers" CssClass="lblaside"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 210px">&nbsp;</td>
                    <td style="text-align: center">
                        <asp:Label ID="Label18"  CssClass="lblaside"  runat="server" Text="Your username and password has been sent to your registered email address. To login  click  "></asp:Label>
                        <asp:LinkButton ID="LinkButton3" runat="server"  CssClass="lkbt" OnClick="LinkButton3_Click">here</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

