<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DUMB: Contact List</title>
    <link href="App_Themes/MainStyles.css" rel="stylesheet" />
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
        <form id="formContactList" runat="server">
            <h2>Contact List</h2>
            <br/>
            <br />
            <asp:Label ID="lblContactList" runat="server" Text="Customer Contact List"></asp:Label>
            <br />
            <asp:ListBox ID="lbContactList" runat="server" Width="30em">
            </asp:ListBox>
            <br />
            <br />
            <asp:Button ID="btnAdditionalCustomers" runat="server" OnClick="btnAdditionalCustomers_Click" Text="Select Additional Customers" />
&nbsp;&nbsp;
            <asp:Button ID="btnRemoveCustomer" runat="server" OnClick="btnRemoveCustomer_Click" Text="Remove Customer" />
&nbsp;&nbsp;
            <asp:Button ID="btnClearCustomers" runat="server" OnClick="btnClearCustomers_Click" Text="Clear List" />
            <br/>
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
