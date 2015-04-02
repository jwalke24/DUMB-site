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
        <asp:TemplateField HeaderText="SoftwareID" SortExpression="SoftwareID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("SoftwareID") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("SoftwareID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name" SortExpression="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Version" SortExpression="Version">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

</asp:Content>

