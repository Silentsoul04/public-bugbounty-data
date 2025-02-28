```<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<title>ash-agile-ext.thefacebook.com</title>
<link rel="stylesheet" type="text/css" HREF="/public/include/css/apm.css">
<script language="JavaScript" src="/public/include/js/session_check.js?v=13" ></script>
<script language="JavaScript" src="/public/include/js/agent_common.js" ></script>
<script language="JavaScript" src="/public/include/js/web_host.js" ></script>
<script language="javascript">
<!--
if(!String.prototype.trim){ String.prototype.trim = function() { return this.replace(/^\s+|\s+$/g, ""); }; }

/////////////////////////////////////////////////////////////////////////
// function to return the customized screen when session expiration
// is detected on the client-side
/////////////////////////////////////////////////////////////////////////
function SessionExpired_CustomizedScreenGet()
{
  return '<br><h3>Session Expired/Timeout</h3><br>Due to user inactivity, your session expired. Click the following link to start a new session.<br><br><table id="IHoptions"><tr><td><a href="[SESSION_RESTART_URL]" class="option"><img src="/public/images/sq-positive.gif" ></a><a href="[SESSION_RESTART_URL]">Start a new session</a></td></tr></table>';
}

var globalRestartOnSubmit = false;

function sessionTimedOut()
{
    // restart session automatically upon "submit" for edge-like clients if logon form is compatibile
    if (externalWebHost.hasWebLogonResetSession() && logonFormCompatible) {
       globalRestartOnSubmit = true;
    }
    else {
       // display session expired msg for non-compatible forms or
       // non-edge clients
       sessionTimeout.showSplashLayer("MessageDIV", SessionExpired_CustomizedScreenGet());
    }
}

/**
 * Place the focus and init the form fields
 */

if(self != top) { top.location = self.location; }
window.onerror=function(){ return function(){ return; } }

//--------------------------------------------------------------------
var doAutoSubmit = true;

var globalFormId = 'auth_form';
var globalTableId = 'credentials_table';
var globalSubmitTrId = 'submit_row';

var globalSavePasswordCheckbox = null;
var logonFormCompatible = false;

var softTokenInput = null;
var softTokenFieldId = "";
var softTokenState = "";
var softTokenNewPIN = "";
var softTokenPINAutoPopulate = false;
if( !softTokenState ) {
    softTokenState = "SECURID_AUTH_STATE_START";}

    var challengeMode = false;

function getInputField(fieldId)
{
    var form = document.getElementById( globalFormId );
    if( form == null ){
        return null;
    }

    if(fieldId == null || fieldId == ""){
        return null;
    }

    var inputs = form.getElementsByTagName("input");
    for( var i=0; i<inputs.length; i++ ){
        if(  inputs[i].name == fieldId){
            return inputs[i];
        }
    }
    return null;
}

function getSoftTokenInput()
{
    return getInputField(softTokenFieldId);
}

function getUsernameInput()
{
    return getInputField("username");
}

function getPasswordInput()
{
    return getInputField("password");
}

function edgeClientSoftTokenSupport()
{
    try {
        return externalWebHost.hasWebLogonSoftTokenSupport();
    } catch(e) {}
    return false;
}

function getSoftTokenPrompt()
{
    if ( softTokenFieldId != "" && edgeClientSoftTokenSupport()) {
        var div = document.getElementById("formHeaderSoftToken");
        if (div)  {
            return div.innerHTML;
        }
    }
    return  null;
}

function setSoftTokenChallengeResponse(challengeResponse)
{
    var challengeElements = document.getElementsByName('_F5_challenge');
    if((challengeElements.length == 0) || (null == challengeElements[0])) {
        return;
    }

    var challengeElement = challengeElements[0];
    if(challengeElement.tagName.toLowerCase() == 'select') {
        var challengeOptions = challengeElement.options;
        if(null == challengeOptions){
            return;
        }
        for (var i = 0, optionsLength = challengeOptions.length; i < optionsLength; i++) {
            if (challengeOptions[i].value == challengeResponse) {
                challengeElement.selectedIndex = i;
                break;
            }
        }
    }else if(challengeElement.tagName.toLowerCase() == 'input') {
        challengeElement.value = challengeResponse;
    }
}

function OnSubmitEdgeRSASoftToken()
{
    var support = edgeClientSoftTokenSupport();
    if( true != support ) {
        return;
    }
    var form = document.getElementById( globalFormId );
    if( form == null ){
        return;
    }
    var inputs = form.getElementsByTagName("input");

    var hiddenInput = document.createElement("input");
    hiddenInput.setAttribute("type", "hidden");
        hiddenInput.setAttribute("name", "softTokenError");
    //append to form element that you want .
    form.appendChild(hiddenInput);

    try{
        if(softTokenInput != null) { //normal mode
            // if the client cannot request soft-token PIN,
            // ask user to enter it in the logon page and pass the value to the client
            // Otherwise, the client already has the PIN
            if(!softTokenPINAutoPopulate) {
                externalWebHost.setWebLogonSoftTokenPIN(softTokenInput.value);
            }
            var passcode = externalWebHost.getWebLogonSoftTokenPasscode();
            if( passcode ) {
                softTokenInput.value = passcode;
            }
        } else if( challengeMode ) { //challenge mode
            // If the client can provide response to the challenge, use it instead of user input
            if(externalWebHost.hasWeblogonSoftTokenChallengeResponse()){
                var challengeResponse = externalWebHost.getWeblogonSoftTokenChallengeResponse();
                if(null != challengeResponse){
                     setSoftTokenChallengeResponse(challengeResponse);
                }
            }else{
                // Request user input by default
                externalWebHost.setWebLogonSoftTokenPIN(inputs[0].value);

                var passcode = externalWebHost.getWebLogonSoftTokenPasscode();
                if( passcode ) {
                    inputs[0].value = passcode;
                }
            }

        }
        hiddenInput.value = externalWebHost.getWebLogonSoftTokenError();
    } catch(e) { }

    return;
}

// check whether logon form is compatible with the client for auto-population and auto-submission
// only "username", "password" and soft token field (the name is stored in softTokenFieldId ) are supported
// fields can be configured in either order, but can only be text, password or checkbox types
// form is not considered compatible if it contains any additional fields not supported by the client
// The form is compatible even if it contains a subset of the supported fields
// In this case the client will auto-populate only those fields
function getFormCompatibility()
{
    var form = document.getElementById( globalFormId );
    if( form == null ){
        return false;
    }
    // check if form suites
    var inputs = [];
    var inputsTemp = form.getElementsByTagName("input");
    // filter submit, reset, hidden and little green men
    for( var i=0; i<inputsTemp.length; i++ ){
        if( inputsTemp[i].type == "text" || inputsTemp[i].type == "password"){
            inputs[ inputs.length ] = inputsTemp[i];
        }
    }

    var softTokenSupported = edgeClientSoftTokenSupport() && (null != softTokenInput);
    // Check if there are any custom fields that are not supported by Edge Client for auto-population and auto-submission
    for( var i=0; i<inputs.length; i++ ){
       if((inputs[i].type == "text" && inputs[i].name == "username") ||
          (inputs[i].type == "password" && inputs[i].name == "password") ||
          (softTokenSupported && inputs[i].type == "password" && inputs[i].name == softTokenInput.name)){
               continue;
       }else {
          return false;
       }
    }
    return true;
}

function setOrigUriLink()
{
    var params = parseQueryParams(window.location.search.substr(1));
    if (!params.hasOwnProperty('ORIG_URI')) {
        return;
    }

    if (params['ORIG_URI'].length != 8) {
        return;
    }

    var re = /[0-9a-fA-F]{8}/;
    if (!re.test(params['ORIG_URI'])) {
        return;
    }


    var credTable = document.getElementById('credentials_table');
    if (credTable == null) {
        return;
    }
    var tBody = credTable.tBodies[0];
    if (tBody == null) {
        return;
    }

    var trTag = document.createElement("TR");
    tBody.insertBefore(trTag, tBody.children[tBody.children.length - 1]);

    var tdTag = document.createElement("TD");
    tdTag.setAttribute("class", "credentials_table_unified_cell");
    tdTag.setAttribute("colspan", "2");
    trTag.appendChild(tdTag);

    var tdText = document.createElement("A");
    tdText.innerHTML = "Click here if already logged in ";
    tdText.setAttribute("href", "/vdesk/policy_done.php3?ORIG_URI=" + params['ORIG_URI']);
    tdTag.appendChild(tdText);
}

function OnLoad()
{
    var header = document.getElementById("credentials_table_header");
    var softTokenHeaderStr = getSoftTokenPrompt();
    if ( softTokenHeaderStr ) {
        header.innerHTML = softTokenHeaderStr;
    }
    setFormAttributeByQueryParams("auth_form", "action", "/subsession_logon_submit.php3");
    setFormAttributeByQueryParams("v2_original_url", "href", "/subsession_logon_submit.php3");

    // check if form suites
    var form = document.getElementById( globalFormId );
    if( form == null ){
        return;
    }
    // check if form suites
    var inputs = form.getElementsByTagName("input");
    // filter submit, reset, hidden and little green men
    for( var i=0; i<inputs.length; i++ ){
        if( ( inputs[i].type == "text" || inputs[i].type == "password" ) && inputs[i].value == "" ){
            inputs[i].focus();
            if (inputs[i].type == "password") {
                window.setTimeout( function(elem){ return function(){ elem.blur(); elem.focus(); } }(inputs[i]) , 266 );
            }
            return;
        }
    }
}

function disableSubmit(form)
{
    // disable!
    var inputs = form.getElementsByTagName( "input" );
    for( var i=0; i<inputs.length; i++ ){
        if( inputs[i].type == "submit" || inputs[i].type == "reset" ){
            inputs[i].disabled = true;
        }
    }

    return true;
}

//This function is called from Edge Client. Update setWeblogonCallbacks call if renamed
function challengeAutoSubmit()
{
    if(!challengeMode) {
       return false;
    }

    var form = document.getElementById( globalFormId );
    if( form == null ){
       return false;
    }

    disableSubmit(form);

    form.onsubmit();
    form.submit();
    return true;
}

//This function is called from Edge Client. Update setWeblogonCallbacks call if renamed
function weblogonAutoSubmit()
{
      if(!logonFormCompatible){
          return false;
      }

      var form = document.getElementById( globalFormId );
      if( form == null ){
          return false;
      }

      // autosubmit check
      if(externalWebHost.hasWebLogonAutoLogon() && externalWebHost.getWebLogonAutoLogon() && doAutoSubmit){

         disableSubmit(form);

         form.onsubmit();
         form.submit();
         return true;
      }else{
        return false;
      }
}


// support for autologon from Client API
function checkExternalAddCheckbox()
{
    var checkbox_txt = 'Save Password';

    if( !logonFormCompatible ){
        try {
            if (externalWebHost.hasWebLogonNotifyUser()){
                externalWebHost.WebLogonNotifyUser();
            }
        } catch(e){};
        return;
    }

    // find form
    var form = document.getElementById( globalFormId );
    if( form == null ){
        return;
    }

    // find table
    var table = document.getElementById( globalTableId );
    if( table == null ){
        return;
    }

    // find tr
    var submitTr = document.getElementById( globalSubmitTrId );
    if( submitTr == null ){
        return;
    }

    try {
        if(externalWebHost.isAvailable()){
            // push values
            var usernameInput = getUsernameInput();
            if( null != usernameInput && externalWebHost.hasWebLogonUserName() && usernameInput.value == ""){
                usernameInput.value = externalWebHost.getWebLogonUserName();
            }

            var passwordInput = getPasswordInput();
                        var allowSavingPassword = ((null != passwordInput) && (passwordInput.name != softTokenFieldId));
            //don't populate RSA SecurID token field with the cached password
            if(allowSavingPassword) {
                if( externalWebHost.hasWebLogonPassword() && (passwordInput.value == "")){
                     passwordInput.value =  externalWebHost.getWebLogonPassword();
                }
            }else{
                doAutoSubmit = false;
            }

            // push data to cells
            if(allowSavingPassword && externalWebHost.isWebLogonSavePasswordAvailable()){
                // right - text

                // create cells
                var newTr = table.insertRow( submitTr.rowIndex );
                var leftTd = newTr.insertCell( 0 );
                var rightTd = newTr.insertCell( 1 );

                leftTd.className = "credentials_table_label_cell";
                rightTd.className = "credentials_table_field_cell credentials_table_field_checkbox_fix";

                rightTd.innerHTML = checkbox_txt;
                // left - checkbox
                globalSavePasswordCheckbox = document.createElement("input");
                globalSavePasswordCheckbox.type = "checkbox";
                globalSavePasswordCheckbox.className = "credentials_input_checkbox";
                globalSavePasswordCheckbox.value = 1;
                globalSavePasswordCheckbox = leftTd.appendChild( globalSavePasswordCheckbox );
                globalSavePasswordCheckbox.checked = externalWebHost.getWebLogonSavePasswordChecked();
                if( globalSavePasswordCheckbox.autocomplete ) {
                    globalSavePasswordCheckbox.autocomplete = "off";
                }
            }

            // autosubmit if possible
            if(weblogonAutoSubmit()){
               return;
            }
        }
    } catch (e) { }
}

function OnSubmit()
{
    // find form
    var form = document.getElementById( globalFormId );
    if( form == null ){
        return;
    }
    try{
      if( externalWebHost.isAvailable() ){
         // pass weblogon credentials back to the client
         if( logonFormCompatible ){
              var usernameInput = getUsernameInput();
              if( null != usernameInput && externalWebHost.hasWebLogonUserName() ){
                  externalWebHost.setWebLogonUserName(usernameInput.value);
              }

              var passwordInput = getPasswordInput();
              if( null != passwordInput && externalWebHost.hasWebLogonPassword() ){
                  externalWebHost.setWebLogonPassword(passwordInput.value);
              }
              // pass user decision to save the password back to the client
              if( externalWebHost.hasWebLogonSavePasswordChecked() ){
                  externalWebHost.setWebLogonSavePasswordChecked((null != globalSavePasswordCheckbox) && globalSavePasswordCheckbox.checked);
              }
          }
          if (softTokenFieldId != "") {
              OnSubmitEdgeRSASoftToken();
          }
      }
    } catch(e) { }

    return;
}

function verifyNewPassword()
{
    var form = document.getElementById( globalFormId );
    if( form == null ){
        return true;
    }

    var inputs = form.getElementsByTagName("input");
    if( inputs.length >= 2 && inputs[0].name == "_F5_challenge" && inputs[0].type == "password" && inputs[1].name == "_F5_verify_password" && inputs[1].type == "password" ){
        if( inputs[0].value != inputs[1].value ){
            alert("Password and confirmation do not match.");
            inputs[0].focus();
            return false;
        } else {
            // Not sending the second field.
            inputs[1].disabled = true;

            try{
                  if( externalWebHost.hasWebLogonPassword() ){
                      externalWebHost.setWebLogonPassword(inputs[0].value);
                  }
            } catch(e) { }
        }
    }
    return true;
}

function masterSubmit(form)
{
    if( !verifyNewPassword() /* || ... */){
        return false;
    }

    OnSubmit(); // this required by edge

    if (globalRestartOnSubmit) {
        try {
            var usernameInput = getUsernameInput();
            var passwordInput = getPasswordInput();
            externalWebHost.setWebLogonAutoLogon((usernameInput != null ) && ("" != usernameInput.value) && (null != passwordInput) && ("" != passwordInput.value));
        }
        catch (e) {}
        // restart session
        externalWebHost.webLogonResetSession();
        return false;
    }

    disableSubmit(form);
    return true;
}
//-->
</script>
</head>

<body onload="OnLoad()">

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" id="viewport" content="initial-scale=1.0" />
<meta name="robots" context="noindex,nofollow">
<script language="javascript">
//orientation toolbox
function setViewport(){
    document.getElementById("viewport").setAttribute('content', Math.abs(window.orientation) == 90 ? 'width=device-height, initial-scale=1' : 'width=device-width, initial-scale=1.0' );
}
setViewport();
window.onorientationchange = function() {
    setViewport();
}
</script>
<table id="page_header">
  <tr >
    <td id="header_leftcell"><img src='/public/images/my/flogo.png'/></td>
    <td id="header_rightcell"></td>
  </tr>
  <tr>
     <td></td>
     <td id="maxTimeoutTd"><span id="maxTimeoutTag" title=""></span></td>
  </tr>
</table>
<noscript>
<div id="noscript_warning_red">JavaScript is not enabled. Please enable JavaScript in your browser or contact your system administrator for assistance.</div>
<div id="noscript_warning_newsession">To open a new session, please  <A href="/">click here.</A></div>
</noscript>

<table id="main_table" class="logon_page">
<tr>
        <td id="main_table_info_cell">
    <form id="auth_form" name="e1" method="post" onsubmit="javascript: return masterSubmit(this);" autocomplete="off">
    <table id="credentials_table">
    <tr>
        <td colspan=2 id="credentials_table_header" >Enter your credentials</td>
    </tr>
    <tr>
        <td colspan=2 id="credentials_table_postheader" ></td>
    </tr>
    <tr>
        <td colspan=2 class="credentials_table_unified_cell" ><label for='input_1' id='label_input_1'>Username</label><input type='text' name='username' class='credentials_input_text' value='' id='input_1' autocomplete='off' autocapitalize='off' /></td>
    </tr>
    <tr>
        <td colspan=2 class="credentials_table_unified_cell" ><label for='input_2' id='label_input_2'>Password</label><input type='password' name='password' class='credentials_input_password' value='' id='input_2' autocomplete='off' autocapitalize='off' /></td>
    </tr>
    <tr>
        <td colspan=2 class="credentials_table_unified_cell" ><label for='input_3' id='label_input_3'>Send me an SMS Code</label><input type='checkbox' name='sms' class='credentials_input_checkbox' value='' id='input_3' autocomplete='off' autocapitalize='off' /></td>
    </tr>
    <tr>
        <td colspan=2 class="credentials_table_unified_cell" ><label for='input_4' id='label_input_4'>Use the mobile app</label><input type='checkbox' name='push' class='credentials_input_checkbox' value='' id='input_4' autocomplete='off' autocapitalize='off' /></td>
    </tr>
    <tr>
        <td colspan=2 class="credentials_table_unified_cell" ><label for='input_5' id='label_input_5'>SMS Code if you already have one</label><input type='password' name='duopassword' class='credentials_input_password' value='' id='input_5' autocomplete='off' autocapitalize='off' /></td>
    </tr>
    <tr id="submit_row">
        <td class="credentials_table_unified_cell"><input type=submit class="credentials_input_submit" value="Submit"></td>
    </tr>
    <tr>
        <td colspan=2 id="credentials_table_footer" ></td>
    </tr>
    </table>
    <input type=hidden name="vhost" value="standard">
    </form>
    <script language="javascript"><!--//
        softTokenInput = getSoftTokenInput();
        logonFormCompatible = getFormCompatibility();
        // Pass method names to the client for auto-submit triggered by the client
        externalWebHost.setWeblogonCallbacks(
             "weblogonAutoSubmit();",
             "challengeAutoSubmit();"
        );

        // Check if the softTokenInput exists or in case of RSA challenge mode
        if((softTokenFieldId != "") && (null != softTokenInput || challengeMode ) && edgeClientSoftTokenSupport()){
            externalWebHost.setWebLogonSoftTokenPrompt(getSoftTokenPrompt());
            externalWebHost.setWebLogonSoftTokenState(softTokenState);
        }

        // Check if the client can ask user for soft-token PIN
        if((softTokenFieldId != "") && (softTokenInput != null)
               && edgeClientSoftTokenSupport()
               && externalWebHost.canRequestWeblogonSoftTokenPIN()){
            softTokenInput.readOnly = true;
            softTokenPINAutoPopulate = true;
            // No need to request input of RSA PIN, as the client can show PIN input UI if needed,
            // make the field read-only
            // set bogus value to display
            softTokenInput.value = "********";
        }

        checkExternalAddCheckbox();
        setTimeout(function(){ window.sessionTimeout = new APMSessionTimeout(sessionTimedOut); }, 200);

        function dontChangePasswordClick(){
            var checkbox = document.getElementById("dont_change_password_checkbox");
            var password = document.getElementById("input_1");
            var verify = document.getElementById("input_2");
            if( checkbox.checked ){
                password.value = "";
                password.disabled = true;
                verify.value = "";
                verify.disabled = true;
            }else{
                password.disabled = false;
                verify.disabled = false;
            }
        }

        var finitvalues=['','','','',''];
        var sessionLogonCustomizations = ["","","","",""];
        var sessionLogonCustomizationPairs = [[], [], [], [], []];
        for( var i=0; i<sessionLogonCustomizations.length; i++ ){
            var pairs = ( sessionLogonCustomizations[i].indexOf(";") == -1 ? [ sessionLogonCustomizations[i] ] : sessionLogonCustomizations[i].trim().split(";") );
            for( var j=0; j<pairs.length; j++ ){
                if( pairs[j].indexOf("=>") != -1 ){
                    var pair = pairs[j].split("=>");
                    sessionLogonCustomizationPairs[i][pair[0]] = pair[1];
                }
            }
        }

        var sessionLogonValuesets = [ "", "", "", "", "" ];
        for( var i=0; i<sessionLogonValuesets.length; i++ ){
            var inpx = document.getElementById("input_" + (i+1) );
            if( inpx !== null && inpx.tagName.toUpperCase() == "SELECT" ){
                if( sessionLogonValuesets[i].trim() != "" ){
                    inpx.options.length = 0;
                    var options = sessionLogonValuesets[i].trim().split(";");
                    for( var j=0; j<options.length; j++ ){
                        inpx.options.add( new Option( options[j], options[j] ) );
                    }
                }
                if( sessionLogonCustomizations[i].trim() != "" ){
                    for( var j=0; j<inpx.options.length; j++ ){
                        if( typeof sessionLogonCustomizationPairs[i][ inpx.options[j].value ] != "undefined" ){
                            inpx.options[j].text = sessionLogonCustomizationPairs[i][ inpx.options[j].value ];
                        }
                    }
                }
                // set value
                for( var j=0; j<inpx.options.length; j++ ){
                    if( inpx.options[j].value == finitvalues[i] ){
                        inpx.value = finitvalues[i];
                        break;
                    }
                }
            }else if( document.getElementById("input_" + (i+1) + "_0" ) ){ // RADIO
                var initValue = finitvalues[i];
                var radio = null;
                var name = document.getElementById("input_" + (i+1) + "_0" ).name;
                if( sessionLogonValuesets[i].trim() != "" ){
                    var parent = document.getElementById( "label_input_" + (i+1) ).parentNode;
                    while( parent.childNodes.length > 1 ){
                        parent.removeChild( parent.lastChild );
                    }
                    var options = sessionLogonValuesets[i].trim().split(";");
                    for( var j=0; j<options.length; j++ ){
                        var div = parent.appendChild( document.createElement( "div" ) );
                        var elmdef = document.all && navigator.userAgent.match(/MSIE (\d+)/)[1] < 9 ? "<input type='radio'>" : "input";
                        var input = div.appendChild( document.createElement( elmdef ) );
                        if( input.type != 'radio' ){ input.type = 'radio'; }
                        input.id = "input_" + (i+1) + "_" + j;
                        input.name = "name";
                        input.value = options[j];
                        var label = div.appendChild( document.createElement( "label" ) );
                        label.htmlFor = input.id;
                        label.id = "label_" + input.id;
                        label.className = "radio-label";
                        label.style.display = "inline";
                        label.innerHTML = options[j];
                    }
                }
                if( sessionLogonCustomizations[i].trim() != "" ){
                    var j = 0;
                    while( ( radio = document.getElementById("input_" + (i+1) + "_" + j++ ) ) !== null ){ // what number
                        if( typeof sessionLogonCustomizationPairs[i][ radio.value ] != "undefined" ){
                            document.getElementById("label_input_" + (i+1) + "_" + (j-1) ).innerHTML = sessionLogonCustomizationPairs[i][ radio.value ];
                        }
                    }
                }
                var anyChecked = false, j = 0;
                while( initValue != "" && ( radio = document.getElementById("input_" + (i+1) + "_" + j++ ) ) !== null ){
                    radio.checked = ( radio.value == initValue );
                    if( radio.checked ){ anyChecked = true; }
                }
                if( !anyChecked && ( radio = document.getElementById("input_" + (i+1) + "_" + 0 ) ) !== null ){
                    radio.checked = true;
                }
            }else if( inpx !== null && inpx.tagName.toUpperCase() == "INPUT" && inpx.type.toUpperCase() == "CHECKBOX" ){
                if( inpx.disabled && finitvalues[i] != "" ){
                    inpx.checked = true;
                }else if( !inpx.disabled && inpx.value == "" ){
                    inpx.value = "1";
                }
            }
        }
    --></script>
    </td>
    <td id="main_table_image_cell"><img src="/public/images/customization//Common/agile-ext_apm_act_logon_page_ag/front_image_en.jpeg"></td></tr>
</table>

<div id="page_footer"><div>This product is licensed from F5 Networks. © 1999-2018 F5 Networks. All rights reserved. </div></div>
<script type="text/javascript">
    function F5_include_JS(jsFile)
    {
        document.write('<script type="text/javascript" src="'
                         + jsFile + '"></scr' + 'ipt>'); // <-- IE7 workaround
    }

    if ("" == "1") {
        var f5VirtualKeyboardMove = ( "" == 1 ? "1" : "0" );
        var f5VirtualKeyboardForceBlur = ( "" == 1 ? "0" : "1" );
        function VirtualKeyboard_CustomizedMessageTextGet()
{
  return 'Virtual Keyboard';
}

function VirtualKeyboard_CustomizedHideTextGet()
{
  return 'Hide Keyboard';
}

        var f5VirtualKeyboardMessageText =  VirtualKeyboard_CustomizedMessageTextGet();
        var f5VirtualKeyboardHideText =  VirtualKeyboard_CustomizedHideTextGet();
        F5_include_JS('/public/include/js/vk/f5_vk.js');
    }
</script>
<div id="MessageDIV" class="inspectionHostDIVSmall"></div>
<div id="formHeaderSoftToken" style="overflow: hidden; visibility: hidden; height: 0; width: 0;"></div>
</body>
</html>
```