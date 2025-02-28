```<!DOCTYPE html>
<html>
<head>
<style id="antiClickjack">body{display:none !important;}</style>
<script type="text/javascript">
        if (self === top) {
            var antiClickjack = document.getElementById("antiClickjack");
            antiClickjack.parentNode.removeChild(antiClickjack);
        } else {
            top.location = self.location;
        }
    </script>
<meta charset="utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1' />
<link href='https://style.binary.com/images/favicons/favicon-96x96.png' rel='icon' sizes='96x96' type='image/png' />
<link href='https://fonts.googleapis.com/css?family=Source+Code+Pro' rel='stylesheet' />
<link rel="stylesheet" href="https://style.binary.com/binary.css" />
<link rel="stylesheet" href="/docson/docson.css">
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/select2.min.css">
<script src="/lib/rainbow.js"></script>
<script src="/lib/language/generic.js"></script>
<script src="/lib/language/javascript.js"></script>
<script src="/lib/language/coffeescript.js"></script>
<script src="/lib/language/csharp.js"></script>
<script src="/lib/language/go.js"></script>
<script src="/lib/language/java.js"></script>

<script src="/lib/language/php.js"></script>
<script src="/lib/language/ruby.js"></script>
<script src="/lib/language/python.js"></script>

<script src="https://liveapi.binary.com/binary-live-api.js"></script>
<script src="/lib/require.js"></script>
<title>Binary.com Developers</title>
<link rel="canonical" href="https://developers.binary.com/">
</head>
<body>
<div id="topbar"></div>
<header>
<div class="header-content">
<a href="/"><img id="logo" alt="Binary" src="https://www.binary.com/images/pages/binary-symbol-logo.svg"><h1>Binary.com Developers</h1></a>
<div class="spacer"></div>
</div>
</header>
<div id="content">
<select id="mobile-page-selector">
<option value="/">Welcome</option>
<option value="/applications/">Applications</option>
<option value='-' disabled>────────────</option>
<option value="/demos/">Code Samples</option>
<option value="/api/">API Playground</option>
<option value="/faq/">FAQ</option>
<option value='-' disabled>────────────</option>
<option value="/schemas/">JSON Schemas</option>
<option value="/websockets/">Websockets</option>
<option value="/schemas/">JSON Schemas</option>
<option value="/guide/">API Guide</option>
<option value="/open-source/">Open Source</option>
<option value="/security/">Security</option>
<option value="/careers/">Careers</option>
<option value='-' disabled>────────────</option>
<option value="https://www.binary.com/en/user/security/api_tokenws.html">Looking for your API token?</option>
</select>
<div class="page-wrapper">
<div class="sidebar-left">
<ul>
<li><a href="/">Welcome</a></li>
<li><a href="/websockets/">Quickstart</a></li>
<li><a href="/demos/">Code samples</a></li>
<li><a href="/applications/">App registration</a></li>
<li><a href="/api/">API playground</a></li>
<li><a href="/guide/">API guide</a></li>
<li><a href="/faq/">FAQ</a></li>
<li><a href="/copytrading/">Copy trading facilities</a></li>
<li><a href="/server-status-updates/">Server status updates</a></li>
<li><a href="https://binary.vanillacommunity.com" target=_blank>Dev forum</a></li>
<li><a href="/schemas/">JSON Schemas</a></li>
<li><a href="/open-source/">Open source</a></li>
<li><a href="/security/">Security</a></li>
<li><a href="/careers/">Careers</a></li>
</ul>
<a id="api-token-link" href="https://www.binary.com/en/user/security/api_tokenws.html">Looking for your API token?</a>
</div>
<div class="page-content">
<h1>Welcome to the Binary.com API</h1>
<p>The Binary.com API allows developers to build applications and trading interfaces that interact with our Binary.com system.</p>
<p>The API allows for most of the read and write methods that you will need to support your application. If you have uses or needs that are not currently supported by the API, visit our <a target=_blank href="https://binary.vanillacommunity.com">dev forum</a> and let us know!</p>
<p>Starting with the API is easy:</p>
<ul class="bullet">
<li>Read the <a href="/websockets">Quickstart</a> and look at the <a href="/demos">code samples</a> in different languages</li>
<li><a href="/applications">Register</a> your application to obtain an <code>app_id</code></li>
<li>Read the <a href="/guide">API guide</a></li>
<li>Explore the API using <a href="/api">API playground</a></li>
</ul>
<p>We also provide a high-level API library to help you use our service easier. <br>Get <strong>binary-live-api</strong> from <a href="https://github.com/binary-com/binary-live-api">GitHub</a>!</p>
<p>Have more questions?</p>
<p>
<a class="button" href="https://binary.vanillacommunity.com"><span>Visit dev forum</span></a> or email <a href="mailto:api-support@binary.com?subject=API+Question:+">api-support@binary.com</a>
</p>
</div>
</div>
</div>
<footer>
<div id="end-note" class="invisible content-inverse-color center-text"></div>
</footer>
<script src="/code.js"></script>
</body>
</html>
```