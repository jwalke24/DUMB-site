<%@ Page Title="DUMB: Customer Display" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="CustomerDisplay.aspx.cs" Inherits="CustomerDisplay" %>

<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Customer Display</h2>
    <br/>
    <br/>
    <asp:Label ID="lblSelectCustomer" runat="server" Text="Please select a customer:"></asp:Label>
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sqlCustomers" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>

    <asp:SqlDataSource ID="sqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>"
                        ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>"
                        SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customer] ORDER BY [CustomerID]">
    </asp:SqlDataSource>
    <br/>
    <br/>
    <h3>Customer Contact Details:</h3>
    <asp:Label ID="lblName" runat="server"></asp:Label>
    <br/>
    <asp:Label ID="lblAddress" runat="server"></asp:Label>
    <br/>
    <asp:Label ID="lblCity" runat="server"></asp:Label>
    <asp:Label ID="lblState" runat="server"></asp:Label>
    <asp:Label ID="lblZipCode" runat="server"></asp:Label>
    <br/>
    <asp:Label ID="lblPhone" runat="server"></asp:Label>
    <br/>
    <asp:Label ID="lblEmail" runat="server"></asp:Label>

    <br/>
    <br/>
    <br/>
    <asp:Button ID="btnViewContacts" runat="server" OnClick="btnViewContacts_Click" Text="View Contact List"/>
    &nbsp;&nbsp;
    <asp:Button ID="btnAddContacts" runat="server" OnClick="btnAddContacts_Click" Text="Add To Contacts"/>

    <br/>
    <br/>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
</asp:Content>