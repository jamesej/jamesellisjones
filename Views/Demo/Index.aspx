<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
  <link type="text/css" rel="Stylesheet" href="/Content/coins.css" />
  <script src='/L24CM/Embedded/Scripts/jquery.js' type='text/javascript'></script>
  <script type='text/javascript'>
    var objRoot = {$first: null, $last: null};
    var $mainDiv;
    var topDiffs = [];
    var advancePx = 4;
    for (var x = 0; x < 32+4; x++)
      if (x < 32)
	topDiffs[x] = Math.round(Math.sqrt(32 * 32 - x * x));
      else
        topDiffs[x] = 0;

    function addBall() {
      var $newBall = $("<img src='/Content/Images/gold_ball.png' class='ball' style='top: 0px'/>").appendTo($mainDiv);
      var lft = Math.floor(Math.random() * 20) * 10;
      $newBall.css('left', lft + 'px');
      $newBall.data({next: null, stopped: false, top: 0, left: lft});
      if (objRoot.$first == null) {
        objRoot.$first = $newBall; objRoot.$last = $newBall;
      } else {
        objRoot.$last.data('next', $newBall); objRoot.$last = $newBall;
      }
    }

    function advance() {
      var $ptr = objRoot.$first;
      while ($ptr != null) {
	if ($ptr.data('stopped')) {
	  $ptr = $ptr.data('next');
	  continue;
	}

	var top = $ptr.data('top');
	var oldTop = top;
	var left = $ptr.data('left');
	var oldLeft = left;
	if (top < 240) {
	  var $ptr2 = objRoot.$first;
	  var defLeft = 0;
	  var defRight = 0;
	  var vert = 4;
	  while ($ptr2 != null) {
	    if ($ptr != $ptr2) {
	      var top2 = parseInt($ptr2.css('top').slice(0,-2));
	      var left2 = parseInt($ptr2.css('left').slice(0,-2));
	      var diff = Math.abs(left - left2);
	      if (diff < 32) {
		if (top < top2 && (top2 - top - 4) < topDiffs[diff]) {
		  vert = top2 - top - topDiffs[diff+4];
		  if (vert < 0) vert = 0;
		  if (vert > 4) vert = 4;
	          if (left > left2)
		    defRight = 4 - vert;
	          else if (left < left2 || Math.random() > 0.5)
		    defLeft = 4 - vert;
		  else
		    defRight = 4 - vert;
		  //alert('topdiff ' + (top2 - top) + ' ldiff ' + diff + ' tdiff ' + topDiffs[diff] + ' vert ' + vert + ' defl ' + defLeft + ' defr ' + defRight);
		}
	        
	      }
	    }

	    $ptr2 = $ptr2.data('next');
	  }
	  if (defLeft == 0 || defRight == 0)
	  {
	    top += vert;
	    left += defRight - defLeft;
	  }
	}
	
	if (top != oldTop || left != oldLeft) {
	  $ptr.css({top: top + 'px', left: left + 'px'});
	  $ptr.data('top', top);
	  $ptr.data('left', left);
        }
	else
	  $ptr.data('stopped', true);

	$ptr = $ptr.data('next');
      }
    }
    
    function execFrame() {
      if (Math.random() > 0.97) addBall();
      advance();
    }

    $(document).ready( function() {
      $mainDiv = $('#main');
      //addBall();
      setInterval("execFrame()", 15);
    });
  </script>
</head>
<body>
  <div id="main">
  </div>
</body>

</html>
