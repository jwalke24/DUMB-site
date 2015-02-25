<%@ Page Title="DUMB: Customer Feedback" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="CustomerFeedback.aspx.cs" Inherits="CustomerFeedback" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <link href="Styles/Feedback.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Customer Feedback</h2>
    <br/>
    <br/>
    <asp:Label ID="lblCustomerId" runat="server" Text="Customer ID:" CssClass="label"></asp:Label>
    <asp:TextBox ID="txtCustomerId" runat="server" CssClass="entry"></asp:TextBox>
    <asp:Button ID="btnCustomerId" runat="server" Text="Check" CssClass="button" OnClick="btnCustomerId_Click"/>
    <asp:RequiredFieldValidator ID="rfvCustomerId" runat="server" ControlToValidate="txtCustomerId" CssClass="validator" Display="Dynamic" ErrorMessage="CustomerID is required."></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvCustomerId" runat="server" ControlToValidate="txtCustomerId" CssClass="validator" Display="Dynamic" ErrorMessage="CustomerID must be a number." Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <br/>
    <br/>
    <asp:Label ID="lblClosedFeedback" runat="server" Text="Closed Feedback Items:" CssClass="label"></asp:Label>
    <asp:ListBox ID="lbClosedFeedback" runat="server" Width="25em"></asp:ListBox>
    <asp:SqlDataSource ID="sqlFeedback" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalManager %>" ProviderName="<%$ ConnectionStrings:DigitalManager.ProviderName %>" SelectCommand="SELECT * FROM [Feedback] ORDER BY [DateClosed]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="rfvClosedFeedback" runat="server" ControlToValidate="lbClosedFeedback" CssClass="validator" Display="Dynamic" ErrorMessage="A closed feedback item must be selected."></asp:RequiredFieldValidator>
    <br/>
    <br/>
    <asp:Label ID="lblServiceTime" runat="server" Text="Service Time:" CssClass="label"></asp:Label>
    <asp:RadioButtonList ID="rblServiceTime" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
        <asp:ListItem Selected="True" Value="1">Satisfied</asp:ListItem>
        <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
        <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
    </asp:RadioButtonList>
    <br/>
    <br/>
    <asp:Label ID="lblEfficiency" runat="server" Text="Technical Efficiency:" CssClass="label"></asp:Label>
    <asp:RadioButtonList ID="rblEfficiency" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
        <asp:ListItem Selected="True" Value="1">Satisfied</asp:ListItem>
        <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
        <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
    </asp:RadioButtonList>
    <br/>
    <br/>
    <asp:Label ID="lblResolution" runat="server" Text="Problem Resolution:" CssClass="label"></asp:Label>
    <asp:RadioButtonList ID="rblResolution" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
        <asp:ListItem Selected="True" Value="1">Satisfied</asp:ListItem>
        <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
        <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
    </asp:RadioButtonList>
    <br/>
    <br/>
    <asp:Label ID="lblComments" runat="server" Text="Additional Comments:" CssClass="label"></asp:Label>
    <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Enabled="False" Width="25em"></asp:TextBox>
    <br/>
    <br/>
    <asp:Label ID="lblContact" runat="server" Text="May We Contact You?" CssClass="label"></asp:Label>
    <asp:CheckBoxList ID="cblContact" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
        <asp:ListItem Value="true">Yes</asp:ListItem>
    </asp:CheckBoxList>
    <br/>
    <br/>
    <asp:Label ID="lblPreferredMethod" runat="server" Text="Preferred Contact Method:" CssClass="label"></asp:Label>
    <asp:RadioButtonList ID="rblPreferredMethod" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Enabled="False">
        <asp:ListItem Selected="True">Email</asp:ListItem>
        <asp:ListItem>Phone</asp:ListItem>
    </asp:RadioButtonList>
    <br/>
    <br/>
    <br/>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button, submitButton" Enabled="False" OnClick="btnSubmit_Click"/>
    <br/>
</asp:Content>