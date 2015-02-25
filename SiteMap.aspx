<%@ Page Title="DUMB: Site Map" Language="C#" MasterPageFile="~/DUMBSite.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" %>

<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h2>Site Map</h2>
    <br/>
    <br/>
    <div class="centerBlock">
        <asp:TreeView ID="tvSiteMap" runat="server" DataSourceID="smdsSiteMap" ForeColor="Maroon">
        </asp:TreeView>
    </div>
    <br/>
    <asp:SiteMapDataSource ID="smdsSiteMap" runat="server" />
</asp:Content>

