﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<L24CM.Models.Link>" %>
<table class='l24-link'>
<tr class='l24-link-isinternal'>
<td>Is Internal</td><td><input type="checkbox" name="<%= TemplateInfo.HtmlFieldPrefix %>.IsInternal" checked="<%= Model.IsInternal %>" /></td>
</tr><tr class='l24-link-controller'>
<td>Controller</td><td><input type="text" name="<%= TemplateInfo.HtmlFieldPrefix %>.Controller" value="<%= Model.Controller %>" /></td>
</tr><tr class='l24-link-action'>
<td>Action</td><td><input type="text" name="<%= TemplateInfo.HtmlFieldPrefix %>.Action" value="<%= Model.Action %>" /></td>
</tr><tr class='l24-link-url'>
<td>Url</td><td><input type="text" name="<%= TemplateInfo.HtmlFieldPrefix %>.Url" value="<%= Model.Url %>" /></td>
</tr><tr class='l24-link-content'>
<td>Content</td><td><input type="text" name="<%= TemplateInfo.HtmlFieldPrefix %>.Content" value="<%= Model.Content %>" /></td>
</tr>
</table>

