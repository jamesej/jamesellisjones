<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<string>" %>
<% if (!ViewData.ModelMetadata.HideSurroundingHtml)
   { %>
<div class='_L24Html'>
<%= ViewData.TemplateInfo.FormattedModelValue%>
</div>
<% } %>
<%= Html.Hidden("", ViewData.TemplateInfo.FormattedModelValue) %>

