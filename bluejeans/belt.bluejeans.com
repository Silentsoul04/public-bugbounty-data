```


<html>
<head>
<meta http-equiv="Content-Language">
<meta http-equiv="Content-Type" content="text/html">
<meta name="robots" content="none">
<title>Blue Jeans Network Secure Access</title>

<script src="/dana-na/css/ds_aa0608dbc608f424216f71896e51d1494b67816d49511c74cef63221d1a9e6b4.js"></script>
<script>
        WriteCSS();
</script>
<noscript>
<link rel="stylesheet" href="/dana-na/css/ds_aa0608dbc608f424216f71896e51d1494b67816d49511c74cef63221d1a9e6b4.css">
</noscript>

<script>
<!--
if (window.top != self) {
	top.location = location;
}
if(window.name == "newpincancel" || window.name == "nexttokencancel") {
   window.close();
}
//--></script>
<script>
<!--
function hideJSWarn() {
    if(window.top == self) {
        document.getElementById('noJSWarn').style.display = "none";
    }
}
//--></script>

<script src="/dana-na/auth/lastauthserverused_aa0608dbc608f424216f71896e51d1494b67816d49511c74cef63221d1a9e6b4.js"></script>
<script>function deletepreauth() {
    document.cookie = "DSPREAUTH="+ escape("")+ ";path=/dana-na/;expires=12-Nov-1996";
}
</script>

</head>

<body onload="FinishLoad(1);hideJSWarn();" bgcolor="#FFFFFF" color="#000000" link="#3366CC" vlink="#CC6699" alink="#3366CC" leftmargin="0" topmargin="0" rightmargin="0" marginwidth="0" marginheight="0">

<div id="noJSWarn" class="cssSecurityWarning">Your browser is executing scripts on this page. If this message persists, please make sure that you are visiting a correct site and JavaSript support is enabled in your browser, and then try again.</div>
<table id="table_LoginPage_1" border="0" width="100%" cellspacing="0" cellpadding="3">        <tr>
            <td bgcolor="#E3E3E3"><img border="0" src="welcome.cgi?p=logo&signinId=url_default" alt="Logo"></td>
            <td bgcolor="#E3E3E3" align="right">&nbsp;</td>
        </tr></table>
<table id="table_LoginPage_2" cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
                <td bgcolor="#000000" colspan="2"><img border="0" src="/dana-na/imgs/space.gif" width="1" height="1"></td>
        </tr>
</table>
<blockquote><form id="frmLogin_4" name="frmLogin" action="login.cgi" method="POST" autocomplete="off" onsubmit="return Login(1)">
        <input id="tz_offset_5" type="hidden" name="tz_offset">
        <table id="table_LoginPage_3" border="0" cellpadding="2" cellspacing="0">
                                        <tr>
                                                <td nowrap  colspan="3"><b>Welcome to</b></td>
                                        </tr>
                                        <tr>
                                                <td nowrap  colspan="3"><span class="cssLarge"><b>Blue Jeans Network Secure Access</b></span></td></tr>
                                      
                                        <tr>
                                              <td colspan="3">&nbsp;</td>
                                        </tr>
				<tr>
				
                                <td valign="top">
                                
                                        <table id="table_LoginPage_6" border="0" cellspacing="0" cellpadding="2">													<tr>
														<td>Username</td>
														<td>&nbsp;</td>
														<td><input id="username" type="text" name="username" size="20"></td>
													</tr>													<tr>
														<td>Password</td>
														<td>&nbsp;</td>
														<td><input id="password" type="password" name="password" size="20"></td>
													</tr>                                                <tr>                                                                <input id="realm_16" type="hidden" name="realm" value="BJN Eng & Ops">                                                </tr>                                                <tr>
                                                        <td colspan="3">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td><input id="btnSubmit_6" type="submit" value="Sign In" name="btnSubmit">&nbsp;                                                            <input id="help_3" type='submit' name='help' value="Help" onclick='window.open("welcome.cgi?p=help", "wndHelp", "height=400,width=500,resizeable=yes,scrollbars=yes"); return false;'></td>
                                                </tr>                                        </table>
                              
                        </td>
                        <td valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td valign="top"><table id="TABLE_LoginPage_1" border="0" cellspacing="0" cellpadding="2">
<tr><td>Please sign in to begin your secure session. For password restrictions and other issues, please click on HELP</tr></td></table></td>
	</tr>
        </table>  </form>
</blockquote>

<table id="table_LoginPage_9" border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td background="/dana-na/imgs/footerbg.gif">
			<table id="table_LoginPage_10" cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
					<td><img src="/dana-na/imgs/space.gif" width="10" height="10"></td>
					<td><img src="/dana-na/imgs/space.gif" width="1" height="2"></td>
					<td><img src="/dana-na/imgs/space.gif" width="10" height="10"></td>
        </tr>
				<tr valign="top">
					<td><img src="/dana-na/imgs/space.gif" width="10" height="1"></td>
					<td nowrap ><br><br><br><br>
					<td align="right"><img src="/dana-na/imgs/space.gif" width="10" height="10"></td>
        </tr>
			</table>
		</td>
        </tr>
        <tr>
		<td colspan="2"><img border="0" src="/dana-na/imgs/space.gif" height="6" width="1" alt=""></td>
        </tr>
</table>

</body>
</html>
```