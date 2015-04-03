<%@ Page Title="DUMB: Incident Display" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="IncidentDisplay" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" Runat="server" >
    <link href="Styles/IncidentDisplay.css" rel="stylesheet" />
    </asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Incident Display</h2>
    <br/>
    <br/>
    <asp:DropDownList ID="ddlCustomers" runat="server" DataSourceID="sdsCustomers" DataTextField="Name" DataValueField="CustomerID" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customer]"></asp:SqlDataSource>
    <br/>
    <br/>
    <asp:DataList ID="dlIncidents" runat="server" DataKeyField="CustomerID" DataSourceID="sdsIncidents" HorizontalAlign="Center" CellPadding="0">
        <HeaderStyle HorizontalAlign="Left" Width="600px" />
        <HeaderTemplate>
            <table id="tableHeaders">
                <tr>
                    <td>
                        <asp:Label ID="lblProductHeader" runat="server" Text="Product/Incident" Width="150px" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblTechnicianHeader" runat="server" Text="Technician Name" Width="150px" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDateOpenedHeader" runat="server" Text="Date Opened" Width="150px" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDateClosedHeader" runat="server" Text="Date Closed" Width="150px" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle HorizontalAlign="Left" />
        <ItemTemplate>
            <table id="tableItems">
                <tr>
                    <td><asp:Label ID="lblProduct" runat="server" Text='<%# Eval("[Product Name]") %>' Width="150px"></asp:Label></td>
                    <td><asp:Label ID="lblTechnician" runat="server" Text='<%# Eval("[Technician Name]") %>' Width="150px"></asp:Label></td>
                    <td><asp:Label ID="lblDateOpened" runat="server" Text='<%# Eval("DateOpened") %>' Width="150px"></asp:Label></td>
                    <td><asp:Label ID="lblDateClosed" runat="server" Text='<%# Eval("DateClosed") %>' Width="150px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="4"><asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>' Width="600px"></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="sdsIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT Feedback.CustomerID, Feedback.DateOpened, Feedback.DateClosed, Feedback.Description, Support.Name AS [Technician Name], Software.Name AS [Product Name] FROM ((Feedback INNER JOIN Support ON Feedback.SupportID = Support.SupportID) INNER JOIN Software ON Feedback.SoftwareID = Software.SoftwareID) WHERE (Feedback.CustomerID = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCustomers" Name="?" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

