<%@ Page Title="DUMB: Customer Maintenance" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="CustomerMaintenance.aspx.cs" Inherits="CustomerMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <link href="Styles/CustomerMaintenance.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Customer Maintenance</h2>
    <br />
    <br />
    <asp:GridView ID="gvCustomers" runat="server" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsCustomers" PageSize="6" CssClass="Grid" GridLines="None" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
        <Columns>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                <ItemStyle Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                <ItemStyle Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="State">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                <ItemStyle Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:CommandField ShowSelectButton="True">
            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            <ItemStyle Width="50px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:CommandField>
        </Columns>
        <PagerStyle CssClass=".Pager" BorderStyle="None" />
        <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
        <SelectedRowStyle BackColor="Maroon" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT [Name], [City], [State] FROM [Customer] ORDER BY [Name]"></asp:SqlDataSource>
</asp:Content>

