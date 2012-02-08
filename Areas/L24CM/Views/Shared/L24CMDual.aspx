<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" style="height: 100%; width: 100%" >
<head runat="server">
        <title>Editor</title>
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" type="text/javascript"></script>-->
    <link href="/L24CM/Embedded/Content/jquery.layout.css" rel="stylesheet" type="text/css" />
    <link href="/Areas/L24CM/Content/l24cm.ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/L24CM/Embedded/Scripts/jquery-ui.js"></script>
    <script type="text/javascript" src="/L24CM/Embedded/Scripts/jquery.layout.js"></script>
    <script type="text/javascript" src="/L24CM/Embedded/Scripts/jquery.simplemodal.js"></script>
    <script type="text/javascript" src="/Areas/L24CM/scripts/tiny_mce/jquery.tinymce-applier.js"></script>
    <script>
        $(document).ready(function() {
            var firstReload = true;
            $('#container').layout();
            $('.ui-layout-east').load(function() {
                if (!firstReload)
                    $('.ui-layout-center')[0].contentDocument.location.reload(true);
                firstReload = false;
            });
        });
        // RTE

        function positionRte() {
            var $smCont = $('#simplemodal-container');
            var scTop = parseInt($smCont.css('top'), 10);
            var scPadTop = parseInt($smCont.css('padding-top'), 10);
            var scLeft = parseInt($smCont.css('left'), 10)
            var scPadLeft = parseInt($smCont.css('padding-left'), 10);
            $('#_L24RTEContainer').css({ top: scTop + scPadTop, left: scLeft + scPadLeft });
            $('.simplemodal-close').css({ top: scTop + scPadTop - 16, left: scLeft + $smCont.width() + scPadLeft });
        }
        $.modal.impl.setPositionBase = $.modal.impl.setPosition;
        $.modal.getContainer = function() { return this.impl.d.container; }
        $.modal.impl.setPosition = function() {
            var s = this;
            s.setPositionBase();
            s.d.container.trigger('move.modal');
        }
        function showHtml(contents, updateHtml) {
            var $rte = $('#_L24RTEContainer').css('display', 'block').find('#_L24RTE_tbl');
            $("<div id='modalPlaceholder' style='background-color: Blue;'></div>")
                .width($rte.width()).height($rte.height())
                .modal({
                    overlayClose: true,
                    onClose: function(dialog) {
                        $('#_L24RTEContainer').css('display', 'none');
                        updateHtml($('textarea#_L24RTE').html());
                        $.modal.close();
                    }
                });

            $('#_L24RTEContainer').css({ 'z-index': '1010', position: 'fixed' });
            $('.simplemodal-close').css({
                'z-index': '1003', position: 'fixed', display: 'block',
                'background-image': 'url(/l24cm/embedded/Content/Images/close-white.png)',
                width: '16px', height: '16px'});
            positionRte();
            $.modal.getContainer().bind('move.modal', positionRte);
            
            $('textarea#_L24RTE').html(contents);
        }
    </script>
</head>
<body style="height: 100%; width: 100%">
<div id='container' style="height: 100%; width: 100%; position:relative;">
<iframe class="ui-layout-center" src="<%= ViewData["Path"] %>?-mode=view"></iframe>
<iframe class="ui-layout-east" id="editor" src="<%= ViewData["Path"] %>?-action=edit"></iframe>
</div>
<div id='_L24RTEContainer' style='display:none'><textarea id='_L24RTE'>abcdef</textarea></div>
</body>
</html>
