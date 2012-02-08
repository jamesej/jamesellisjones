<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<L24CM.Models.Link>" %>
<% if (ViewData.Model.IsInternal)
   {  %>
   <%= Html.ActionLink(ViewData.Model.Content, ViewData.Model.Action, ViewData.Model.Controller) %>
<% }
   else
   { %>
<a href="<%= ViewData.Model.Url == null ? "#" : ViewData.Model.Url %>">
    <%= ViewData.Model.Content %>
</a>
<% } %>


