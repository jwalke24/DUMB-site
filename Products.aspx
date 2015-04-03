<%@ Page Title="" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <link href="Styles/Products.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Products</h2>
    <br/>
    <br/>

<asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="SoftwareID" DataSourceID="sdsProducts" HorizontalAlign="Center" GridLines="None" CssClass="Grid">
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
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="vgProducts" />
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
<br />
    <asp:ValidationSummary ID="vsProducts" runat="server" DisplayMode="List" HeaderText="Please correct the following issues:" ValidationGroup="vgProducts" />
</asp:Content>

