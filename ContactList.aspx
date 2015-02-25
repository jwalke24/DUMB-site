<%@ Page Title="DUMB: Contact List" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>

<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Contact List</h2>
    <br/>
    <br/>
    <asp:Label ID="lblContactList" runat="server" Text="Customer Contact List"></asp:Label>
    <br/>
    <asp:ListBox ID="lbContactList" runat="server" Width="30em">
    </asp:ListBox>
    <br/>
    <br/>
    <asp:Button ID="btnAdditionalCustomers" runat="server" OnClick="btnAdditionalCustomers_Click" Text="Select Additional Customers"/>
    &nbsp;&nbsp;
    <asp:Button ID="btnRemoveCustomer" runat="server" OnClick="btnRemoveCustomer_Click" Text="Remove Customer"/>
    &nbsp;&nbsp;
    <asp:Button ID="btnClearCustomers" runat="server" OnClick="btnClearCustomers_Click" Text="Clear List"/>
    <br/>
</asp:Content>