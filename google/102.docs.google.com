```
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta content="width=300, initial-scale=1" name="viewport">
  <meta name="google-site-verification" content="LrdTUW9psUAMbh4Ia074-BPEVmcpBxF6Gwf0MSgQXZs">
  <title>Sign in - Google Accounts</title>
  <style>
  @font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 300;
  src: url(//fonts.gstatic.com/s/opensans/v15/mem5YaGs126MiZpBA-UN_r8OUuhs.ttf) format('truetype');
}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  src: url(//fonts.gstatic.com/s/opensans/v15/mem8YaGs126MiZpBA-UFVZ0e.ttf) format('truetype');
}
  </style>
  <style>
  h1, h2 {
  -webkit-animation-duration: 0.1s;
  -webkit-animation-name: fontfix;
  -webkit-animation-iteration-count: 1;
  -webkit-animation-timing-function: linear;
  -webkit-animation-delay: 0;
  }
  @-webkit-keyframes fontfix {
  from {
  opacity: 1;
  }
  to {
  opacity: 1;
  }
  }
  </style>
<style>
  html, body {
  font-family: Arial, sans-serif;
  background: #fff;
  margin: 0;
  padding: 0;
  border: 0;
  position: absolute;
  height: 100%;
  min-width: 100%;
  font-size: 13px;
  color: #404040;
  direction: ltr;
  -webkit-text-size-adjust: none;
  }
  button,
  input[type=button],
  input[type=submit] {
  font-family: Arial, sans-serif;
  font-size: 13px;
  }
  a,
  a:hover,
  a:visited {
  color: #427fed;
  cursor: pointer;
  text-decoration: none;
  }
  a:hover {
  text-decoration: underline;
  }
  h1 {
  font-size: 20px;
  color: #262626;
  margin: 0 0 15px;
  font-weight: normal;
  }
  h2 {
  font-size: 14px;
  color: #262626;
  margin: 0 0 15px;
  font-weight: bold;
  }
  input[type=email],
  input[type=number],
  input[type=password],
  input[type=tel],
  input[type=text],
  input[type=url] {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  display: inline-block;
  height: 36px;
  padding: 0 8px;
  margin: 0;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -moz-border-radius: 1px;
  -webkit-border-radius: 1px;
  border-radius: 1px;
  font-size: 15px;
  color: #404040;
  }
  input[type=email]:hover,
  input[type=number]:hover,
  input[type=password]:hover,
  input[type=tel]:hover,
  input[type=text]:hover,
  input[type=url]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  }
  input[type=email]:focus,
  input[type=number]:focus,
  input[type=password]:focus,
  input[type=tel]:focus,
  input[type=text]:focus,
  input[type=url]:focus {
  outline: none;
  border: 1px solid #4d90fe;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  }
  input[type=checkbox],
  input[type=radio] {
  -webkit-appearance: none;
  display: inline-block;
  width: 13px;
  height: 13px;
  margin: 0;
  cursor: pointer;
  vertical-align: bottom;
  background: #fff;
  border: 1px solid #c6c6c6;
  -moz-border-radius: 1px;
  -webkit-border-radius: 1px;
  border-radius: 1px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  position: relative;
  }
  input[type=checkbox]:active,
  input[type=radio]:active {
  background: #ebebeb;
  }
  input[type=checkbox]:hover {
  border-color: #c6c6c6;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  }
  input[type=radio] {
  -moz-border-radius: 1em;
  -webkit-border-radius: 1em;
  border-radius: 1em;
  width: 15px;
  height: 15px;
  }
  input[type=checkbox]:checked,
  input[type=radio]:checked {
  background: #fff;
  }
  input[type=radio]:checked::after {
  content: '';
  display: block;
  position: relative;
  top: 3px;
  left: 3px;
  width: 7px;
  height: 7px;
  background: #666;
  -moz-border-radius: 1em;
  -webkit-border-radius: 1em;
  border-radius: 1em;
  }
  input[type=checkbox]:checked::after {
  content: url(https://ssl.gstatic.com/ui/v1/menu/checkmark.png);
  display: block;
  position: absolute;
  top: -6px;
  left: -5px;
  }
  input[type=checkbox]:focus {
  outline: none;
  border-color: #4d90fe;
  }
  .stacked-label {
  display: block;
  font-weight: bold;
  margin: .5em 0;
  }
  .hidden-label {
  position: absolute !important;
  clip: rect(1px 1px 1px 1px); /* IE6, IE7 */
  clip: rect(1px, 1px, 1px, 1px);
  height: 0px;
  width: 0px;
  overflow: hidden;
  visibility: hidden;
  }
  input[type=checkbox].form-error,
  input[type=email].form-error,
  input[type=number].form-error,
  input[type=password].form-error,
  input[type=text].form-error,
  input[type=tel].form-error,
  input[type=url].form-error {
  border: 1px solid #dd4b39;
  }
  .error-msg {
  margin: .5em 0;
  display: block;
  color: #dd4b39;
  line-height: 17px;
  }
  .help-link {
  background: #dd4b39;
  padding: 0 5px;
  color: #fff;
  font-weight: bold;
  display: inline-block;
  -moz-border-radius: 1em;
  -webkit-border-radius: 1em;
  border-radius: 1em;
  text-decoration: none;
  position: relative;
  top: 0px;
  }
  .help-link:visited {
  color: #fff;
  }
  .help-link:hover {
  color: #fff;
  background: #c03523;
  text-decoration: none;
  }
  .help-link:active {
  opacity: 1;
  background: #ae2817;
  }
  .wrapper {
  position: relative;
  min-height: 100%;
  }
  .content {
  padding: 0 44px;
  }
  .main {
  padding-bottom: 100px;
  }
  /* For modern browsers */
  .clearfix:before,
  .clearfix:after {
  content: "";
  display: table;
  }
  .clearfix:after {
  clear: both;
  }
  /* For IE 6/7 (trigger hasLayout) */
  .clearfix {
  zoom:1;
  }
  .google-header-bar {
  height: 71px;
  border-bottom: 1px solid #e5e5e5;
  overflow: hidden;
  }
  .header .logo {
  background-image: url(https://ssl.gstatic.com/accounts/ui/logo_1x.png);
  background-size: 116px 38px;
  background-repeat: no-repeat;
  margin: 17px 0 0;
  float: left;
  height: 38px;
  width: 116px;
  }
  .header .logo-w {
  background-image: url(https://ssl.gstatic.com/images/branding/googlelogo/1x/googlelogo_color_112x36dp.png);
  background-size: 112px 36px;
  margin: 21px 0 0;
  }
  .header .secondary-link {
  margin: 28px 0 0;
  float: right;
  }
  .header .secondary-link a {
  font-weight: normal;
  }
  .google-header-bar.centered {
  border: 0;
  height: 108px;
  }
  .google-header-bar.centered .header .logo {
  float: none;
  margin: 40px auto 30px;
  display: block;
  }
  .google-header-bar.centered .header .secondary-link {
  display: none
  }
  .google-footer-bar {
  position: absolute;
  bottom: 0;
  height: 35px;
  width: 100%;
  border-top: 1px solid #e5e5e5;
  overflow: hidden;
  }
  .footer {
  padding-top: 7px;
  font-size: .85em;
  white-space: nowrap;
  line-height: 0;
  }
  .footer ul {
  float: left;
  max-width: 80%;
  min-height: 16px;
  padding: 0;
  }
  .footer ul li {
  color: #737373;
  display: inline;
  padding: 0;
  padding-right: 1.5em;
  }
  .footer a {
  color: #737373;
  }
  .lang-chooser-wrap {
  float: right;
  display: inline;
  }
  .lang-chooser-wrap img {
  vertical-align: top;
  }
  .lang-chooser {
  font-size: 13px;
  height: 24px;
  line-height: 24px;
  }
  .lang-chooser option {
  font-size: 13px;
  line-height: 24px;
  }
  .hidden {
  height: 0px;
  width: 0px;
  overflow: hidden;
  visibility: hidden;
  display: none !important;
  }
  .banner {
  text-align: center;
  }
  .card {
  background-color: #f7f7f7;
  padding: 20px 25px 30px;
  margin: 0 auto 25px;
  width: 304px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  }
  .card > *:first-child {
  margin-top: 0;
  }
  .rc-button,
  .rc-button:visited {
  display: inline-block;
  min-width: 46px;
  text-align: center;
  color: #444;
  font-size: 14px;
  font-weight: 700;
  height: 36px;
  padding: 0 8px;
  line-height: 36px;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  -o-transition: all 0.218s;
  -moz-transition: all 0.218s;
  -webkit-transition: all 0.218s;
  transition: all 0.218s;
  border: 1px solid #dcdcdc;
  background-color: #f5f5f5;
  background-image: -webkit-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: -moz-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: -ms-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: -o-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: linear-gradient(top,#f5f5f5,#f1f1f1);
  -o-transition: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  user-select: none;
  cursor: default;
  }
  .card .rc-button {
  width: 100%;
  padding: 0;
  }
  .rc-button.disabled,
  .rc-button[disabled] {
  opacity: .5;
  filter: alpha(opacity=50);
  cursor: default;
  pointer-events: none;
  }
  .rc-button:hover {
  border: 1px solid #c6c6c6;
  color: #333;
  text-decoration: none;
  -o-transition: all 0.0s;
  -moz-transition: all 0.0s;
  -webkit-transition: all 0.0s;
  transition: all 0.0s;
  background-color: #f8f8f8;
  background-image: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: -moz-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: -ms-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: -o-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: linear-gradient(top,#f8f8f8,#f1f1f1);
  -moz-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
  box-shadow: 0 1px 1px rgba(0,0,0,0.1);
  }
  .rc-button:active {
  background-color: #f6f6f6;
  background-image: -webkit-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: -moz-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: -ms-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: -o-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: linear-gradient(top,#f6f6f6,#f1f1f1);
  -moz-box-shadow: 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: 0 1px 2px rgba(0,0,0,0.1);
  }
  .rc-button-submit,
  .rc-button-submit:visited {
  border: 1px solid #3079ed;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1);
  background-color: #4d90fe;
  background-image: -webkit-linear-gradient(top,#4d90fe,#4787ed);
  background-image: -moz-linear-gradient(top,#4d90fe,#4787ed);
  background-image: -ms-linear-gradient(top,#4d90fe,#4787ed);
  background-image: -o-linear-gradient(top,#4d90fe,#4787ed);
  background-image: linear-gradient(top,#4d90fe,#4787ed);
  }
  .rc-button-submit:hover {
  border: 1px solid #2f5bb7;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  background-image: -webkit-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -moz-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -ms-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -o-linear-gradient(top,#4d90fe,#357ae8);
  background-image: linear-gradient(top,#4d90fe,#357ae8);
  }
  .rc-button-submit:active {
  background-color: #357ae8;
  background-image: -webkit-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -moz-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -ms-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -o-linear-gradient(top,#4d90fe,#357ae8);
  background-image: linear-gradient(top,#4d90fe,#357ae8);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  }
  .rc-button-red,
  .rc-button-red:visited {
  border: 1px solid transparent;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1);
  background-color: #d14836;
  background-image: -webkit-linear-gradient(top,#dd4b39,#d14836);
  background-image: -moz-linear-gradient(top,#dd4b39,#d14836);
  background-image: -ms-linear-gradient(top,#dd4b39,#d14836);
  background-image: -o-linear-gradient(top,#dd4b39,#d14836);
  background-image: linear-gradient(top,#dd4b39,#d14836);
  }
  .rc-button-red:hover {
  border: 1px solid #b0281a;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #c53727;
  background-image: -webkit-linear-gradient(top,#dd4b39,#c53727);
  background-image: -moz-linear-gradient(top,#dd4b39,#c53727);
  background-image: -ms-linear-gradient(top,#dd4b39,#c53727);
  background-image: -o-linear-gradient(top,#dd4b39,#c53727);
  background-image: linear-gradient(top,#dd4b39,#c53727);
  }
  .rc-button-red:active {
  border: 1px solid #992a1b;
  background-color: #b0281a;
  background-image: -webkit-linear-gradient(top,#dd4b39,#b0281a);
  background-image: -moz-linear-gradient(top,#dd4b39,#b0281a);
  background-image: -ms-linear-gradient(top,#dd4b39,#b0281a);
  background-image: -o-linear-gradient(top,#dd4b39,#b0281a);
  background-image: linear-gradient(top,#dd4b39,#b0281a);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  }
  .secondary-actions {
  text-align: center;
  }
</style>
<style media="screen and (max-width: 800px), screen and (max-height: 800px)">
  .google-header-bar.centered {
  height: 83px;
  }
  .google-header-bar.centered .header .logo {
  margin: 25px auto 20px;
  }
  .card {
  margin-bottom: 20px;
  }
</style>
<style media="screen and (max-width: 580px)">
  html, body {
  font-size: 14px;
  }
  .google-header-bar.centered {
  height: 73px;
  }
  .google-header-bar.centered .header .logo {
  margin: 20px auto 15px;
  }
  .content {
  padding-left: 10px;
  padding-right: 10px;
  }
  .hidden-small {
  display: none;
  }
  .card {
  padding: 20px 15px 30px;
  width: 270px;
  }
  .footer ul li {
  padding-right: 1em;
  }
  .lang-chooser-wrap {
  display: none;
  }
</style>
<style media="screen and (-webkit-min-device-pixel-ratio: 1.5), (min--moz-device-pixel-ratio: 1.5), (-o-min-device-pixel-ratio: 3 / 2), (min-device-pixel-ratio: 1.5)">
  .header .logo {
  background-image: url(https://ssl.gstatic.com/accounts/ui/logo_2x.png);
  }
  .header .logo-w {
  background-image: url(https://ssl.gstatic.com/images/branding/googlelogo/2x/googlelogo_color_112x36dp.png);
  }
</style>
<style>
  pre.debug {
  font-family: monospace;
  position: absolute;
  left: 0;
  margin: 0;
  padding: 1.5em;
  font-size: 13px;
  background: #f1f1f1;
  border-top: 1px solid #e5e5e5;
  direction: ltr;
  white-space: pre-wrap;
  width: 90%;
  overflow: hidden;
  }
</style>
<style>
  .banner h1 {
  font-family: 'Open Sans', arial;
  -webkit-font-smoothing: antialiased;
  color: #555;
  font-size: 42px;
  font-weight: 300;
  margin-top: 0;
  margin-bottom: 20px;
  }
  .banner h2 {
  font-family: 'Open Sans', arial;
  -webkit-font-smoothing: antialiased;
  color: #555;
  font-size: 18px;
  font-weight: 400;
  margin-bottom: 20px;
  }
  .signin-card {
  width: 274px;
  padding: 40px 40px;
  }
  .signin-card .profile-img {
  width: 96px;
  height: 96px;
  margin: 0 auto 10px;
  display: block;
  -moz-border-radius: 50%;
  -webkit-border-radius: 50%;
  border-radius: 50%;
  }
  .signin-card .profile-name {
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  margin: 10px 0 0;
  min-height: 1em;
  }
  .signin-card .profile-email {
  font-size: 16px;
  text-align: center;
  margin: 10px 0 20px 0;
  min-height: 1em;
  }
  .signin-card input[type=email],
  .signin-card input[type=password],
  .signin-card input[type=text],
  .signin-card input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  z-index: 1;
  position: relative;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  }
  .signin-card #Email,
  .signin-card #Passwd,
  .signin-card .captcha {
  direction: ltr;
  height: 44px;
  font-size: 16px;
  }
  .signin-card #Email + .stacked-label {
  margin-top: 15px;
  }
  .signin-card #reauthEmail {
  display: block;
  margin-bottom: 10px;
  line-height: 36px;
  padding: 0 8px;
  font-size: 15px;
  color: #404040;
  line-height: 2;
  margin-bottom: 10px;
  font-size: 14px;
  text-align: center;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  }
  .one-google p {
  margin: 0 0 10px;
  color: #555;
  font-size: 14px;
  text-align: center;
  }
  .one-google p.create-account,
  .one-google p.switch-account {
  margin-bottom: 60px;
  }
  .one-google .logo-strip {
  background-repeat: no-repeat;
  display: block;
  margin: 10px auto;
  background-image: url(https://ssl.gstatic.com/accounts/ui/wlogostrip_230x17_1x.png);
  background-size: 230px 17px;
  width: 230px;
  height: 17px;
  }
</style>
<style media="screen and (max-width: 800px), screen and (max-height: 800px)">
  .banner h1 {
  font-size: 38px;
  margin-bottom: 15px;
  }
  .banner h2 {
  margin-bottom: 15px;
  }
  .one-google p.create-account,
  .one-google p.switch-account {
  margin-bottom: 30px;
  }
  .signin-card #Email {
  margin-bottom: 0;
  }
  .signin-card #Passwd {
  margin-top: -1px;
  }
  .signin-card #Email.form-error,
  .signin-card #Passwd.form-error {
  z-index: 2;
  }
  .signin-card #Email:hover,
  .signin-card #Email:focus,
  .signin-card #Passwd:hover,
  .signin-card #Passwd:focus {
  z-index: 3;
  }
</style>
<style media="screen and (max-width: 580px)">
  .banner h1 {
  font-size: 22px;
  margin-bottom: 15px;
  }
  .signin-card {
  width: 260px;
  padding: 20px 20px;
  margin: 0 auto 20px;
  }
  .signin-card .profile-img {
  width: 72px;
  height: 72px;
  -moz-border-radius: 72px;
  -webkit-border-radius: 72px;
  border-radius: 72px;
  }
</style>
<style media="screen and (-webkit-min-device-pixel-ratio: 1.5), (min--moz-device-pixel-ratio: 1.5), (-o-min-device-pixel-ratio: 3 / 2), (min-device-pixel-ratio: 1.5)">
  .one-google .logo-strip {
  background-image: url(https://ssl.gstatic.com/accounts/ui/wlogostrip_230x17_2x.png);
  }
</style>
<style>
  .remember .bubble-wrap {
  position: absolute;
  padding-top: 3px;
  -o-transition: opacity .218s ease-in .218s;
  -moz-transition: opacity .218s ease-in .218s;
  -webkit-transition: opacity .218s ease-in .218s;
  transition: opacity .218s ease-in .218s;
  left: -999em;
  opacity: 0;
  width: 314px;
  margin-left: -20px;
  }
  .remember:hover .bubble-wrap,
  .remember input:focus ~ .bubble-wrap,
  .remember .bubble-wrap:hover,
  .remember .bubble-wrap:focus {
  opacity: 1;
  left: inherit;
  }
  .bubble-pointer {
  border-left: 10px solid transparent;
  border-right: 10px solid transparent;
  border-bottom: 10px solid #fff;
  width: 0;
  height: 0;
  margin-left: 17px;
  }
  .bubble {
  background-color: #fff;
  padding: 15px;
  margin-top: -1px;
  font-size: 11px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  }
  #stay-signed-in {
  float: left;
  }
  #stay-signed-in-tooltip {
  left: auto;
  margin-left: -20px;
  padding-top: 3px;
  position: absolute;
  top: 0;
  visibility: hidden;
  width: 314px;
  z-index: 1;
  }
  .dasher-tooltip {
  top: 380px;
  }
</style>
<style media="screen and (max-width: 800px), screen and (max-height: 800px)">
  .dasher-tooltip {
  top: 340px;
  }
</style>
<style>
  .jfk-tooltip {
  background-color: #fff;
  border: 1px solid;
  color: #737373;
  font-size: 12px;
  position: absolute;
  z-index: 800 !important;
  border-color: #bbb #bbb #a8a8a8;
  padding: 16px;
  width: 250px;
  }
 .jfk-tooltip h3 {
  color: #555;
  font-size: 12px;
  margin: 0 0 .5em;
  }
 .jfk-tooltip-content p:last-child {
  margin-bottom: 0;
  }
  .jfk-tooltip-arrow {
  position: absolute;
  }
  .jfk-tooltip-arrow .jfk-tooltip-arrowimplbefore,
  .jfk-tooltip-arrow .jfk-tooltip-arrowimplafter {
  display: block;
  height: 0;
  position: absolute;
  width: 0;
  }
  .jfk-tooltip-arrow .jfk-tooltip-arrowimplbefore {
  border: 9px solid;
  }
  .jfk-tooltip-arrow .jfk-tooltip-arrowimplafter {
  border: 8px solid;
  }
  .jfk-tooltip-arrowdown {
  bottom: 0;
  }
  .jfk-tooltip-arrowup {
  top: -9px;
  }
  .jfk-tooltip-arrowleft {
  left: -9px;
  top: 30px;
  }
  .jfk-tooltip-arrowright {
  right: 0;
  top: 30px;
  }
  .jfk-tooltip-arrowdown .jfk-tooltip-arrowimplbefore,.jfk-tooltip-arrowup .jfk-tooltip-arrowimplbefore {
  border-color: #bbb transparent;
  left: -9px;
  }
  .jfk-tooltip-arrowdown .jfk-tooltip-arrowimplbefore {
  border-color: #a8a8a8 transparent;
  }
  .jfk-tooltip-arrowdown .jfk-tooltip-arrowimplafter,.jfk-tooltip-arrowup .jfk-tooltip-arrowimplafter {
  border-color: #fff transparent;
  left: -8px;
  }
  .jfk-tooltip-arrowdown .jfk-tooltip-arrowimplbefore {
  border-bottom-width: 0;
  }
  .jfk-tooltip-arrowdown .jfk-tooltip-arrowimplafter {
  border-bottom-width: 0;
  }
  .jfk-tooltip-arrowup .jfk-tooltip-arrowimplbefore {
  border-top-width: 0;
  }
  .jfk-tooltip-arrowup .jfk-tooltip-arrowimplafter {
  border-top-width: 0;
  top: 1px;
  }
  .jfk-tooltip-arrowleft .jfk-tooltip-arrowimplbefore,
  .jfk-tooltip-arrowright .jfk-tooltip-arrowimplbefore {
  border-color: transparent #bbb;
  top: -9px;
  }
  .jfk-tooltip-arrowleft .jfk-tooltip-arrowimplafter,
  .jfk-tooltip-arrowright .jfk-tooltip-arrowimplafter {
  border-color:transparent #fff;
  top:-8px;
  }
  .jfk-tooltip-arrowleft .jfk-tooltip-arrowimplbefore {
  border-left-width: 0;
  }
  .jfk-tooltip-arrowleft .jfk-tooltip-arrowimplafter {
  border-left-width: 0;
  left: 1px;
  }
  .jfk-tooltip-arrowright .jfk-tooltip-arrowimplbefore {
  border-right-width: 0;
  }
  .jfk-tooltip-arrowright .jfk-tooltip-arrowimplafter {
  border-right-width: 0;
  }
  .jfk-tooltip-closebtn {
  background: url("//ssl.gstatic.com/ui/v1/icons/common/x_8px.png") no-repeat;
  border: 1px solid transparent;
  height: 21px;
  opacity: .4;
  outline: 0;
  position: absolute;
  right: 2px;
  top: 2px;
  width: 21px;
  }
  .jfk-tooltip-closebtn:focus,
  .jfk-tooltip-closebtn:hover {
  opacity: .8;
  cursor: pointer;
  }
  .jfk-tooltip-closebtn:focus {
  border-color: #4d90fe;
  }
</style>
<style media="screen and (max-width: 580px)">
  .jfk-tooltip {
  display: none;
  }
</style>
<style type="text/css">
.captcha-box {
  background: #fff;
  margin: 0 0 10px;
  overflow: hidden;
  padding: 10px;
}
.captcha-box .captcha-img {
  text-align: center;
}
.captcha-box .captcha-label {
  font-weight: bold;
  display: block;
  margin: .5em 0;
}
.captcha-box .captcha-msg {
  color: #999;
  display: block;
  position: relative;
}
.captcha-box .captcha-msg .accessibility-logo {
  float: right;
  border: 0;
}
.captcha-box .audio-box {
  position: absolute;
  top: 0;
}
</style>
<style>
.chromiumsync-custom-content {
  padding-top: 20px;
  margin-bottom: 0;
}
.form-panel {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transform: translateZ(0);
  -moz-transform: translateZ(0);
  -ms-transform: translateZ(0);
  -o-transform: translateZ(0);
  transform: translateZ(0);
  width: 100%;
}
.form-panel.first {
  z-index: 2;
}
.form-panel.second {
  z-index: 1;
}
.shift-form .form-panel.first {
  z-index: 1;
}
.shift-form .form-panel.second {
  z-index: 2;
}
.slide-in,
.slide-out {
  display: block;
  -webkit-transition-property: -webkit-transform, opacity;
  -moz-transition-property: -moz-transform, opacity;
  -ms-transition-property: -ms-transform, opacity;
  -o-transition-property: -o-transform, opacity;
  transition-property: transform, opacity;
  -webkit-transition-duration: 0.1s;
  -moz-transition-duration: 0.1s;
  -ms-transition-duration: 0.1s;
  -o-transition-duration: 0.1s;
  transition-duration: 0.1s;
  -webkit-transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
  -moz-transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
  -ms-transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
  -o-transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
  transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
}
.slide-out {
  -webkit-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0);
  -ms-transform: translate3d(0, 0, 0);
  -o-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
}
.shift-form .slide-out {
  opacity: 0;
  -webkit-transform: translate3d(-120%, 0, 0);
  -moz-transform: translate3d(-120%, 0, 0);
  -ms-transform: translate3d(-120%, 0, 0);
  -o-transform: translate3d(-120%, 0, 0);
  transform: translate3d(-120%, 0, 0);
}
.slide-in {
  -webkit-transform: translate3d(120%, 0, 0);
  -moz-transform: translate3d(120%, 0, 0);
  -ms-transform: translate3d(120%, 0, 0);
  -o-transform: translate3d(120%, 0, 0);
  transform: translate3d(120%, 0, 0);
}
.shift-form .slide-in {
  opacity: 1;
  -webkit-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0);
  -ms-transform: translate3d(0, 0, 0);
  -o-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
}
.error-msg {
  -webkit-transition: max-height 0.3s, opacity 0.3s 0s steps(10, end);
  -moz-transition: max-height 0.3s, opacity 0.3s 0s steps(10, end);
  -ms-transition: max-height 0.3s, opacity 0.3s 0s steps(10, end);
  -o-transition: max-height 0.3s, opacity 0.3s 0s steps(10, end);
  transition: max-height 0.3s, opacity 0.3s 0s steps(10, end);
  height: auto;
  max-height: 0;
  opacity: 0;
}
.has-error .error-msg {
  max-height: 3.5em;
  margin-top: 10px;
  margin-bottom: 10px;
  opacity: 1;
  visibility: visible;
}
.back-arrow {
  position: absolute;
  top: 37px;
  width: 24px;
  height: 24px;
  display: none;
  cursor: pointer;
}
.back-arrow {
  border-style: none;
}
.shift-form.back-arrow {
  display: block;
}
.back-arrow img {
  display: block;
}
#link-signup {
  text-align: center;
  font-size: 14px;
}
.shift-form #link-signup{
  display: none;
}
#link-signin-different {
  display: none;
  text-align: center;
  font-size: 14px;
}
.shift-form #link-signin-different {
  display: block;
}
.signin-card #profile-name {
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  margin: 0;
  min-height: 1em;
}
.signin-card.no-name #profile-name {
  display: none;
}
.signin-card.no-name #email-display {
  line-height: initial;
  margin-bottom: 16px;
}
.signin-card #email-display {
  display: block;
  padding: 0px 8px;
  color: rgb(64, 64, 64);
  line-height: 2;
  margin-bottom: 10px;
  font-size: 14px;
  text-align: center;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
.signin-card #Email {
  margin-top: 16px;
}
.need-help {
  float: right;
  text-align: right;
}
.form-panel {
  width: 274px;
}
#gaia_firstform {
  z-index: 2;
}
.signin-card {
  position: relative;
  overflow: hidden;
}
.signin-card #profile-name {
  color: #000;
}
.circle-mask {
  display: block;
  height: 96px;
  width: 96px;
  overflow: hidden;
  border-radius: 50%;
  margin-left: auto;
  margin-right: auto;
  z-index: 100;
  margin-bottom: 10px;
}
.circle {
  -webkit-transition-property: -webkit-transform;
  -moz-transition-property: -moz-transform;
  -ms-transition-property: -ms-transform;
  -o-transition-property: -o-transform;
  transition-property: transform;
  -webkit-transition-timing-function: cubic-bezier(.645,.045,.355,1);
  -moz-transition-timing-function: cubic-bezier(.645,.045,.355,1);
  -ms-transition-timing-function: cubic-bezier(.645,.045,.355,1);
  -o-transition-timing-function: cubic-bezier(.645,.045,.355,1);
  transition-timing-function: cubic-bezier(.645,.045,.355,1);
}
.circle {
  position: absolute;
  z-index: 101;
  height: 96px;
  width: 96px;
  border-radius: 50%;
  opacity: 0.99;
  overflow: hidden;
  background-repeat: no-repeat;
  background-position: center center;
}
.main {
  overflow: hidden;
}
.card-mask-wrap {
  position: relative;
  width: 360px;
  margin: 0 auto;
  z-index: 1;
}
.dasher-tooltip {
  position: absolute;
  left: 50%;
  margin-left: 150px;
}
.dasher-tooltip .tooltip-pointer {
  margin-top: 15px;
}
.dasher-tooltip p {
  margin-top: 0;
}
.dasher-tooltip p span {
  display: block;
}
.card {
  margin-bottom: 0;
}
.one-google {
  padding-top: 27px;
}
#canvas {
  -webkit-transition: opacity 0.075s;
  -moz-transition: opacity 0.075s;
  -ms-transition: opacity 0.075s;
  -o-transition: opacity 0.075s;
  transition: opacity 0.075s;
  opacity: 0.01;
}
.shift-form #canvas {
  opacity: 0.99;
}
.label {
  color: #404040;
}
#account-chooser-link {
  -webkit-transition: opacity 0.3s;
  -moz-transition: opacity 0.3s;
  -ms-transition: opacity 0.3s;
  -o-transition: opacity 0.3s;
  transition: opacity 0.3s;
}
.input-wrapper {
  position: relative;
}
.google-footer-bar {
  z-index: 2;
}
</style>
<style media="screen and (max-width: 580px)">
.back-arrow {
  top: 17px;
}
.circle-mask {
  height: 72px;
  width: 72px;
  background-size: 72px;
}
.circle {
  height: 72px;
  width: 72px;
}
#canvas {
  height: 72px;
  width: 72px;
}
.form-panel {
  width: 256px;
}
.card-mask-wrap {
  width: 300px;
}
.signin-card {
  width: 256px;
}
.signin-card #EmailFirst {
  margin-top: 15px;
}
.one-google {
  padding-top: 22px;
}
</style>
  </head>
  <body>
  <div class="wrapper">
  <div class="google-header-bar  centered">
  <div class="header content clearfix">
  <div class="logo logo-w" aria-label="Google"></div>
  </div>
  </div>
  <div class="main content clearfix">
<div class="banner">
<h1>
  One account. All of Google.
</h1>
  <h2 class="hidden-small">
  Sign in with your Google Account
  </h2>
</div>
<div class="main-content 
  
  
    no-name
  
  
  
">
<div class="card signin-card
  
    pre-shift
  
  
  
   no-name">
  <img class="circle-mask"
      
        
          src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png"
        
      >
  <form novalidate method="post" action="https://accounts.google.com/signin/v1/lookup" id="gaia_loginform">
  <input name="Page" type="hidden" value="PasswordSeparationSignIn">
  <input type="hidden" name="" value="">
  <input type="hidden" name="gxf" value="AFoagUUoby0mqcVv7S3jONwhQm1CClJGCw:1611329147388">
  <input type="hidden" name="continue" value="https://docs.google.com/">
  <input type="hidden" name="followup" value="https://docs.google.com/">
  <input type="hidden" name="emr" value="1">
  <input id="profile-information" name="ProfileInformation" type="hidden" value="">
  <input id="session-state" name="SessionState" type="hidden" value="AEThLlzppnqMs5mVoXtxzXx_avhl7re_umItbVylIADyKMsaLI4tEgWC-aqO05YmmBrARKNMUmvw6cFEAnrQKhnbrvxSFNgrNIkk43psbuXqFpII3GFHEl4Zk8Jd0J-CH2EJvmfA2xsOBwKpCdqwtHNWh2JFd-ev5UjLp6uB5BG1LBbmNkwaI0HfT42bHSv-mkGkkd7zh1wf">
  <input name="flowName" type="hidden" value="GlifWebSignIn">
  <input type="hidden" id="_utf8" name="_utf8" value="&#9731;"/>
  <input type="hidden" name="bgresponse" id="bgresponse" value="js_disabled">
  <div class="form-panel first valid" id="gaia_firstform">
  <div class="slide-out ">
  <div class="input-wrapper focused">
  <div id="identifier-shown">
  <div>
  <label class="hidden-label" for="Email">
  Enter your email</label>
  <input id="Email" type="email" value="" spellcheck="false"
                   name="Email"
                   
                     placeholder="Email or phone"
                   
                   
                   
                   >
  <input id="Passwd-hidden" type="password" spellcheck="false" class="hidden">
  </div>
  </div>
  <span role="alert" class="error-msg" id="errormsg_0_Email"></span>
  </div>
<input id="next" name="signIn" class="rc-button rc-button-submit" type="submit" value="Next">
  <a class="need-help"
          href="https://accounts.google.com/signin/usernamerecovery?continue=https%3A%2F%2Fdocs.google.com%2F&amp;hl=en">
  Find my account
  </a>
  </div>
  </div>
  </form>
</div>
  <div class="card-mask-wrap
    
        
     no-name">
  <div class="card-mask">
  <div class="one-google">
  <p class="create-account">
  <span id="link-signin-different">
  <a href="https://accounts.google.com/AccountChooser?continue=https%3A%2F%2Fdocs.google.com%2F&amp;followup=https%3A%2F%2Fdocs.google.com%2F&amp;emr=1">
  Sign in with a different account
  </a>
  </span>
  <span id="link-signup">
  <a href="https://accounts.google.com/SignUp?continue=https%3A%2F%2Fdocs.google.com%2F">
  Create account
  </a>
  </span>
  </p>
<p class="tagline">
  One Google Account for everything Google
</p>
<div class="logo-strip"></div>
  </div>
  </div>
  </div>
</div>
  </div>
  <div class="google-footer-bar">
  <div class="footer content clearfix">
  <ul id="footer-list">
  <li>
  <a href="https://www.google.com/intl/en/about" target="_blank">
  About Google
  </a>
  </li>
  <li>
  <a href="https://accounts.google.com/TOS?loc=US&hl=en&privacy=true" target="_blank">
  Privacy
  </a>
  </li>
  <li>
  <a href="https://accounts.google.com/TOS?loc=US&hl=en" target="_blank">
  Terms
  </a>
  </li>
  <li>
  <a href="http://www.google.com/support/accounts?hl=en" target="_blank">
  Help
  </a>
  </li>
  </ul>
  </div>
</div>
  </div>
<script type="text/javascript" nonce="OIJ7gH/4G/AVVPvCOJBJxw">
  var gaia_attachEvent = function(element, event, callback) {
  if (element && element.addEventListener) {
  element.addEventListener(event, callback, false);
  } else if (element && element.attachEvent) {
  element.attachEvent('on' + event, callback);
  }
  };
  (function() {
  var gaia_hideNavBar = function() {
  setTimeout(function() {
  window.scrollTo(0, 1);
  }, 0);
  };
  gaia_attachEvent(window, 'load', gaia_hideNavBar);
  })();
</script>
  <script type="text/javascript" nonce="OIJ7gH/4G/AVVPvCOJBJxw">(function(){var U=function(l){return l},p=this||self,m=function(l,r){if((l=(r=null,p).trustedTypes,!l)||!l.createPolicy)return r;try{r=l.createPolicy("bg",{createHTML:U,createScript:U,createScriptURL:U})}catch(S){p.console&&p.console.error(S.message)}return r};(0,eval)(function(l,r){return(r=m())&&1===l.eval(r.createScript("1"))?function(S){return r.createScript(S)}:function(S){return""+S}}(p)(Array(7824*Math.random()|0).join("\n")+'(function(){var lF=function(l,U){return l[U]<<24|l[(U|0)+1]<<16|l[(U|0)+2]<<8|l[(U|0)+3]},rw=function(l,U,r,p){try{for(p=0;79669387488!=p;)l+=(U<<4^U>>>5)+(U|0)^(p|0)+(r[p&3]|0),p+=2489668359,U+=(l<<4^l>>>5)+(l|0)^(p|0)+(r[p>>>11&3]|0);return[l>>>24,l>>16&255,l>>8&255,l&255,U>>>24,U>>16&255,U>>8&255,U&255]}catch(v){throw v;}},A=function(l,U){U.M=("E:"+l.message+":"+l.stack).slice(0,2048)},Y=[],SG=[],I=function(l,U){return(U=n(l),U&128)&&(U=U&127|n(l)<<7),U},Uh=function(l,U,r,p,v,S){l.H++;try{for(v=(S=l.v,U=0,5001),p=void 0;(l.xb||--v)&&(l.P||(U=l.V(168))<S);)try{r=void 0,l.P?p=l.K(l.P):(T(108,l,U),r=n(l),p=l.V(r)),p&&p.call?p(l):V(l,21,0,r),l.i=true,C(false,false,l)}catch(m){m!=l.s&&(l.V(149)?V(l,22,m):T(149,l,m))}v||V(l,33)}catch(m){try{V(l,22,m)}catch(L){A(L,l)}}l.H--},K=[],T=function(l,U,r){if(168==l||108==l)if(U.I[l])U.I[l][U.G](r);else U.I[l]=U.Gs(r);else if(137!=l&&176!=l&&205!=l&&46!=l&&139!=l||!U.I[l])U.I[l]=U.g(U.V,r);39==l&&sh(U)},D=function(l,U){for(U=[];l--;)U.push(255*Math.random()|0);return U},Q=false,e=[],pV=function(l,U){return U(function(r){r(l)}),[function(){return l}]},iF=function(l,U){T(168,((l.kb.push(l.I.slice()),l).I[168]=void 0,l),U)},sh=function(l){l.FC=B(l,l.V(168))<<24|B(l,l.V(168))<<16|B(l,l.V(168))<<8|B(l,l.V(168)),l.O=void 0},P=[],mk=function(l,U,r,p,v,S,m,L){return m=l.substring(0,(L=l.substring(3),3)),(S=W[m+"_"])?S(L,U,r):(m=W[m])?(v=function(f,J){p.invoke(f,true,J)},p=new m(L,r?function(){U(v)}:void 0),r||U(v),[function(f){return p.invoke(void 0,false,f)}]):pV(l,U)},n=function(l,U,r,p){if(l.P)return l.K(l.L);return((U=(r=(U=l.V(168),U)>>3,B(l,U)),l).O!=r>>3&&(l.O=r>>3,p=l.V(39),l.vl=rw(l.FC,l.O,[0,0,p[1],p[2]])),U)^l.vl[r%8]},g=function(l,U){try{LV(l,U,this)}catch(r){A(r,this)}},LV=function(l,U,r,p,v){for(r.i=false,(r.L=void 0,(p=[],r.B=(r.N=0,25),r.R=false,r).P=void 0,r).Ik=(r.Gs=(r.H=0,function(S,m,L){return(m=(L=function(){return S},function(){return L()}),m)[this.G]=function(f){S=f},m}),[]),r.g=function(S,m,L,f,J,H){return H=(L=(J=(f=this,function(){return L()}),function(){return L[(f.Vn|0)+(J[f.$]===S|0)-!H[f.$]]}),f.F),J[f.G]=function(b){L[f.Qn]=b},J[f.G](m),m=J},v=r.h=0;128>v;v++)p[v]=String.fromCharCode(v);c(r,[SG,(c((r.v=(T(37,(T(51,(T(47,r,(T(25,r,(T(239,r,(T(158,r,(T(7,(T(167,(T(6,r,(T(44,r,(r.kb=(T(138,r,(T(230,(T(205,r,(r.b6=!(T(229,(r.Av=(v=(T(166,(T(97,(T(139,(T(241,r,(T(32,(T(189,r,(T(((r.fj=(T(236,r,(r.U=(T(240,(T((T(156,((T(149,r,((T(40,(T(65,r,(T(46,(T(116,r,(T(99,r,(T(0,(T(36,r,(T(176,r,(T(108,(T(((r.nj=function(S){this.l=S},r.l=(r.I=[],r),r).J=[],168),r,0),r),0),D(4))),function(S,m,L,f,J,H){if(!C(true,true,S)){if((S=(J=(m=(J=n((m=n((H=(L=n(S),n)(S),S)),S)),H=S.V(H),S.V(m)),S.V(J)),S.V(L)),"object")==fV(S)){for(f in L=[],S)L.push(f);S=L}for(m=0<(f=0,L=S.length,m)?m:1;f<L;f+=m)H(S.slice(f,(f|0)+(m|0)),J)}})),r),function(S){vR(4,S)}),{})),function(S,m){(m=n(S),S=S.V(m),S)[0].removeEventListener(S[1],S[2],false)})),r),[]),function(S,m,L,f){(m=(L=(f=n(S),n(S)),n(S)),S.l)==S&&(m=S.V(m),L=S.V(L),S.V(f)[L]=m,39==f&&(S.O=void 0,2==L&&sh(S)))})),T(221,r,function(S,m,L,f,J,H,b){if(b=(m=(f=n(S),I(S)),""),S.I[14])for(L=S.V(14),H=L.length,J=0;m--;)J=((J|0)+(I(S)|0))%H,b+=p[L[J]];else for(;m--;)b+=p[n(S)];T(f,S,b)}),r),function(S,m,L,f){if(f=S.kb.pop()){for(L=n(S);0<L;L--)m=n(S),f[m]=S.I[m];S.I=(f[37]=S.I[f[46]=S.I[46],37],f)}else T(168,S,S.v)}),T)(162,r,function(S,m,L,f,J,H,b,E,t,O,k,z,h){for(h=(t=(L=(O=((H=(b=n(S),f=0,function(q,R){for(;J<q;)f|=n(S)<<J,J+=8;return f>>=(R=f&(1<<q)-(J-=q,1),q),R}),J=0,H(3))|0)+1,H(5)),[]),k=0);h<L;h++)m=H(1),t.push(m),k+=m?0:1;for(z=(k=((k|0)-1).toString(2).length,h=0,[]);h<L;h++)t[h]||(z[h]=H(k));for(H=0;H<L;H++)t[H]&&(z[H]=n(S));for(E=[];O--;)E.push(S.V(n(S)));T(b,S,function(q,R,y,F,u){for(u=(F=[],y=[],0);u<L;u++){if(!(R=z[u],t)[u]){for(;R>=F.length;)F.push(n(q));R=F[R]}y.push(R)}q.L=(q.P=q.g((F=q.K,F),E.slice()),q.g(F,y))})}),317)),T)(216,r,function(S,m){iF(S,((m=S.V(n(S)),Z)(m),m))}),r.Y=false,r),G),161),r,function(S,m,L,f){f=(m=n((f=(L=n(S),n(S)),S)),S.V(f)),L=S.V(L),T(m,S,L in f|0)}),r),0),[]),T(90,r,r),function(S){S.D(3)})),function(S,m){(m.push(S[0]<<24|S[1]<<16|S[2]<<8|S[3]),m).push(S[4]<<24|S[5]<<16|S[6]<<8|S[7]),m.push(S[8]<<24|S[9]<<16|S[10]<<8|S[11])}),T)(137,r,[165,0,0]),81),r,function(S,m,L,f){(f=(m=(m=(f=n(S),n(S)),L=n(S),S.V(m)),S).V(f),T)(L,S,f[m])}),0)),r),function(S){vR(1,S)}),function(S,m,L,f,J){for(m=(J=(L=I((f=n(S),S)),[]),0);m<L;m++)J.push(n(S));T(f,S,J)})),r),[0,0,0]),T(197,r,function(S){S.D(4)}),r),function(S,m,L,f,J){(J=(L=(f=(m=(f=n((J=(m=n((L=n(S),S)),n(S)),S)),S).V(m),S).V(f),S.V(L)),S).V(J),0)!==L&&(J=Ac(1,f,J,S,L,m),L.addEventListener(m,J,Q),T(240,S,[L,m,J]))}),r),function(S,m,L){m=n((L=n(S),S)),T(m,S,""+S.V(L))}),window.performance||{}),v.timeOrigin||(v.timing||{}).navigationStart||0),r),function(S,m){C(true,false,S)||(m=Yq(S),T(m.C,S,m.T.apply(m.Z,m.X)))}),1),[])),r),function(S,m,L,f,J,H,b){C(true,false,S)||(J=Yq(S),m=J.T,f=J.X,L=J.Z,H=f.length,0==H?b=new L[m]:1==H?b=new L[m](f[0]):2==H?b=new L[m](f[0],f[1]):3==H?b=new L[m](f[0],f[1],f[2]):4==H?b=new L[m](f[0],f[1],f[2],f[3]):V(S,22),T(J.C,S,b))}),function(S,m,L,f){m=(L=n((f=n(S),S)),n(S)),T(m,S,S.V(f)||S.V(L))})),[]),function(S,m,L,f){(L=(f=n((m=(L=n(S),n(S)),S)),m=S.V(m),S.V(L)==m),T)(f,S,+L)})),function(S,m,L){(m=(L=(m=(L=n(S),n(S)),0)!=S.V(L),S.V(m)),L)&&T(168,S,m)})),r),function(S,m,L){C(true,false,S)||(L=n(S),m=n(S),T(m,S,function(f){return eval(f)}(Jc(S.V(L)))))}),r),function(){}),function(S){S.l6(4)})),function(S,m,L){T((m=(m=(L=n((m=n(S),S)),S).V(m),fV(m)),L),S,m)})),function(S,m,L,f,J){T((L=(f=(f=n((L=(J=n(S),m=n(S),n(S)),S)),S.V(f)),m=S.V(m),S).V(L),J),S,Ac(f,L,m,S))})),function(S,m,L,f){T((f=(m=(L=n(S),n(S)),n(S)),f),S,S.V(L)>>m)})),r),function(S,m,L,f){T((L=(m=(f=(m=n(S),n)(S),S.V(m)),S.V(f)),f),S,L+m)}),r),2048),0),r.W=[],r),[K,l]),U).XC]),w(U.Pl,r,true)},a=function(l,U,r,p){for(p=(r=[],U|0)-1;0<=p;p--)r[(U|0)-1-(p|0)]=l>>8*p&255;return r},M=function(l){return l},W,Yq=function(l,U,r,p,v,S){for(S=(U=((p=n((v={},l)),v).C=n(l),v.X=[],r=l.l==l?(n(l)|0)-1:1,n(l)),0);S<r;S++)v.X.push(n(l));for(v.T=l.V(p);r--;)v.X[r]=l.V(v.X[r]);return v.Z=l.V(U),v},HR=function(l,U,r,p,v){if(p=(l.i=false,U)[0],p==Y)l.B=25,l.F(U);else if(p==x){r=U[1];try{v=l.F(U)}catch(S){A(S,l),v=l.M}r(v)}else if(p==e)l.F(U);else if(p==K)l.F(U);else if(p==SG){try{for(v=0;v<l.J.length;v++)try{r=l.J[v],r[0][r[1]](r[2])}catch(S){}}catch(S){}(0,U[l.J=[],1])(function(S,m){l.S(S,true,m)})}else if(p==P)return v=U[2],T(160,l,U[6]),T(99,l,v),l.F(U)},bF=function(l,U,r,p,v){return p=mk(l,function(S){r=(U&&d(U),S),v(),v=void 0},(r=void 0,v=function(){},!!U))[0],{invoke:function(S,m,L,f,J){if(!m)return m=p(L),S&&S(m),m;(J=function(){r(function(H){d(function(){S(H)})},L)},r)?J():(f=v,v=function(){d((f(),J))})}}},nV=[],G=this||self,fV=function(l,U,r){if((r=typeof l,"object")==r)if(l){if(l instanceof Array)return"array";if(l instanceof Object)return r;if("[object Window]"==(U=Object.prototype.toString.call(l),U))return"object";if("[object Array]"==U||"number"==typeof l.length&&"undefined"!=typeof l.splice&&"undefined"!=typeof l.propertyIsEnumerable&&!l.propertyIsEnumerable("splice"))return"array";if("[object Function]"==U||"undefined"!=typeof l.call&&"undefined"!=typeof l.propertyIsEnumerable&&!l.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==r&&"undefined"==typeof l.call)return"object";return r},x=(g.prototype.zs=function(){return n(this)},g.prototype.V=function(l,U){if(void 0===(U=this.I[l],U))throw V(this,30,0,l),this.s;for(l=7;l--;);return U()},[]),Z=function(l){isNaN(l)||(l>>3).toString(16)},I9=(g.prototype.Wl=function(l,U,r,p){try{p=l[((U|0)+2)%3],l[U]=(l[U]|0)-(l[((U|0)+1)%3]|0)-(p|0)^(1==U?p<<r:p>>>r)}catch(v){throw v;}},function(l,U){if(l=(U=null,G).trustedTypes,!l||!l.createPolicy)return U;try{U=l.createPolicy("bg",{createHTML:M,createScript:M,createScriptURL:M})}catch(r){G.console&&G.console.error(r.message)}return U}),Ac=function(l,U,r,p,v,S){return function(){if(p.l==p){var m=[P,r,U,void 0,v,S,arguments];if(2==l)var L=(c(p,m),w(false,p,false));else if(1==l){var f=!p.U.length;(c(p,m),f)&&w(false,p,false)}else L=HR(p,m);return L}}},d=G.requestIdleCallback?function(l){requestIdleCallback(function(){l()},{timeout:4})}:G.setImmediate?function(l){setImmediate(l)}:function(l){setTimeout(l,0)},X,N=function(l,U,r,p,v,S){if(l.l==l)for(S=l.V(U),176==U?(U=function(m,L,f,J,H){if(S.cl!=(f=((L=S.length,L)|0)-4>>3,f)){H=[0,(S.cl=f,J=(f<<3)-4,0),v[1],v[2]];try{S.Ui=rw(lF(S,J),lF(S,(J|0)+4),H)}catch(b){throw b;}}S.push(S.Ui[L&7]^m)},v=l.V(139)):U=function(m){S.push(m)},p&&U(p&255),l=r.length,p=0;p<l;p++)U(r[p])},Eh=function(l,U,r,p,v){for(p=(r=0,U=[],0);p<l.length;p++)v=l.charCodeAt(p),128>v?U[r++]=v:(2048>v?U[r++]=v>>6|192:(55296==(v&64512)&&p+1<l.length&&56320==(l.charCodeAt(p+1)&64512)?(v=65536+((v&1023)<<10)+(l.charCodeAt(++p)&1023),U[r++]=v>>18|240,U[r++]=v>>12&63|128):U[r++]=v>>12|224,U[r++]=v>>6&63|128),U[r++]=v&63|128);return U},V=(X=g.prototype,X.G="toString",function(l,U,r,p,v){if(3<(r=(p=(0==(void 0!=(U=(v=l.V(108)>>3,[U,v>>8&255,v&255]),p)&&U.push(p),l.V(46)).length&&(l.I[46]=void 0,T(46,l,U)),""),r&&(r.message&&(p+=r.message),r.stack&&(p+=":"+r.stack)),l.V(37)),r)){(p=(r-=((p=p.slice(0,(r|0)-3),p).length|0)+3,Eh(p.replace(/\\r\\n/g,"\\n"))),U=l.l,l).l=l;try{N(l,176,a(p.length,2).concat(p),12)}finally{l.l=U}}T(37,l,r)}),B=(g.prototype.S=(X.s=(X.xb=false,{}),function(l,U,r,p,v){if(this.M)l(this.M);else try{p=!this.U.length,v=[],c(this,[Y,v,r]),c(this,[x,l,v]),U&&!p||w(U,this,true)}catch(S){A(S,this),l(this.M)}}),X.$="caller",function(l,U){if(U>=l.v)throw V(l,31),l.s;return(T(168,l,(U|0)+8),l).W[U>>3]}),hc=(g.prototype.Mx=(g.prototype.K=function(l){return(l=l().shift(),this).P().length||this.L().length||(this.L=this.P=void 0),l},function(l,U,r){if(3==l.length){for(r=0;3>r;r++)U[r]+=l[r];for(r=[13,8,13,12,16,5,3,(l=0,10),15];9>l;l++)U[3](U,l%3,r[l])}}),X.Qn=36,X.Vn=35,function(l,U,r){return(T(168,l,((((r=l.V(168),Z)(U),Z(r),l.W)&&r<l.v?(T(168,l,l.v),iF(l,U)):T(168,l,U),Uh)(l),r)),l).V(99)}),c=(((((X=g.prototype,X).Oi=function(){return Math.floor(this.A())},X.si=function(l,U,r){return l^((U=((U^=U<<13,U^=U>>17,U)^U<<5)&r)||(U=1),U)},X.Yb=function(l,U,r,p,v){for(v=p=0;v<l.length;v++)p+=l.charCodeAt(v),p+=p<<10,p^=p>>6;return p+=p<<3,p^=p>>11,l=p+(p<<15)>>>0,p=new Number(l&(1<<U)-1),p[0]=(l>>>U)%r,p},X.A=(window.performance||{}).now?function(){return this.Av+window.performance.now()}:function(){return+new Date},X).yn=function(l,U,r,p){for(;r--;)168!=r&&108!=r&&U.I[r]&&(U.I[r]=U[p](U[l](r),this));U[l]=this},X).Lj=function(){return Math.floor(this.h+(this.A()-this.j))},X).Rk=function(l,U,r,p,v,S){for(r=(p=(S=0,[]),0);S<l.length;S++)for(r+=U,v=v<<U|l[S];7<r;)r-=8,p.push(v>>r&255);return p},function(l,U){l.U.splice(0,0,U)}),qS=(g.prototype.F=function(l,U){return U={},l={},function(r,p,v,S,m,L,f,J,H,b,E,t,O,k,z){S=l,l=U;try{if(b=r[0],b==nV)return S==U?10:101;if(b==K){k=r[1];try{for(J=(E=(f=atob(k),O=0),[]);E<f.length;E++)z=f.charCodeAt(E),255<z&&(J[O++]=z&255,z>>=8),J[O++]=z;T(39,this,(this.v=(this.W=J,this.W.length<<3),[0,0,0]))}catch(h){h!=this.s&&V(this,17,h);return}Uh(this)}else if(b==Y)r[1].push(this.V(205).length,this.V(176).length,this.V(37),this.V(137).length),T(99,this,r[2]),this.I[213]&&hc(this,this.V(213));else{if(b==x){(t=(p=a((E=r[2],(this.V(137).length|0)+2),2),this).l,this).l=this;try{m=this.V(46),0<m.length&&N(this,137,a(m.length,2).concat(m),15),N(this,137,[1],104),N(this,137,[7]),f=0,H=this.V(176),f-=(this.V(137).length|0)+5,f+=this.V(189)&2047,4<H.length&&(f-=(H.length|0)+3),0<f&&N(this,137,a(f,2).concat(D(f)),10),4<H.length&&N(this,137,a(H.length,2).concat(H),153)}finally{this.l=t}if((J=D(2).concat(this.V(137)),J)[1]=J[0]^3,J[3]=J[1]^p[0],J[4]=J[1]^p[1],L=this.qx(J))L="!"+L;else for(L="",f=0;f<J.length;f++)v=J[f][this.G](16),1==v.length&&(v="0"+v),L+=v;return(T((this.V((O=L,205)).length=E.shift(),this.V(176).length=E.shift(),37),this,E.shift()),this.V(137)).length=E.shift(),O}if(b==e)hc(this,r[1]);else if(b==P)return hc(this,r[1])}}finally{l=S}}}(),g.prototype.qx=function(l,U,r,p){if(r=window.btoa){for(p=0,U="";p<l.length;p+=8192)U+=String.fromCharCode.apply(null,l.slice(p,p+8192));l=r(U).replace(/\\+/g,"-").replace(/\\//g,"_").replace(/=/g,"")}else l=void 0;return l},function(l,U,r){return U.S(function(p){r=p},false,l),r}),w=((g.prototype.l6=function(l,U,r){for(r=n(this),U=0;0<l;l--)U=U<<8|n(this);T(r,this,U)},g.prototype).D=function(l,U,r,p){N(this,(p=(r=n((l&=(U=l&4,3),this)),n)(this),r=this.V(r),U&&(r=Eh((""+r).replace(/\\r\\n/g,"\\n"))),l&&N(this,p,a(r.length,2)),p),r)},function(l,U,r,p,v,S){if(U.U.length){U.Y=(U.b6=(U.Y&&0(),l),true);try{v=U.A(),U.u6=v,U.j=v,p=Td(U,l),S=U.A()-U.j,U.h+=S,S<(r?0:10)||0>=U.B--||(S=Math.floor(S),U.Ik.push(254>=S?S:254))}finally{U.Y=false}return p}}),vR=function(l,U,r,p){N((r=(p=n(U),n(U)),U),r,a(U.V(p),l))},Td=function(l,U,r,p){for(p={};l.U.length;){if(r=HR(l,(r=(l.R=false,l.U.pop()),r)),U&&l.R){d((p.o=l,function(v){return function(){w(true,v.o,true)}}(p)));break}p={o:p.o}}return r},C=function(l,U,r,p){if(p=0<r.N&&r.Y&&r.b6&&1>=r.H&&!r.P&&!r.R&&(r.i||!l)&&0==document.hidden,!p||(p?r.A():r.u6)-r.j<r.N-(U?255:l?5:2))return false;return r.R=((T((l=r.V(l?108:168),168),r,r.v),r.U).push([e,l]),true)},Jc=function(l,U){return(U=I9())&&1===l.eval(U.createScript("1"))?function(r){return U.createScript(r)}:function(r){return""+r}}(G);((W=G.botguard||(G.botguard={}),25)<W.m||(W.m=26,W.bg=bF,W.a=mk),W).fPI_=function(l,U,r,p){return[(p=new g(l,{XC:U,Pl:r}),function(v){return qS(v,p)})]};try{W.u||(G.addEventListener("unload",function(){},Q),W.u=1)}catch(l){}try{G.addEventListener("test",null,Object.defineProperty({},"passive",{get:function(){Q={passive:true}}}))}catch(l){};}).call(this);'));}).call(this);</script>
  <script type="text/javascript" nonce="OIJ7gH/4G/AVVPvCOJBJxw">
  document.bg = new botguard.bg('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');
  </script>
<script nonce="OIJ7gH/4G/AVVPvCOJBJxw">
  gaia = window.gaia || {};
  gaia.ps = gaia.ps || {};
  gaia.ps.hasPrefilledIdentifier = false;
  function gaia_parseFragment() {
  var hash = location.hash;
  var params = {};
  if (!hash) {
  return params;
  }
  var paramStrs = decodeURIComponent(hash.substring(1)).split('&');
  for (var i = 0; i < paramStrs.length; i++) {
      var param = paramStrs[i].split('=');
      params[param[0]] = param[1];
    }
    return params;
  }

  function gaia_prefillEmail() {
    var email = null;
    var form = null;
    if (document.getElementById) {
      email = document.getElementById('Email');
      form = document.getElementById('gaia_loginform');
    }
    if (form && email && (email.value == null || email.value == '')
        && (email.type != 'hidden')) {
      hashParams = gaia_parseFragment();
      if (hashParams['Email'] && hashParams['Email'] != '') {
        email.value = hashParams['Email'];
      }
    }
  }

  
  try {
    gaia_prefillEmail();
  } catch (e) {
  }
  
</script>
<script nonce="OIJ7gH/4G/AVVPvCOJBJxw">
  var gaia_scrollToElement = function(element) {
  var calculateOffsetHeight = function(element) {
  var curtop = 0;
  if (element.offsetParent) {
  while (element) {
  curtop += element.offsetTop;
  element = element.offsetParent;
  }
  }
  return curtop;
  }
  var siginOffsetHeight = calculateOffsetHeight(element);
  var scrollHeight = siginOffsetHeight - window.innerHeight +
  element.clientHeight + 0.02 * window.innerHeight;
  window.scroll(0, scrollHeight);
  }
</script>
  <script nonce="OIJ7gH/4G/AVVPvCOJBJxw">
  if (gaia.ps.hasPrefilledIdentifier) {
  var form = document.getElementById('gaia_loginform');
  if (form) {
  form.submit();
  }
  }
  </script>
<script nonce="OIJ7gH/4G/AVVPvCOJBJxw">
  (function(){
  gaia_onLoginSubmit = function() {
  try {
  gaia.loginAutoRedirect.stop();
  } catch (err) {
  // do not prevent form from being submitted
  }
  try {
  document.bg.invoke(function(response) {
  document.getElementById('bgresponse').value = response;
  });
  } catch (err) {
  document.getElementById('bgresponse').value = '';
  }
  return true;
  }
  document.getElementById('gaia_loginform').onsubmit = gaia_onLoginSubmit;
  var signinButton;
  signinButton = document.getElementById('next');
  gaia_attachEvent(window, 'load', function(){
  gaia_scrollToElement(signinButton);
  });
  })();
</script>
  <script nonce="OIJ7gH/4G/AVVPvCOJBJxw">var e=this,g=function(b,c){b=b.split(".");var a=e;b[0]in a||!a.execScript||a.execScript("var "+b[0]);for(var d;b.length&&(d=b.shift());)b.length||void 0===c?a[d]?a=a[d]:a=a[d]={}:a[d]=c};var h=function(){try{return new XMLHttpRequest}catch(a){for(var b=["MSXML2.XMLHTTP.6.0","MSXML2.XMLHTTP.3.0","MSXML2.XMLHTTP","Microsoft.XMLHTTP"],c=0;c<b.length;c++)try{return new ActiveXObject(b[c])}catch(d){}}return null};g("gaia.ajax.newXmlHttpRequest",h);var k=function(){this.g=h();this.parameters={}};
k.prototype.send=function(b,c){var a=[],d;for(d in this.parameters)a.push(d+"="+encodeURIComponent(this.parameters[d]));a=a.join("&");var f=this.g;f.open("POST",b,!0);f.setRequestHeader("Content-type","application/x-www-form-urlencoded");f.onreadystatechange=function(){4==f.readyState&&c({status:f.status,text:f.responseText})};f.send(a)};
k.prototype.m=function(b,c,a){var d=this.g;d.open("POST",b,!0);d.setRequestHeader("Content-type","application/json");d.onreadystatechange=function(){4==d.readyState&&a({status:d.status,text:d.responseText})};d.send(c)};k.prototype.get=function(b,c){var a=this.g;a.open("GET",b,!0);a.onreadystatechange=function(){4==a.readyState&&c({status:a.status,text:a.responseText})};a.send()};g("gaia.ajax.XmlHttpFormRequest",k);k.prototype.get=k.prototype.get;k.prototype.sendJson=k.prototype.m;
k.prototype.send=k.prototype.send;var l=/\s*;\s*/,m=function(){if(!document.cookie)return"";for(var b=document.cookie.split(l),c=0;c<b.length;c++){var a=b[c];a=a.replace(/^\s+/,"");a=a.replace(/\s+$/,"");if(0==a.indexOf("APISID="))return a.substr(7)}return""};var n=null,p=function(b,c){this.l=b;this.j=c;this.i=m();this.h=!1},q=function(){var b=n,c=m();c==b.i||b.h||(b.i=c,(new k).get(b.j,function(a){var d=n;a&&a.status&&200==a.status&&"OK"==a.text&&(d.g&&clearInterval(d.g),d.h||(window.location=d.l))}))};p.prototype.start=function(b){if(this.g)return!1;this.g=setInterval(function(){q()},b);return!0};g("gaia.loginAutoRedirect.start",function(b,c,a){if(n||!a||!c||0>=b)return!1;n=new p(c,a);return n.start(b)});
g("gaia.loginAutoRedirect.stop",function(){var b=n;b.h=!0;b.g&&(clearInterval(b.g),b.g=null)});
</script>
  <script type="text/javascript" nonce="OIJ7gH/4G/AVVPvCOJBJxw">
  gaia.loginAutoRedirect.start(5000,
  'https:\x2F\x2Faccounts.google.com\x2FServiceLogin?continue=https%3A%2F%2Fdocs.google.com%2F\x26followup=https%3A%2F%2Fdocs.google.com%2F\x26passive=1209600\x26noautologin=true',
  'https:\x2F\x2Faccounts.google.com\x2FPassiveLoginProber?continue=https%3A%2F%2Fdocs.google.com%2F\x26followup=https%3A%2F%2Fdocs.google.com%2F\x26passive=1209600');
  </script>
  </body>
</html>
```