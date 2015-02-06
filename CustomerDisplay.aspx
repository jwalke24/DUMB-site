<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerDisplay.aspx.cs" Inherits="CustomerDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DUMB: Customer Display</title>
    <link href="App_Themes/MainStyles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div id="content">
        <header class="headerfooter">
            <h1 id ="companyName">Digital Upscale Manager for Ballgames</h1>
            <h3 id="companySlogan">"Managing Ballgames with Technology"</h3>
        </header>
        <nav>
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="CustomerDisplay.aspx">Customer Display</a></li>
                <li><a href="CustomerFeedback.aspx">Customer Feedback</a></li>
            </ul>
        </nav>
        <form id="formCustomerList" runat="server">
            <h2>Customer Display</h2>
            <br/>
            <br/>
            <asp:Label ID="lblSelectCustomer" runat="server" Text="Please select a customer:"></asp:Label>
            <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sqlCustomers" DataTextField="Name" DataValueField="CustomerID">
            </asp:DropDownList>
        
            <asp:SqlDataSource ID="sqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" 
                ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" 
                SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customer] ORDER BY [CustomerID]"></asp:SqlDataSource>
            <br />
            <br />
            <h3>Customer Contact Details:</h3>
            <asp:Label ID="lblName" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblAddress" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblCity" runat="server"></asp:Label>
            <asp:Label ID="lblState" runat="server"></asp:Label>
            <asp:Label ID="lblZipCode" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblPhone" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        
            <br />
            <br />
            <br />
            <asp:Button ID="btnViewContacts" runat="server" OnClick="btnViewContacts_Click" Text="View Contact List" />
            &nbsp;&nbsp;
            <asp:Button ID="btnAddContacts" runat="server" OnClick="btnAddContacts_Click" Text="Add To Contacts" />
        
        </form>
        <footer class="headerfooter">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><span>|</span></li>
                <li><a href="CustomerDisplay.aspx">Customer Display</a></li>
                <li><span>|</span></li>
                <li><a href="CustomerFeedback.aspx">Customer Feedback</a></li>
            </ul>
            <br/>
            <span id="copyright">Copyright &copy; 2015 &middot; All Rights Reserved</span>
        </footer>
    </div>
</body>
</html>
