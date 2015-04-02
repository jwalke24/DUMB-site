<%@ Page Title="" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="IncidentDisplay" %>

<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Incident Display</h2>
    <br/>
    <br/>
    <asp:DropDownList ID="ddlCustomers" runat="server" DataSourceID="sdsCustomers" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customer]"></asp:SqlDataSource>
</asp:Content>

