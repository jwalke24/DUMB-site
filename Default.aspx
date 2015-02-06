<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DUMB: Home</title>
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
                <li><a href="CustomerList.aspx">Customer List</a></li>
                <li><a href="CustomerFeedback.aspx">Customer Feedback</a></li>
            </ul>
        </nav>
        <form id="formHome" runat="server">
            <h2>Home</h2>
            <br/>
            <br/>
            <p>Welcome to the site for the Digital Upscale Manager for Ballgames. Please click a link above to get started!</p>
        </form>
        <footer class="headerfooter">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><span>|</span></li>
                <li><a href="CustomerList.aspx">Customer List</a></li>
                <li><span>|</span></li>
                <li><a href="CustomerFeedback.aspx">Customer Feedback</a></li>
            </ul>
            <br/>
            <span id="copyright">Copyright &copy; 2015 &middot; All Rights Reserved</span>
        </footer>
    </div>
</body>
</html>
