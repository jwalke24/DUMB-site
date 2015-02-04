<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerList.aspx.cs" Inherits="CustomerList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer List</title>
    <link href="App_Themes/MainStyles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div id="content">
        <header class="headerfooter">
            <h1 id ="companyName">Digital Upscale Manager for Ballgames</h1>
            <h3 id="companySlogan">"Managing Ballgames with Technology"</h3>
        </header>
        <form id="customerListForm" runat="server">
        
            <asp:Label ID="lblSelectCustomer" runat="server" Text="Please select a customer:"></asp:Label>
            <asp:DropDownList ID="ddlSelectCustomer" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        
        </form>
        <footer class="headerfooter">
            
        </footer>
    </div>
</body>
</html>
