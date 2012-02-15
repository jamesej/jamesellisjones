<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Page.Master" Inherits="System.Web.Mvc.ViewPage<L24CMTest.Models.HomeContent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index.aspx
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <img id='banner' src='/Content/Images/kbd.jpg' />
    <div id='siteTitle'>JAMES ELLIS JONES.COM</div>
    <div id='leftDiv'>
    <p>Here's the copyx:</p>
    <p><%= Html.DisplayFor(m => m.BlogLink) %></p>
    <%= Html.DisplayFor(m => m.Story) %>
    </div>
    <div id='rightDiv'>
    <p>Test</p>
    <%= Html.DisplayFor(m => m.Image1) %>
    </div>

</asp:Content>
