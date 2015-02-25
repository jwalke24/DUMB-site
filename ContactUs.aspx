<%@ Page Title="DUMB: Contact Us" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Contact Us</h2>
    <br/>
    <br/>
    <div>
        Hours of Operation: Monday-Friday, 9 a.m. - 5 p.m.
        <br/>
        Email: <asp:HyperLink ID="hlEmail" runat="server" NavigateUrl="mailto: info@ballgame.com">info@ballgame.com</asp:HyperLink>
        <br/>
        Phone: 88-BallGame
        <br/>
        <br/>
        Digital Upscale Manager for Ballgames
        <br/>
        1601 Maple Street
        <br/>
        Carrollton, GA 30118
    </div>
   
</asp:Content>

