<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerFeedback.aspx.cs" Inherits="CustomerFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DUMB: Customer Feedback</title>
    <link href="App_Themes/MainStyles.css" rel="stylesheet" type="text/css"/>
    <link href="App_Themes/Feedback.css" rel="stylesheet" />
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
        <form id="form1" runat="server">
            <h2>Customer Feedback</h2>
            <br/>
            <br/>
            <br />
            <asp:Label ID="lblCustomerId" runat="server" Text="Customer ID:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtCustomerId" runat="server" CssClass="entry"></asp:TextBox>
            <asp:Button ID="btnCustomerId" runat="server" Text="Check" CssClass="button" OnClick="btnCustomerId_Click"/>
            <br />
            <br />
            <asp:Label ID="lblClosedFeedback" runat="server" Text="Closed Feedback Items:" CssClass="label"></asp:Label>
            <asp:ListBox ID="lbClosedFeedback" runat="server" Width="25em"></asp:ListBox>
            <asp:SqlDataSource ID="sqlFeedback" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="lblServiceTime" runat="server" Text="Service Time:" CssClass="label"></asp:Label>
            <asp:RadioButtonList ID="rblServiceTime" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
                <asp:ListItem Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem>Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lblEfficiency" runat="server" Text="Technical Efficiency:" CssClass="label"></asp:Label>
            <asp:RadioButtonList ID="rblEfficiency" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
                <asp:ListItem Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem>Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lblResolution" runat="server" Text="Problem Resolution:" CssClass="label"></asp:Label>
            <asp:RadioButtonList ID="rblResolution" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
                <asp:ListItem Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem>Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="lblComments" runat="server" Text="Additional Comments:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Enabled="False" Width="25em"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblContact" runat="server" Text="May We Contact You?" CssClass="label"></asp:Label>
            <asp:CheckBoxList ID="cblContact" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
                <asp:ListItem Value="true">Yes</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Label ID="lblPreferredMethod" runat="server" Text="Preferred Contact Method:" CssClass="label"></asp:Label>
            <asp:RadioButtonList ID="rblPreferredMethod" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
                <asp:ListItem Selected="True">Email</asp:ListItem>
                <asp:ListItem>Phone</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button, submitButton" Enabled="False" />
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
