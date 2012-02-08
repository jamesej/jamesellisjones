<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
        <title>Editor</title>
    <script type="text/javascript" src="/L24CM/Embedded/Scripts/L24EditPanel.js"></script>
</head>
<body>
    <div id='editPanel'>
        <% using (Html.BeginForm())
           { %>
            <input id='newButton' type="button" value="Create New" />
            <%= Html.EditorForModel() %>
            <div><input type="submit" value="Save" /></div>
        <% } %>
    </div>
</body>
</html>
