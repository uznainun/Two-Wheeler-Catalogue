<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddDealer.aspx.cs" Inherits="AdminModule_AdminAddDealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:MultiView ID="MultiView1" runat="server">
        
        <asp:View ID="View1" runat="server">   
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6" style="width: 465px">&nbsp;</td>
                    <td class="auto-style4" style="width: 127px">&nbsp;</td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 19px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: center">
                        <asp:Label ID="Label15" runat="server" Text="Dealer Registration" class="control-label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 465px">&nbsp;</td>
                    <td class="auto-style4" style="width: 127px"></td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 19px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 465px">&nbsp;</td>
                    <td class="auto-style4" style="width: 127px">
                        <asp:Label ID="Label1" runat="server" Text="Email ID " class="control-label"></asp:Label>
                    </td>
                    <td class="auto-style3" style="text-align: right; width: 239px;">
                        <asp:TextBox ID="txtemailid" runat="server" class="form-control" placeholder=" enter your email address . . ."></asp:TextBox>
                    </td>
                    <td class="auto-style5" style="width: 19px">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="Invalid Email Id" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 465px">&nbsp;</td>
                    <td class="auto-style4" style="width: 127px"></td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 19px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 465px">&nbsp;</td>
                    <td class="auto-style4" style="width: 127px">&nbsp;</td>
                    <td class="auto-style3" style="width: 239px">&nbsp;</td>
                    <td class="auto-style5" style="width: 19px">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style63" style="width: 513px">&nbsp;</td>
                    <td class="auto-style62" style="width: 173px">
                        &nbsp;</td>
                    <td class="auto-style54" style="width: 144px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63" style="width: 513px">
                        &nbsp;</td>
                    <td class="auto-style51" style="text-align: right; width: 173px;">
                        <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Cancel" class="btn btn-success" />
                    </td>
                    <td class="auto-style50" style="text-align: right; width: 144px;">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" class="btn btn-success" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63" style="width: 513px">&nbsp;</td>
                    <td class="auto-style62" style="width: 173px">&nbsp;</td>
                    <td class="auto-style54" style="width: 144px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width:100%;">
                <tr>
                    <td style="width: 250px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center;" colspan="3">
                        <asp:Label ID="Label13" runat="server" class="control-label" Text="Enter the OTP you  recieved via  "></asp:Label>
                        <asp:LinkButton ID="lbtuseremailid" runat="server" CausesValidation="False" class="btn btn-link" OnClick="lbtuseremailid_Click">user emai id</asp:LinkButton>
                        <asp:Label ID="Label16" runat="server" class="control-label" Text=" . To change your email address click "></asp:Label>
                        <asp:LinkButton ID="lbthere" runat="server" CausesValidation="False" class="btn btn-link" OnClick="LinkButton2_Click">here </asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="width: 250px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style67" style="width: 440px">
                        &nbsp;</td>
                    <td class="auto-style66" style="width: 130px">
                        &nbsp;</td>
                    <td style="width: 223px">&nbsp;</td>
                    <td class="auto-style65" style="width: 18px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 440px">&nbsp;</td>
                    <td class="auto-style66" style="width: 130px">
                        &nbsp;</td>
                    <td style="width: 223px">&nbsp;</td>
                    <td class="auto-style65" style="width: 18px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 440px"></td>
                    <td class="auto-style66" style="width: 130px">
                        <asp:Label ID="Label2" runat="server" Text="Enter OTP" class="control-label"></asp:Label>
                    </td>
                    <td style="width: 223px; height: 22px; text-align: right;">
                        <asp:TextBox ID="txtotp" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td  style="padding-left:20px; width: 18px;" class="auto-style65">
                        &nbsp;</td>
                    <td class="auto-style65" style="padding-left:20px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtotp" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtotp" Display="Dynamic" ErrorMessage="Invalid Code" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
                    </td>
                    <td style="padding-left: 20px;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 440px">&nbsp;</td>
                    <td class="auto-style66" style="width: 130px">
                        &nbsp;</td>
                    <td style="width: 223px">
                        &nbsp;</td>
                    <td class="auto-style65" style="width: 18px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style36" style="width: 505px">&nbsp;</td>
                    <td class="auto-style38" style="width: 171px">&nbsp;</td>
                    <td class="auto-style35" style="width: 117px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36" style="width: 505px">&nbsp;</td>
                    <td class="auto-style38" style="text-align: right; width: 171px;">
                        <asp:Button ID="Button5" runat="server" CausesValidation="False" OnClick="Button5_Click" Text="Cancel" class="btn btn-success" />
                    </td>
                    <td class="auto-style35" style="text-align: right; width: 117px;">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" class="btn btn-success" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36" style="width: 505px">&nbsp;</td>
                    <td class="auto-style38" style="width: 171px">&nbsp;</td>
                    <td class="auto-style35" style="width: 117px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style19" style="width: 319px">&nbsp;</td>
                    <td class="auto-style74">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" style="width: 319px">&nbsp;</td>
                    <td class="auto-style74">
                        <asp:Label ID="Label17" runat="server" Text="I don't recieve otp " class="control-label"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False" class="btn btn-link">resend me code again</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" style="width: 319px">&nbsp;</td>
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
                             <asp:Label ID="Label24" runat="server" class="control-label" Text="Dealer Details"></asp:Label>
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
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px">
                             <asp:Label ID="Label19" runat="server" Text="Seller Name" class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtsname" runat="server" class="form-control"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsname" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field">*</asp:RequiredFieldValidator>
                         </td>
                         <td class="auto-style11">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px"></td>
                         <td class="auto-style71" style="width: 136px">
                             <asp:Label ID="Label3" runat="server" Text="Name" class="control-label"></asp:Label>
                         </td>
                         <td class="auto-style70" style="text-align: right; width: 334px;">
                             <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field">*</asp:RequiredFieldValidator>
                         </td>
                         <td class="auto-style11">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label4" runat="server" Text="Age" class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlage" runat="server" class="form-control">
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
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label6" runat="server" Text="Gender" class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlgender" runat="server" class="form-control">
                                 <asp:ListItem Value="Male">Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label11" runat="server" Text="Contact No." class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtcno" runat="server" class="form-control"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcno" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcno" Display="Dynamic" ErrorMessage="Invalid Contact No." Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label5" runat="server" Text="Pincode" class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtpincode" runat="server" class="form-control"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpincode" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" Display="Dynamic" ErrorMessage="Invalid Pin Code" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label8" runat="server" Text="Region" class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlregion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlregion_SelectedIndexChanged" class="form-control">
                             </asp:DropDownList>
                         </td>
                         <td class="auto-style69"></td>
                         <td class="auto-style1">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label7" runat="server" Text="City" class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:DropDownList ID="ddlcity" runat="server" class="form-control">
                             </asp:DropDownList>
                         </td>
                         <td class="auto-style69">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label9" runat="server" Text="Address" class="control-label"></asp:Label>
                         </td>
                         <td style="text-align: right; width: 334px;" class="auto-style70">
                             <asp:TextBox ID="txtaddress" runat="server" class="form-control"></asp:TextBox>
                         </td>
                         <td class="auto-style69" style="padding-left:20px;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style72" style="width: 351px">&nbsp;</td>
                         <td class="auto-style71" style="width: 136px"><asp:Label ID="Label10" runat="server" Text="Profile Picture" class="control-label"></asp:Label>
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
                         <td class="auto-style73" style="width: 348px">&nbsp;</td>
                         <td style="width: 730px; text-align: left">
                             &nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style73" style="width: 348px">&nbsp;</td>
                         <td style="width: 730px; text-align: left">&nbsp;</td>
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
                             <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Cancel" CausesValidation="False" class="btn btn-success" />
                         </td>
                         <td class="auto-style52" style="text-align: right; width: 157px;">
                             <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Next" class="btn btn-success" />
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
        <asp:View ID="View4" runat="server" EnableTheming="True">
            <table style="width:100%;">
                <tr>
                    <td style="width: 450px">&nbsp;</td>
                    <td style="width: 107px">&nbsp;</td>
                    <td style="width: 191px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">
                        <asp:Label ID="Label20" runat="server" Text="provide details  about what  you  are going to sell here" class="control-label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 21px; width: 450px"></td>
                    <td style="height: 21px; width: 107px"></td>
                    <td style="height: 21px; width: 191px"></td>
                    <td style="height: 21px"></td>
                </tr>
                <tr>
                    <td style="height: 21px; width: 450px"></td>
                    <td style="height: 21px; width: 107px">
                        <asp:Label ID="Label21" runat="server" Text="Type" class="control-label"></asp:Label>
                    </td>
                    <td style="height: 21px; text-align: right; width: 191px">
                        <asp:DropDownList ID="ddltype" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddltype_SelectedIndexChanged" class="form-control">
                        </asp:DropDownList>
                    </td>
                    <td style="height: 21px"></td>
                </tr>
            </table><table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:MultiView ID="MultiView2" runat="server">
                            <asp:View ID="View6" runat="server">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 443px">&nbsp;</td>
                                        <td style="width: 299px">&nbsp;</td>
                                        <td style="width: 188px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 443px">&nbsp;</td>
                                        <td style="width: 299px">
                                            <asp:Label ID="lblbrandfor" runat="server" Text="Brands For" class="control-label"></asp:Label>
                                        </td>
                                        <td style="width: 188px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 443px">&nbsp;</td>
                                        <td style="width: 299px">&nbsp;</td>
                                        <td style="width: 188px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 443px">&nbsp;</td>
                                        <td style="width: 299px">
                                            <asp:CheckBox ID="chkselectallbieksorscooties" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" Text="select all" class="control-label" />
                                        </td>
                                        <td style="width: 188px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 443px">&nbsp;</td>
                                        <td style="width: 299px">&nbsp;</td>
                                        <td style="width: 188px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 443px">&nbsp;</td>
                                        <td style="width: 299px">
                                            <asp:CheckBoxList ID="chkbrand" runat="server" class="control-label">
                                            </asp:CheckBoxList>
                                        </td>
                                        <td style="width: 188px">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View7" runat="server">
                                <table style="width:100%;">
                                    <tr>
                                        <td style="height: 21px; width: 444px;"></td>
                                        <td style="height: 21px; width: 248px;"></td>
                                        <td style="height: 21px; width: 295px;"></td>
                                        <td style="height: 21px"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 21px; width: 444px;"></td>
                                        <td style="height: 21px; width: 248px;">
                                            <div>
                                            <asp:Label ID="Label22" runat="server" Text="Brands For Bikes" class="control-label"></asp:Label>
                                                <br /><br />
                                                <asp:CheckBox ID="chkselectallbikes" runat="server" Text="select all" AutoPostBack="True" OnCheckedChanged="chkselectallbikes_CheckedChanged" class="control-label" />
                                            <br /><br />
                                                <asp:CheckBoxList ID="chkbikes" runat="server" OnSelectedIndexChanged="chkbikes_SelectedIndexChanged" class="control-label">
                                            </asp:CheckBoxList>
                                        </div>
                                                </td>
                                        <td style="height: 21px; width: 295px;">
                                            <div style="height:100%;">
                                            <asp:Label ID="Label23" runat="server" Text="Brands For Scooties" class="control-label"></asp:Label>
                                                <br /><br />
                                            <asp:CheckBox ID="chkselectallscooties" runat="server" Text="select all" AutoPostBack="True" OnCheckedChanged="chkselectallscooties_CheckedChanged" class="control-label" />
                                                <br /><br />
                                            <asp:CheckBoxList ID="chkscooties" runat="server" class="control-label">
                                            </asp:CheckBoxList>
                                                </div>
                                        </td>
                                        <td style="height: 21px"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 21px; width: 444px;">&nbsp;</td>
                                        <td style="height: 21px; width: 248px;">&nbsp;</td>
                                        <td style="height: 21px; width: 295px;">&nbsp;</td>
                                        <td style="height: 21px">&nbsp;</td>
                                    </tr>
                                </table>
                                
                            </asp:View>
                        </asp:MultiView>
                    </td>
                    <td>
                        
                    </td>
                </tr>
            </table>
            <table style="width: 100%">
                            <tr>
                                <td style="width: 552px">&nbsp;</td>
                                <td style="width: 135px">&nbsp;</td>
                                <td style="width: 151px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 552px">&nbsp;</td>
                                <td style="text-align: right; width: 135px">
                                    <asp:Button ID="Button10" runat="server" OnClick="Button9_Click" Text="Leave" class="btn btn-success" />
                                </td>
                                <td style="text-align: right; width: 151px">
                                    <asp:Button ID="btregister" runat="server" OnClick="Button8_Click" Text="Register" class="btn btn-success" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 552px">&nbsp;</td>
                                <td style="width: 135px">&nbsp;</td>
                                <td style="width: 151px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
        </asp:View>
         <asp:View ID="View5" runat="server">
             <table style="width: 100%;">
                <tr>
                    <td style="width: 210px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center;" colspan="3">
                        <asp:Label ID="Label12" runat="server" Text="Congratulation, you are sucessufully registers" class="control-label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 210px">&nbsp;</td>
                    <td style="text-align: center">
                        <asp:Label ID="Label18" runat="server" Text="Your username and password has been sent to your registered email address. To login  click  " class="control-label"></asp:Label>
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" class="btn btn-link">here</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
         </asp:View>
    </asp:MultiView>
       
</asp:Content>

