<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackComplete.aspx.cs" Inherits="FeedbackComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DUMB: Feedback Complete</title>
    <link href="Styles/MainStyles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="content">
    <header class="headerfooter">
        <h1 id="companyName">Digital Upscale Manager for Ballgames</h1>
        <h3 id="companySlogan">"Managing Ballgames with Technology"</h3>
    </header>
    <nav>
        <ul>
            <li>
                <a href="Default.aspx">Home</a>
            </li>
            <li>
                <a href="CustomerDisplay.aspx">Customer Display</a>
            </li>
            <li>
                <a href="CustomerFeedback.aspx">Customer Feedback</a>
            </li>
        </ul>
    </nav>
    <form id="formFeedbackComplete" runat="server">
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
    <footer class="headerfooter">
        <ul>
            <li>
                <a href="Default.aspx">Home</a>
            </li>
            <li>
                <span>|</span></li>
            <li>
                <a href="CustomerDisplay.aspx">Customer Display</a>
            </li>
            <li>
                <span>|</span></li>
            <li>
                <a href="CustomerFeedback.aspx">Customer Feedback</a>
            </li>
        </ul>
        <br/>
        <span id="copyright">Copyright &copy; 2015 &middot; All Rights Reserved</span>
    </footer>
</div>
</body>
</html>