<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="DealerRegistration.aspx.cs" Inherits="GeneralModule_DRegistration" %>

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
                                    <h4>Dealer Registration</h4>
                                    <div class="form-group">
                                        <label>Email Address</label>
                                        <asp:TextBox TextMode="Email" ID="txtemailid" runat="server" class="form-control" placeholder="User Name"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Cancel" class="btn btn-danger" Width="100px" />
                                        </div>
                                        <div class="col-6" style="text-align: right">
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" class="btn btn-success" Width="100px" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>

        <asp:View ID="View2" runat="server">

            <div class="alert alert-success">
                Enter the OTP you  recieved on
                <asp:LinkButton ID="lbtuseremailid" runat="server" CausesValidation="False" class="col-form-label" ForeColor="blue" OnClick="lbtuseremailid_Click">user emai id</asp:LinkButton>
            </div>
            <div class="alert alert-danger">
                To change your email address click 
                <asp:LinkButton ID="lbthere" runat="server" CausesValidation="False" class="col-form-label" ForeColor="blue" OnClick="LinkButton2_Click">here </asp:LinkButton>
            </div>

            <div class="unix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>Dealer Registration</h4>
                                    <div class="form-group">
                                        <label>Enter OTP</label>
                                        <asp:TextBox ID="txtotp" runat="server" class="form-control"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtotp" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button5" runat="server" CausesValidation="False" OnClick="Button5_Click" Text="Cancel" class="btn btn-danger" Width="100px" />
                                        </div>
                                        <div class="col-6" style="text-align: right">
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" class="btn btn-success" Width="100px" />
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="alert alert-secondary">
                Did not received OTP?
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="blue" CausesValidation="False" class="col-form-label">resend me code again</asp:LinkButton>
            </div>

        </asp:View>
        <asp:View ID="View3" runat="server">
            <div class="unix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>Dealer Details</h4>
                                    <div class="form-group">
                                        <label>Seller Name</label>
                                        <asp:TextBox ID="txtsname" runat="server" class="form-control"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsname" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>

                                    <div class="form-group">
                                        <label>Name</label>
                                        <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>


                                    <div class="form-group">
                                        <label>Age</label>
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
                                    </div>



                                    <div class="form-group">
                                        <label>Gender</label>
                                        <asp:DropDownList ID="ddlgender" runat="server" class="form-control">
                                            <asp:ListItem Value="Male">Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Phone Number</label>
                                        <asp:TextBox ID="txtcno" runat="server" class="form-control"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcno" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcno" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </small></span>
                                    </div>

                                    <div class="form-group">
                                        <label>Pincode</label>
                                        <asp:TextBox ID="txtpincode" runat="server" class="form-control"></asp:TextBox>

                                        <span class="help-block"><small>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpincode" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </small></span>
                                    </div>



                                    <div class="form-group">
                                        <label>Region</label>
                                        <asp:DropDownList ID="ddlregion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlregion_SelectedIndexChanged" class="form-control">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>City</label>
                                        <asp:DropDownList ID="ddlcity" runat="server" class="form-control">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>Address</label>
                                        <asp:TextBox ID="txtaddress" runat="server" class="form-control"></asp:TextBox>

                                        <span class="help-block"><small>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </small></span>
                                    </div>

                                    <div class="form-group">
                                        <label>Profile Picture</label>
                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button6" runat="server" CausesValidation="False" OnClick="Button6_Click" Text="Cancel" class="btn btn-danger" Width="100px" />
                                        </div>
                                        <div class="col-6" style="text-align: right">
                                            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Next" class="btn btn-success" Width="100px" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </asp:View>
        <asp:View ID="View4" runat="server" EnableTheming="True">
            <div class="unix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>provide details  about what  you  are going to sell here</h4>

                                    <div class="form-group">
                                        <label>Two Wheeler Type</label>
                                        <asp:DropDownList ID="ddltype" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddltype_SelectedIndexChanged" class="form-control">
                                        </asp:DropDownList>
                                    </div>

                                    <asp:MultiView ID="MultiView2" runat="server">
                                        <asp:View ID="View6" runat="server">
                                            <div class="">
                                                <label>
                                                    <asp:Label ID="lblbrandfor" runat="server" Text="Brands For" class="btn btn-primary"></asp:Label></label>
                                                <asp:CheckBox ID="chkselectallbieksorscooties" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" Text="select all" class="form-control" />
                                                <asp:CheckBoxList ID="chkbrand" runat="server" class="table table-striped table-hover">
                                                </asp:CheckBoxList>
                                            </div>
                                        </asp:View>
                                        <asp:View ID="View7" runat="server">
                                            <div class="">
                                                <label>
                                                    <asp:Label ID="Label22" runat="server" Text="Brands For Bikes" class="btn btn-warning"></asp:Label></label>
                                                <asp:CheckBox ID="chkselectallbikes" runat="server" Text="select all" AutoPostBack="True" OnCheckedChanged="chkselectallbikes_CheckedChanged" class="form-control" />
                                                <asp:CheckBoxList ID="chkbikes" runat="server" OnSelectedIndexChanged="chkbikes_SelectedIndexChanged" class="table table-striped table-hover">
                                                </asp:CheckBoxList>
                                            </div>

                                            <div class="">
                                                <label>
                                                    <asp:Label ID="Label23" runat="server" Text="Brands For Scooties" class="btn btn-primary"></asp:Label></label>
                                                <asp:CheckBox ID="chkselectallscooties" runat="server" Text="select all" AutoPostBack="True" OnCheckedChanged="chkselectallscooties_CheckedChanged" class="form-control" />
                                                <asp:CheckBoxList ID="chkscooties" runat="server" class="table table-striped table-hover">
                                                </asp:CheckBoxList>
                                            </div>
                                        </asp:View>
                                    </asp:MultiView>

                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="Button10" runat="server" CausesValidation="False" OnClick="Button9_Click" Text="Cancel" class="btn btn-danger" Width="100px" />
                                        </div>
                                        <div class="col-6" style="text-align: right">
                                            <asp:Button ID="btregister" runat="server" OnClick="Button8_Click" Text="Register" class="btn btn-success" Width="100px" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <div class="alert alert-success">Congratulation, you are sucessufully registered, Your username and password will be sent to you  via your  registered email address, after admin aproves your request. To Login click <a href="Login.aspx">here</a></div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

