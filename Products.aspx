<%@ Page Title="DUMB: Products" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <link href="Styles/Products.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Products</h2>
    <br />
    <br />
    <h3>Product Details</h3>
    <br />
<asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="SoftwareID" DataSourceID="sdsProducts" HorizontalAlign="Center" GridLines="None" CssClass="Grid" OnRowDeleted="gvProducts_RowDeleted" OnRowUpdated="gvProducts_RowUpdated">
    <Columns>
        <asp:TemplateField HeaderText="Software ID" SortExpression="SoftwareID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("SoftwareID") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("SoftwareID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name" SortExpression="Name">
            <EditItemTemplate>
                <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>' ValidationGroup="vgProducts"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is required." ValidationGroup="vgProducts">*</asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Version" SortExpression="Version">
            <EditItemTemplate>
                <asp:TextBox ID="txtVersion" runat="server" Text='<%# Bind("Version") %>' ValidationGroup="vgProducts"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvVersion" runat="server" ControlToValidate="txtVersion" Display="Dynamic" ErrorMessage="Version is required." ValidationGroup="vgProducts">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvVersion" runat="server" ControlToValidate="txtVersion" Display="Dynamic" ErrorMessage="Version must be greater than or equal to 1.0." Operator="GreaterThanEqual" Type="Double" ValidationGroup="vgProducts" ValueToCompare="1.0">*</asp:CompareValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Release Date" SortExpression="ReleaseDate">
            <EditItemTemplate>
                <asp:TextBox ID="txtReleaseDate" runat="server" Text='<%# Bind("ReleaseDate") %>' ValidationGroup="vgProducts"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvReleaseDate" runat="server" ControlToValidate="txtReleaseDate" Display="Dynamic" ErrorMessage="Release date is required." ValidationGroup="vgProducts">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvReleaseDate" runat="server" ControlToValidate="txtReleaseDate" Display="Dynamic" ErrorMessage="Release date must match MM/dd/yyyy hh:mm:ss AM/PM format." OnServerValidate="cvReleaseDate_ServerValidate" ValidationGroup="vgProducts">*</asp:CustomValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="vgProducts" ButtonType="Button" />
    </Columns>
    <HeaderStyle Font-Bold="True" />
</asp:GridView>
<br />
<asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" DeleteCommand="DELETE FROM [Software] WHERE [SoftwareID] = ?" InsertCommand="INSERT INTO [Software] ([SoftwareID], [Name], [Version], [ReleaseDate]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT [SoftwareID], [Name], [Version], [ReleaseDate] FROM [Software] ORDER BY [SoftwareID]" UpdateCommand="UPDATE [Software] SET [Name] = ?, [Version] = ?, [ReleaseDate] = ? WHERE [SoftwareID] = ?">
    <DeleteParameters>
        <asp:Parameter Name="SoftwareID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="SoftwareID" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Version" Type="Decimal" />
        <asp:Parameter Name="ReleaseDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Version" Type="Decimal" />
        <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        <asp:Parameter Name="SoftwareID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:ValidationSummary ID="vsProducts" runat="server" DisplayMode="List" HeaderText="Please correct the following issues:" ValidationGroup="vgProducts" />
    <br/>
    <br/>
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <br/>
    <br/>
    <h3>Add A Product</h3>
    <br/>
    <asp:Label ID="lblAddSoftwareID" runat="server" Text="Software ID: " Width="100px"></asp:Label><asp:TextBox ID="txtAddSoftwareID" runat="server" ValidationGroup="vgAddProduct" Width="150px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvAddSoftwareID" runat="server" ControlToValidate="txtAddSoftwareID" Display="Dynamic" ErrorMessage="Software ID is required." ValidationGroup="vgAddProduct">*</asp:RequiredFieldValidator>
    <br/>
    <asp:Label ID="lblAddName" runat="server" Text="Name: " Width="100px"></asp:Label><asp:TextBox ID="txtAddName" runat="server" ValidationGroup="vgAddProduct" Width="150px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvAddName" runat="server" ControlToValidate="txtAddName" Display="Dynamic" ErrorMessage="Name is required." ValidationGroup="vgAddProduct">*</asp:RequiredFieldValidator>
    <br/>
    <asp:Label ID="lblAddVersion" runat="server" Text="Version: " Width="100px"></asp:Label><asp:TextBox ID="txtAddVersion" runat="server" ValidationGroup="vgAddProduct" Width="150px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvAddVersion" runat="server" ControlToValidate="txtAddVersion" Display="Dynamic" ErrorMessage="Version is required." ValidationGroup="vgAddProduct">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvAddVersion" runat="server" ControlToValidate="txtAddVersion" Display="Dynamic" ErrorMessage="Version must be greater than or equal to 1.0." Operator="GreaterThanEqual" Type="Double" ValidationGroup="vgAddProduct" ValueToCompare="1.0">*</asp:CompareValidator>
    <br/>
    <asp:Label ID="lblAddReleaseDate" runat="server" Text="Release Date: " Width="100px"></asp:Label><asp:TextBox ID="txtAddReleaseDate" runat="server" ValidationGroup="vgAddProduct" Width="150px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvAddReleaseDate" runat="server" ControlToValidate="txtAddReleaseDate" Display="Dynamic" ErrorMessage="Release date is required." ValidationGroup="vgAddProduct">*</asp:RequiredFieldValidator>
    <asp:CustomValidator ID="cvAddReleaseDate" runat="server" ControlToValidate="txtAddReleaseDate" Display="Dynamic" ErrorMessage="Release Date must match MM/dd/yyyy HH:mm:ss AM/PM format." OnServerValidate="cvReleaseDate_ServerValidate" ValidationGroup="vgAddProduct">*</asp:CustomValidator>
    <br/>
    <br/>
    <asp:Button ID="btnAddProduct" runat="server" Text="Add Product" ValidationGroup="vgAddProduct" OnClick="btnAddProduct_Click" />
    <br/>
    <br/>
    <asp:ValidationSummary ID="vsAddProduct" runat="server" DisplayMode="List" HeaderText="Please correct the following issues:" ValidationGroup="vgAddProduct" />
</asp:Content>

