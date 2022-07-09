<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="GeneralModule_userregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="View1" runat="server">

            <div class="unix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>Register to Administration</h4>
                                    <div class="form-group">
                                        <label>User Name</label>
                                        <input type="email" class="form-control" placeholder="User Name">
                                    </div>
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <asp:TextBox ID="txtemailid" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red" ToolTip="required field">*</asp:RequiredFieldValidator>
                                        </small></span>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            Agree the terms and policy 
                                        </label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button3" class="btn btn-success" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Cancel" /></div>
                                        <div class="col-6">
                                            <asp:Button ID="Button1" class="btn btn-success" runat="server" OnClick="Button1_Click" Text="Next" /></div>
                                    </div>
                                    <div class="social-login-content">
                                        <div class="social-button">
                                            <%--  <button type="button" class="btn btn-primary bg-facebook btn-flat btn-addon m-b-10"><i class="ti-facebook"></i>Register with facebook</button>
                                        <button type="button" class="btn btn-primary bg-twitter btn-flat btn-addon m-t-10"><i class="ti-twitter"></i>Register with twitter</button>--%>
                                        </div>
                                    </div>
                                    <div class="register-link m-t-15 text-center">
                                        <p>Already have account ? <a href="#">Sign in</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 232px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 232px">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label13" runat="server" class="control-label" Text="Enter the OTP you  recieved via  "></asp:Label>
                        <asp:LinkButton ID="lbtuseremailid" runat="server" CausesValidation="False" class="btn btn-link" OnClick="lbtuseremailid_Click">user emai id</asp:LinkButton>
                        <asp:Label ID="Label16" runat="server" class="control-label" Text=" . To change your email address click "></asp:Label>
                        <asp:LinkButton ID="lbthere" runat="server" CausesValidation="False" class="btn btn-link" OnClick="LinkButton2_Click">here </asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 232px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style67" style="width: 388px">&nbsp;</td>
                    <td class="auto-style66" style="width: 131px">&nbsp;</td>
                    <td style="width: 223px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 388px">&nbsp;</td>
                    <td class="auto-style66" style="width: 131px">&nbsp;</td>
                    <td style="width: 223px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 388px"></td>
                    <td class="auto-style66" style="width: 131px">
                        <asp:Label ID="Label2" class="control-label" runat="server" Text="Enter OTP"></asp:Label>
                    </td>
                    <td style="width: 223px; height: 22px; text-align: right;">
                        <asp:TextBox ID="txtotp" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td style="padding-left: 20px;" class="auto-style65">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtotp" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtotp" Display="Dynamic" ErrorMessage="Invalid Code" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
                    </td>
                    <td style="padding-left: 20px;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style67" style="width: 388px">&nbsp;</td>
                    <td class="auto-style66" style="width: 131px">&nbsp;</td>
                    <td style="width: 223px">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style36" style="width: 457px">&nbsp;</td>
                    <td class="auto-style38" style="width: 171px">&nbsp;</td>
                    <td class="auto-style35" style="width: 117px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36" style="width: 457px">&nbsp;</td>
                    <td class="auto-style38" style="text-align: right; width: 171px;">
                        <asp:Button ID="Button5" class="btn btn-success" runat="server" CausesValidation="False" OnClick="Button5_Click" Text="Cancel" />
                    </td>
                    <td class="auto-style35" style="text-align: right; width: 117px;">
                        <asp:Button ID="Button2" class="btn btn-success" runat="server" OnClick="Button2_Click" Text="Next" />
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
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style19" style="width: 225px">&nbsp;</td>
                    <td class="auto-style74">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" style="width: 225px">&nbsp;</td>
                    <td class="auto-style74">
                        <asp:Label ID="Label17" class="control-label" runat="server" Text="I don't recieve otp "></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" class="btn btn-link" CausesValidation="False">resend me code again</asp:LinkButton>
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
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style72" style="width: 351px">&nbsp;</td>
                    <td class="auto-style71" style="width: 136px">&nbsp;</td>
                    <td class="auto-style70" style="width: 334px">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style72" colspan="5" style="text-align: center;">
                        <asp:Label ID="Label19" runat="server" class="control-label" Text="User Details"></asp:Label>
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
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label3" runat="server" Text="Name" class="control-label"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 334px;" class="auto-style70">
                        <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style69" style="padding-left: 20px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style72" style="width: 351px">&nbsp;</td>
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label4" runat="server" Text="Age" class="control-label"></asp:Label>
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
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label6" runat="server" Text="Gender" class="control-label"></asp:Label>
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
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label11" runat="server" Text="Contact No." class="control-label"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 334px;" class="auto-style70">
                        <asp:TextBox ID="txtcno" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style69" style="padding-left: 20px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcno" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcno" Display="Dynamic" ErrorMessage="Invalid Contact No." Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td class="auto-style72" style="width: 351px">&nbsp;</td>
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label5" runat="server" Text="Pincode" class="control-label"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 334px;" class="auto-style70">
                        <asp:TextBox ID="txtpincode" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style69" style="padding-left: 20px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpincode" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" Display="Dynamic" ErrorMessage="Invalid Pin Code" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style72" style="width: 351px"></td>
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label8" runat="server" Text="Region" class="control-label"></asp:Label>
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
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label7" runat="server" Text="City" class="control-label"></asp:Label>
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
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label9" runat="server" Text="Address" class="control-label"></asp:Label>
                    </td>
                    <td style="text-align: right; width: 334px;" class="auto-style70">
                        <asp:TextBox ID="txtaddress" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style69" style="padding-left: 20px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Names="sans-serif" Font-Size="13px" ForeColor="Red" ToolTip="required field" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style72" style="width: 351px">&nbsp;</td>
                    <td class="auto-style71" style="width: 136px">
                        <asp:Label ID="Label10" runat="server" Text="Profile Picture" class="control-label"></asp:Label>
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
            <table style="width: 100%;">
                <tr>
                    <td style="width: 540px">&nbsp;</td>
                    <td class="auto-style41" style="width: 130px">&nbsp;</td>
                    <td class="auto-style47" style="width: 157px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 540px">&nbsp;</td>
                    <td class="auto-style53" style="text-align: right; width: 130px;">
                        <asp:Button ID="Button6" class="btn btn-success" runat="server" OnClick="Button6_Click" Text="Leave" CausesValidation="False" />
                    </td>
                    <td class="auto-style52" style="text-align: right; width: 157px;">
                        <asp:Button ID="btregister" class="btn btn-success" runat="server" OnClick="Button4_Click" Text="Register" />
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
                        <asp:Label ID="Label12" runat="server" Text="Congratulation, you are sucessufully registers" class="control-label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 210px">&nbsp;</td>
                    <td style="text-align: center">
                        <asp:Label ID="Label18" class="control-label" runat="server" Text="Your username and password has been sent to your registered email address. To login  click  "></asp:Label>
                        <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-link" OnClick="LinkButton3_Click">here</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

