<%@ Page Title="DUMB: Customer Maintenance" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="CustomerMaintenance.aspx.cs" Inherits="CustomerMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <link href="Styles/CustomerMaintenance.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Customer Maintenance</h2>
    <br />
    <br />
    <h3>Customers</h3>
    <br />
    <asp:GridView ID="gvCustomers" runat="server" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsCustomers" PageSize="6" GridLines="None" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="5" DataKeyNames="CustomerID">
        <Columns>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Maroon" />
                <ItemStyle Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Maroon" />
                <ItemStyle Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="State">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Maroon" />
                <ItemStyle Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:TemplateField>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button">
            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            <ItemStyle Width="50px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </asp:CommandField>
        </Columns>
        <PagerStyle CssClass=".Pager" BorderStyle="None" ForeColor="Maroon" HorizontalAlign="Center" />
        <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
        <SelectedRowStyle BackColor="Maroon" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name], [City], [State] FROM [Customer] ORDER BY [Name]"></asp:SqlDataSource>
    <br />
    <h3>Customer Details</h3>
    <br />
    <asp:DetailsView ID="dvCustomers" runat="server" HorizontalAlign="Center" AutoGenerateRows="False" DataKeyNames="CustomerID" DataSourceID="sdsCustomerDetails" CellPadding="5" CssClass="Grid" GridLines="None" OnItemDeleted="dvCustomers_ItemDeleted" OnItemInserted="dvCustomers_ItemInserted" OnItemUpdated="dvCustomers_ItemUpdated">
        <Fields>
            <asp:TemplateField HeaderText="Customer ID" SortExpression="CustomerID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddCustomerID" runat="server" Text='<%# Bind("CustomerID") %>' ValidationGroup="vgCustomerID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddCustomerID" runat="server" ControlToValidate="txtAddCustomerID" Display="Dynamic" ErrorMessage="Customer ID is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvAddCustomerID" runat="server" ControlToValidate="txtAddCustomerID" Display="Dynamic" ErrorMessage="Customer ID must be a positive number." Operator="GreaterThanEqual" Type="Integer" ValidationGroup="vgCustomerDetails" ValueToCompare="0">*</asp:CompareValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddName" runat="server" Text='<%# Bind("Name") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddName" runat="server" ControlToValidate="txtAddName" Display="Dynamic" ErrorMessage="Name is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddAddress" runat="server" Text='<%# Bind("Address") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddAddress" runat="server" ControlToValidate="txtAddAddress" Display="Dynamic" ErrorMessage="Address is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddCity" runat="server" Text='<%# Bind("City") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddCity" runat="server" ControlToValidate="txtAddCity" Display="Dynamic" ErrorMessage="City is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="State">
                <EditItemTemplate>
                    <asp:TextBox ID="txtState" runat="server" Text='<%# Bind("State") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" Display="Dynamic" ErrorMessage="State is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddState" runat="server" Text='<%# Bind("State") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddState" runat="server" ControlToValidate="txtAddState" Display="Dynamic" ErrorMessage="State is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Zip Code" SortExpression="ZipCode">
                <EditItemTemplate>
                    <asp:TextBox ID="txtZipCode" runat="server" Text='<%# Bind("ZipCode") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" ControlToValidate="txtZipCode" Display="Dynamic" ErrorMessage="Zip Code is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revZipCode" runat="server" ControlToValidate="txtZipCode" Display="Dynamic" ErrorMessage="Zip Code must match #####(-####) format." ValidationExpression="\d{5}(-\d{4})?" ValidationGroup="vgCustomerDetails">*</asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddZipCode" runat="server" Text='<%# Bind("ZipCode") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddZipCode" runat="server" ControlToValidate="txtAddZipCode" Display="Dynamic" ErrorMessage="Zip Code is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revAddZipCode" runat="server" ControlToValidate="txtAddZipCode" Display="Dynamic" ErrorMessage="Zip Code must match #####(-####) format." ValidationExpression="\d{5}(-\d{4})?" ValidationGroup="vgCustomerDetails">*</asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone Number is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone number must match (###)(-)###-#### format." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="vgCustomerDetails">*</asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddPhone" runat="server" Text='<%# Bind("Phone") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddPhone" runat="server" ControlToValidate="txtAddPhone" Display="Dynamic" ErrorMessage="Phone number is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revAddPhone" runat="server" ControlToValidate="txtAddPhone" Display="Dynamic" ErrorMessage="Phone number must match (###)(- )###-#### format." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="vgCustomerDetails">*</asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email must contain a &quot;@&quot; and a &quot;.&quot;." ValidationGroup="vgCustomerDetails" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtAddEmail" runat="server" Text='<%# Bind("Email") %>' ValidationGroup="vgCustomerDetails"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddEmail" runat="server" ControlToValidate="txtAddEmail" Display="Dynamic" ErrorMessage="Email is required." ValidationGroup="vgCustomerDetails">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revAddEmail" runat="server" ControlToValidate="txtAddEmail" Display="Dynamic" ErrorMessage="Email addresses must contain a &quot;@&quot; and a &quot;.&quot;." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgCustomerDetails">*</asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" />
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" ShowDeleteButton="True" ButtonType="Button" ValidationGroup="vgCustomerDetails" />
        </Fields>
        <HeaderStyle Font-Bold="False" />
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="sdsCustomerDetails" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerID] = ?)" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [Customer] ([CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Customer] SET [Name] = ?, [Address] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [Phone] = ?, [Email] = ? WHERE [CustomerID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvCustomers" Name="CustomerID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ValidationSummary ID="vsCustomerDetails" runat="server" DisplayMode="List" HeaderText="Please correct the following issues:" ValidationGroup="vgCustomerDetails" />
    <br />
    <br />
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <br />
</asp:Content>

