<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<L24CM.Models.Image>" %>
<table class='l24-image'>
<tr class='l24-image-url'>
<td>Url</td><td><button class='l24-image-load'>Find File</button><input type="text" name="<%= ViewData.TemplateInfo.HtmlFieldPrefix %>.Url" value="ab<%= Model.Url %>" /></td>
</tr><tr class='l24-image-content'>
<td>Content</td><td class='l24-image-content-cell'>image goes here</td>
</tr>
</table>

