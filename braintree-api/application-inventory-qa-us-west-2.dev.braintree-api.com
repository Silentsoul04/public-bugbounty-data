```<!DOCTYPE html>


<!-- template name: html.form.login.template.html -->



<html lang="en" dir="ltr">
<head>
<script type="text/javascript">
        function postOk()
        {
			trimUsername();
            document.forms[0]['pf.ok'].value = 'clicked';
            document.forms[0].submit();
        }

        function postCancel()
        {
            document.forms[0]['pf.cancel'].value = 'clicked';
            document.forms[0].submit();
        }

        function postOnReturn(e)
        {
            var keycode;
            if (window.event) keycode = window.event.keyCode;
            else if (e) keycode = e.which;
            else return true;

            if (keycode == 13)
            {
				trimUsername();
                document.forms[0].submit();
                return false;
            }
            else {
                return true;
				}
         }

         function setFocus()
         {
			showDefaultUsername();

	        /*var platform = navigator.platform;
	        if(platform != null && platform.indexOf("iPhone") == -1) {
	            	                document.getElementById('username').focus();
	            	        }*/			
         }

		function showDefaultUsername() {

			//document.getElementById("username").value="corp\\username";
			document.getElementById("username").value="paypalcorp\\username";
			document.getElementById("username").style.color="#888";
			document.getElementById("password").value="password";
			document.getElementById("password").style.color="#888";
		}

		function trimUsername()
		{
			var v;
			v = document.getElementById("username").value;

			if(v.match(/^paypalcorp\\/i)) {
			var x = v.replace(/^paypalcorp\\/i,"");
			document.getElementById("username").value = x;
			}
			else {
			document.getElementById("username").value = v;
			}

		}

		function cleanUsername() {
			var em = document.getElementById("error_mesg");
			if(em)
				em.style.display="none";
			var v;
			v = document.getElementById("username").value;
			if(v.match(/^paypalcorp\\username/i)) {
				document.getElementById("username").value = "";
				document.getElementById("username").style.color="#000";
			}
		}

    function setMobile(mobile) {
        var className = ' mobile',
            hasClass = (bodyTag.className.indexOf(className) !== -1);

        if(mobile && !hasClass) {
            bodyTag.className += className;

        } else if (!mobile && hasClass) {
            bodyTag.className = bodyTag.className.replace(className, '');
        }
 
        <!-- Check if this is the PingOne Mobile App -->
	        }
    function getScreenWidth() {
        return (window.outerHeight) ? window.outerWidth : document.body.clientWidth;
    }

    var bodyTag = document.getElementsByTagName('body')[0],
        width = getScreenWidth();


    if(/Android|webOS|iPhone|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        setMobile(true);
    } else {
        setMobile((width <= 480));
        window.onresize = function() {
            width = getScreenWidth();
            setMobile((width <= 480));
        }
    }		
    </script>

	<!--[if lte IE 8]>
	<script type="text/javascript">
	function cleanPassword(obj) {

			var em = document.getElementById("error_mesg");
			if(em)
				em.style.display="none";

			var newO=document.createElement('input');
			newO.setAttribute('type','password');
			newO.setAttribute('name',obj.getAttribute('name'));
			newO.attachEvent('onkeypress', function(){return postOnReturn(event)});
			obj.parentNode.replaceChild(newO,obj);
			newO.focus();
		}
	 </script>
	<![endif]-->

	<!--[if gt IE 8]>
	<script type="text/javascript">
	function cleanPassword(obj) {

			var em = document.getElementById("error_mesg");
			if(em)
				em.style.display="none";

			var newO=document.createElement('input');
			newO.setAttribute('type','password');
			newO.setAttribute('name',obj.getAttribute('name'));
			newO.setAttribute('onkeypress',obj.getAttribute('onkeypress'));
			obj.parentNode.replaceChild(newO,obj);
			newO.focus();
		}
	 </script>
	<![endif]-->

	<!--[if !IE]> -->
	<script type="text/javascript">
	function cleanPassword(obj) {

			var em = document.getElementById("error_mesg");
			if(em)
				em.style.display="none";

			var newO=document.createElement('input');
			newO.setAttribute('type','password');
			newO.setAttribute('name',obj.getAttribute('name'));
			newO.setAttribute('onkeypress',obj.getAttribute('onkeypress'));
			obj.parentNode.replaceChild(newO,obj);
			newO.focus();
		}
	 </script>
	<!-- <![endif]-->

    <base href="https://sso.paypalcorp.com/"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<!--meta http-equiv="X-UA-Compatible" content="IE=9"-->
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>Sign On</title>
<link rel="stylesheet" type="text/css" href="assets/css/layout.css"/>
<link rel="stylesheet" type="text/css" href="assets/css/ebaystyle.css"/>
<!-- below from 7.2.1 template-->
<!--<link rel="stylesheet" type="text/css" href="assets/css/main.css"/>-->
</head>

<body onload="setFocus()">
<div class="wrapper">
<div class="header">
<img src="assets/images/paypal_logo.png"  max-width="225px";/>
</div>

<form method="POST" action="/idp/SoVpN/resumeSAML20/idp/SSO.ping" autocomplete="off">
	<div>
		
	
        <!-- below is the old if check. Can possibly be removed.-->
				<p>Your PayPal, Inc. Credentials</p>
		<div> <input id="username" class="input" type="text" size="36" name="pf.username" value="" autocorrect="off" autocapitalize="off" onFocus="cleanUsername()"  onKeyPress="return postOnReturn(event)"/> </div>
		<div> 
			<input id="password" class="input" size="36" name="pf.pass" onFocus="cleanPassword(this)" onKeyPress="return postOnReturn(event)"/> 
		</div>


		<div>
			<!--	
			<input id="username" type="hidden" name="pf.username" value=""/>		
			<input type="hidden" name="pf.ok" value=""/>
			<a href="javascript:void(0)" onclick="postOk(); return false;" class="signInButton"  title="Sign in">Sign in</a>
			-->

            <input type="hidden" name="pf.ok" value=""/>

            <a href="javascript:void(0)" onclick="postOk(); return false;" class="signInButton" title="Sign On">
                Sign On
            </a>

		</div>
	</div>
</form>

</div>
<div class="footer">
<p>© 2015 PayPal, Inc. All Rights Reserved</p>
</div>
</body>
</html>
```