<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerFeedback.aspx.cs" Inherits="CustomerFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DUMB: Customer Feedback</title>
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
                <li><a href="CustomerList.aspx">Customer List</a></li>
                <li><a href="CustomerFeedback.aspx">Customer Feedback</a></li>
            </ul>
        </nav>
        <form id="form1" runat="server">
            <h2>Customer Feedback</h2>
            <br/>
            <br/>
            <br />
            <asp:Label ID="lblCustomerId" runat="server" Text="Customer ID:"></asp:Label>
            <asp:TextBox ID="tbCustomerId" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblClosedFeedback" runat="server" Text="Closed Feedback Items:"></asp:Label>
            <asp:ListBox ID="lbClosedFeedback" runat="server"></asp:ListBox>
            <br />
            <br />
            <asp:Label ID="lblServiceTime" runat="server" Text="Service Time:"></asp:Label>
            <asp:RadioButtonList ID="rblServiceTime" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem>Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lblEfficiency" runat="server" Text="Technical Efficiency:"></asp:Label>
            <asp:RadioButtonList ID="rblEfficiency" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem>Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lblResolution" runat="server" Text="Problem Resolution:"></asp:Label>
            <asp:RadioButtonList ID="rblResolution" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem>Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lblComments" runat="server" Text="Additional Comments:"></asp:Label>
            <asp:TextBox ID="tbComments" runat="server" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblContact" runat="server" Text="May We Contact You?"></asp:Label>
            <asp:CheckBoxList ID="cblContact" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="true">Yes</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Label ID="lblPreferredMethod" runat="server" Text="Preferred Contact Method:"></asp:Label>
            <asp:RadioButtonList ID="rblPreferredMethod" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True">Email</asp:ListItem>
                <asp:ListItem>Phone</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
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
