<%@ Page Title="" Language="C#" MasterPageFile="~/DealerModule/DealerMasterPage.master" AutoEventWireup="true" CodeFile="ViewStock.aspx.cs" Inherits="DealerModule_ViewStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">

            <h4>Stock Quantity</h4>
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-hover">
            </asp:GridView>
            <asp:Label ID="lblnodatafound" runat="server" class="control-label" Text="NO DATA FOUND" Visible="False"></asp:Label>
        </asp:View>
        <asp:View ID="View2" runat="server"></asp:View>
    </asp:MultiView>
</asp:Content>

