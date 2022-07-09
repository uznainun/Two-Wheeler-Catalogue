<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralModule/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="GetUserDetails.aspx.cs" Inherits="GeneralModule_GetUserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="u nix-login">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="login-content">
                                <div class="login-logo">
                                    <a href="index.html"><span>Focus</span></a>
                                </div>
                                <div class="login-form">
                                    <h4>Fillup Booking Details</h4>

                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
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
                                        <asp:TextBox ID="txtcno" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcno" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcno" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </small></span>
                                    </div>

                                    <div class="form-group">
                                        <label>Email address</label>
                                        <asp:TextBox TextMode="Email" ID="txtemailid" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailid" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>

                                    <div class="form-group">
                                        <label>Region</label>
                                        <asp:DropDownList ID="ddlregion" runat="server" AutoPostBack="True" class="form-control" OnSelectedIndexChanged="ddlregion_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>City</label>
                                        <asp:DropDownList ID="ddlcity" runat="server" class="form-control">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>Address</label>
                                        <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                                        <span class="help-block"><small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator></small></span>
                                    </div>


                                    <asp:Button ID="Button7" runat="server" class="btn btn-success" OnClick="Button7_Click" Text="book" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">


            <div class="alert alert-success">
                <asp:Label ID="Label18" runat="server" class="control-label" Text="Congratulation, your product is  sucessfully booked .goto  home page click  "></asp:Label>
                <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-link" OnClick="LinkButton3_Click">here</asp:LinkButton>
            </div>

        </asp:View>
    </asp:MultiView>

</asp:Content>


