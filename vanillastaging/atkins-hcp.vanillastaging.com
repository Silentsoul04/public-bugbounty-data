```<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Atkins® Healthcare Professional Forum</title>
<link rel="stylesheet" href="/static-asset/cl20011/applications/dashboard/design/style.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/applications/dashboard/design/style-compat.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/plugins/Reactions/design/reactions.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/resources/design/vanillicon.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/plugins/editor/design/editor.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/plugins/badges/design/badges.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/plugins/Polls/design/polls.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/applications/groups/design/groups.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/applications/vanilla/design/tag.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/addons/themes/keystone/design/custom_classic.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/plugins/Online/design/online.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="/static-asset/cl20011/applications/vanilla/design/spoilers.css?v=60109b38" media="all" static="1" />
<link rel="stylesheet" href="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/shared.min.css?h=60109b38" static="1" />
<link rel="stylesheet" href="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/vendors.min.css?h=60109b38" static="1" />
<link rel="shortcut icon" href="https://us.v-cdn.net/6031147/uploads/favicon_d671cd4ec370c4b28a93dbed58347e61.ico" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" href="https://us.v-cdn.net/6031147/uploads/favicon-152-7f5c918d16ded5d1a03b736621039c0f.png" />
<link rel="canonical" href="https://atkins-hcp.vanillastaging.com/" />
<meta name="theme-color" content="#ffffff" />
<meta property="og:site_name" content="Atkins® HCP Forum" />
<meta name="twitter:title" property="og:title" content="Atkins® Healthcare Professional Forum" />
<meta property="og:url" content="https://atkins-hcp.vanillastaging.com/" />
<meta name="description" property="og:description" content="This is a forum for members of the healthcare community to discuss recent research, the clinical utility of the Atkins diet, and practical considerations for helping patients with using low-carbohydrate diets." />
<meta property="og:image" content="https://us.v-cdn.net/6031147/uploads/c84f21354fd4a3fee328fff3515634b8.jpg" />
<script>gdn=window.gdn||{};gdn.meta={"currentThemePath":"\/addons\/themes\/keystone","ShowUserReactions":"popup","editorVersion":"1.8.2","editorPluginAssets":"\/plugins\/editor","fileUpload-remove":"Remove file","fileUpload-reattach":"Click to re-attach","fileUpload-inserted":"Inserted","fileUpload-insertedTooltip":"This image has been inserted into the body of text.","wysiwygHelpText":"You are using <a href=\"https:\/\/en.wikipedia.org\/wiki\/WYSIWYG\" target=\"_new\">WYSIWYG<\/a> in your post.","bbcodeHelpText":"You can use <a href=\"http:\/\/en.wikipedia.org\/wiki\/BBCode\" target=\"_new\">BBCode<\/a> in your post.","htmlHelpText":"You can use <a href=\"http:\/\/htmlguide.drgrog.com\/cheatsheet.php\" target=\"_new\">Simple HTML<\/a> in your post.","markdownHelpText":"You can use <a href=\"http:\/\/en.wikipedia.org\/wiki\/Markdown\" target=\"_new\">Markdown<\/a> in your post.","textHelpText":"You are using plain text in your post.","editorWysiwygCSS":"\/plugins\/editor\/design\/wysiwyg.css","canUpload":false,"fileErrorSize":"File size is too large.","fileErrorFormat":"File format is not allowed.","fileErrorAlreadyExists":"File already uploaded.","fileErrorSizeFormat":"File size is too large and format is not allowed.","maxUploadSize":52428800,"editorFileInputName":"editorupload","allowedImageExtensions":"{\"1\":\"jpg\",\"2\":\"jpeg\",\"3\":\"gif\",\"4\":\"png\",\"5\":\"bmp\",\"6\":\"tiff\"}","allowedFileExtensions":"[\"txt\",\"jpg\",\"jpeg\",\"gif\",\"png\",\"bmp\",\"tiff\",\"ico\",\"zip\",\"gz\",\"tar.gz\",\"tgz\",\"psd\",\"ai\",\"pdf\",\"doc\",\"xls\",\"ppt\",\"docx\",\"xlsx\",\"pptx\",\"log\",\"rar\",\"7z\"]","maxFileUploads":"20","Spoiler":"Spoiler","show":"show","hide":"hide","AnalyticsTask":"tick","TaggingAdd":false,"TaggingSearchUrl":"\/tags\/search","MaxTagsAllowed":5,"TagHint":"Start to type...","emoji":{"assetPath":"https:\/\/atkins-hcp.vanillastaging.com\/resources\/emoji","format":"<img class=\"emoji\" src=\"%1$s\" title=\"%2$s\" alt=\"%2$s\" height=\"20\" \/>","emoji":{"smile":"smile.png","smiley":"smiley.png","wink":"wink.png","blush":"blush.png","neutral":"neutral.png","relaxed":"relaxed.png","grin":"grin.png","joy":"joy.png","sweat_smile":"sweat_smile.png","lol":"lol.png","innocent":"innocent.png","naughty":"naughty.png","yum":"yum.png","relieved":"relieved.png","love":"love.png","sunglasses":"sunglasses.png","smirk":"smirk.png","expressionless":"expressionless.png","unamused":"unamused.png","sweat":"sweat.png","pensive":"pensive.png","confused":"confused.png","confounded":"confounded.png","kissing":"kissing.png","kissing_heart":"kissing_heart.png","kissing_smiling_eyes":"kissing_smiling_eyes.png","kissing_closed_eyes":"kissing_closed_eyes.png","tongue":"tongue.png","disappointed":"disappointed.png","worried":"worried.png","angry":"angry.png","rage":"rage.png","cry":"cry.png","persevere":"persevere.png","triumph":"triumph.png","frowning":"frowning.png","anguished":"anguished.png","fearful":"fearful.png","weary":"weary.png","sleepy":"sleepy.png","tired_face":"tired_face.png","grimace":"grimace.png","bawling":"bawling.png","open_mouth":"open_mouth.png","hushed":"hushed.png","cold_sweat":"cold_sweat.png","scream":"scream.png","astonished":"astonished.png","flushed":"flushed.png","sleeping":"sleeping.png","dizzy":"dizzy.png","no_mouth":"no_mouth.png","mask":"mask.png","star":"star.png","cookie":"cookie.png","warning":"warning.png","mrgreen":"mrgreen.png","heart":"heart.png","heartbreak":"heartbreak.png","kiss":"kiss.png","+1":"+1.png","-1":"-1.png","grey_question":"grey_question.png","trollface":"trollface.png","error":"grey_question.png"}},"RedirectTo":"","RedirectUrl":"","TransportError":"A fatal error occurred while processing the request.<br \/>The server returned the following response: %s","TransientKey":false,"WebRoot":"https:\/\/atkins-hcp.vanillastaging.com\/","UrlFormat":"\/{Path}","Path":"categories","Args":"","ResolvedPath":"vanilla\/categories\/index","ResolvedArgs":{"categoryIdentifier":"","page":"0"},"SignedIn":0,"ConfirmHeading":"Confirm","ConfirmText":"Are you sure you want to do that?","Okay":"Okay","Cancel":"Cancel","Search":"Search","ui":{"siteName":"Atkins\u00ae HCP Forum","orgName":"Atkins\u00ae HCP Forum","localeKey":"en","themeKey":"keystone","mobileThemeKey":"keystone","desktopThemeKey":"keystone","logo":null,"favIcon":"https:\/\/us.v-cdn.net\/6031147\/uploads\/favicon_d671cd4ec370c4b28a93dbed58347e61.ico","shareImage":"https:\/\/us.v-cdn.net\/6031147\/uploads\/c84f21354fd4a3fee328fff3515634b8.jpg","bannerImage":"https:\/\/us.v-cdn.net\/6031147\/uploads\/c747e61e73a42d9e22cd3ce80b91b4e9.jpg","mobileAddressBarColor":"#ffffff","fallbackAvatar":"https:\/\/atkins-hcp.vanillastaging.com\/applications\/dashboard\/design\/images\/defaulticon.png","currentUser":{"userID":0,"name":"guest","email":"guest@example.com","photoUrl":"https:\/\/atkins-hcp.vanillastaging.com\/applications\/dashboard\/design\/images\/defaulticon.png","dateLastActive":null},"siteTitle":"Atkins\u00ae Healthcare Professional Forum","locale":"en","inputFormat":"rich"},"context":{"host":"","basePath":"","assetPath":"","debug":false,"translationDebug":false,"conversationsEnabled":true,"cacheBuster":"60109b38","staticPathFolder":"\/static-asset\/cl20011","dynamicPathFolder":"\/dynamic-asset\/cl20011"},"search":{"defaultScope":"site","supportsScope":false},"upload":{"maxSize":52428800,"maxUploads":20,"allowedExtensions":["txt","jpg","jpeg","gif","png","bmp","tiff","ico","zip","gz","tar.gz","tgz","psd","ai","pdf","doc","xls","ppt","docx","xlsx","pptx","log","rar","7z"]},"signOutUrl":null,"featureFlags":{"DeferredLegacyScripts":{"Enabled":false},"updateTokens":{"Enabled":true},"deferredNotifications":{"Enabled":true},"NewFlyouts":{"Enabled":true},"DataDrivenTitleBar":{"Enabled":false}},"themeFeatures":{"NewFlyouts":true,"SharedMasterView":false,"ProfileHeader":false,"DataDrivenTheme":false,"UserCards":false,"DisableKludgedVars":false,"NewEventsPage":false,"useNewSearchPage":false,"EnhancedAccessibility":false,"NewQuickLinks":true,"LegacyDataDrivenTheme":true},"siteSection":{"basePath":"","contentLocale":"en","sectionGroup":"vanilla","sectionID":"0","name":"Atkins\u00ae HCP Forum","apps":{"forum":true},"attributes":{"categoryID":-1}},"themePreview":null,"reCaptchaKey":"6Lcw5PwUAAAAAEZ9dIIezn_kchXS0YcqdwtGjH-U","useNewFlyouts":true};
gdn.permissions={"permissions":{"activity.view":true,"profiles.view":true,"discussions.view":true,"badges.view":true,"emailInvitiations.add":true,"emailInvitations.add":true,"events.view":[-1]},"bans":[],"isAdmin":false};
</script>
<script src="/static-asset/cl20011/js/library/jquery.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/library/jquery.form.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/library/jquery.popup.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/library/jquery.popin.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/library/jquery.gardenhandleajaxform.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/library/jquery.atwho.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/global.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/flyouts.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/plugins/editor/js/editor.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/plugins/editor/js/jquery.ui.widget.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/plugins/editor/js/jquery.iframe-transport.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/plugins/editor/js/jquery.fileupload.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/applications/vanilla/js/spoilers.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/applications/vanilla/js/tagging.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/js/library/jquery.tokeninput.js?v=60109b38" static="1"></script>
<script src="/static-asset/cl20011/addons/themes/keystone/js/custom.js?v=60109b38" static="1"></script>
<script>var supportsAllFeatures =
    window.Promise &&
    window.Promise.prototype.finally &&
    window.fetch &&
    window.Symbol &&
    window.CustomEvent &&
    Array.prototype.includes &&
    Element.prototype.remove &&
    Element.prototype.closest &&
    Element.prototype.attachShadow &&
    window.NodeList &&
    NodeList.prototype.forEach
;

if (!supportsAllFeatures) {
    false && console.log("Older browser detected. Initiating polyfills.");
    var head = document.getElementsByTagName('head')[0];
    var script = document.createElement('script');
    script.src = "https://atkins-hcp.vanillastaging.com/dist/polyfills.min.js?h=60109b38";

        script.async = false;
    // document.write has to be used instead of append child for edge & old safari compatibility.
    document.write(script.outerHTML);
} else {
    false && console.log("Modern browser detected. No polyfills necessary");
}

if (!window.onVanillaReady) {
    window.onVanillaReady = function (handler) {
        if (typeof handler !== "function") {
            console.error("Cannot register a vanilla ready handler that is not a function.");
            return;
        }
        document.addEventListener("X-DOMContentReady", function () {
            if (!window.__VANILLA_INTERNAL_IS_READY__) {
                return;
            }
            handler(window.__VANILLA_GLOBALS_DO_NOT_USE_DIRECTLY__);
        })

        if (window.__VANILLA_INTERNAL_IS_READY__) {
            handler(window.__VANILLA_GLOBALS_DO_NOT_USE_DIRECTLY__);
        }
    }
}</script>
<script src="https://atkins-hcp.vanillastaging.com/dynamic-asset/cl20011/api/v2/locales/en/translations.js?h=60109b38" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/runtime.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/vendors.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/shared.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/translationsapi-common.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/polls-common.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/rich-editor.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/groups-common.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/groups.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/vanilla.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/dashboard-common.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/addons/dashboard.min.js?h=60109b38" static="1" defer="defer"></script>
<script src="https://atkins-hcp.vanillastaging.com/static-asset/cl20011/dist/forum/bootstrap.min.js?h=60109b38" static="1" defer="defer"></script>
<script>window["__ACTIONS__"]=[{"type":"@@locales\/GET_ALL_DONE","payload":{"result":[{"localeID":"en","localeKey":"en","regionalKey":"en","displayNames":{"en":"English"}}],"params":[]}},{"type":"@@users\/GET_ME_DONE","payload":{"result":{"userID":0,"name":"Guest","photoUrl":"https:\/\/atkins-hcp.vanillastaging.com\/applications\/dashboard\/design\/images\/defaulticon.png","email":null,"dateLastActive":null,"isAdmin":false,"countUnreadNotifications":0,"countUnreadConversations":0,"permissions":["activity.view","badges.view","discussions.view","emailInvitations.add","emailInvitiations.add","profiles.view"],"ssoID":null},"params":[]}},{"type":"@@users\/GET_PERMISSIONS_DONE","payload":{"result":{"isAdmin":false,"permissions":[{"type":"global","permissions":{"badges.view":true,"discussions.view":true,"emailInvitations.add":true,"emailInvitiations.add":true,"events.view":true,"profiles.view":true}}]},"params":[]}},{"type":"@@themes\/GET_DONE","payload":{"result":{"themeID":"keystone","type":"themeFile","name":"Keystone","version":"2.0.1","revisionID":null,"revisionName":null,"insertUser":null,"dateInserted":null,"current":true,"active":true,"parentTheme":null,"assets":{"header":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/header.html?v=2.0.1-60109b38","type":"html","content-type":"text\/html"},"footer":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/footer.html?v=2.0.1-60109b38","type":"html","content-type":"text\/html"},"variables":{"url":"","type":"json","content-type":"application\/json","data":{"quickLinks":{"links":[{"name":"All Categories","url":"\/categories","id":"all-categories"},{"name":"Recent Discussions","url":"\/discussions","id":"recent-discussions"},{"name":"Activity","url":"\/activity","id":"activity"},{"name":"Best Of","url":"\/bestof","id":"best-of"},{"name":"Groups","url":"\/groups","id":"groups"}],"counts":{"all-categories":null,"recent-discussions":null,"activity":null,"best-of":null,"groups":null}}}},"fonts":{"url":"","type":"json","content-type":"application\/json","data":[]},"scripts":{"url":"","type":"json","content-type":"application\/json"},"styles":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/styles.css?v=2.0.1-60109b38","type":"css","content-type":"text\/css"},"javascript":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/javascript.js?v=2.0.1-60109b38","type":"js","content-type":"application\/javascript"}},"preview":{"info":{"Description":{"type":"description","value":"A responsive Vanilla theme with customization options."},"Authors":{"type":"string","value":"Isis Graziatto, Adam (charrondev) Charron"}},"imageUrl":"\/addons\/themes\/keystone\/screenshot.png","variables":{"globalPrimary":null,"globalBg":"#fff","globalFg":"#555a62","titleBarBg":null,"titleBarFg":null,"backgroundImage":null}},"features":{"NewFlyouts":true,"SharedMasterView":false,"ProfileHeader":false,"DataDrivenTheme":false,"UserCards":false,"DisableKludgedVars":false,"NewEventsPage":false,"useNewSearchPage":false,"EnhancedAccessibility":false,"NewQuickLinks":true,"LegacyDataDrivenTheme":true},"supportedSections":[]},"params":{"key":{"themeID":"keystone","type":"themeFile","name":"Keystone","version":"2.0.1","revisionID":null,"revisionName":null,"insertUser":null,"dateInserted":null,"current":true,"active":true,"parentTheme":null,"assets":{"header":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/header.html?v=2.0.1-60109b38","type":"html","content-type":"text\/html"},"footer":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/footer.html?v=2.0.1-60109b38","type":"html","content-type":"text\/html"},"variables":{"url":"","type":"json","content-type":"application\/json","data":{"quickLinks":{"links":[{"name":"All Categories","url":"\/categories","id":"all-categories"},{"name":"Recent Discussions","url":"\/discussions","id":"recent-discussions"},{"name":"Activity","url":"\/activity","id":"activity"},{"name":"Best Of","url":"\/bestof","id":"best-of"},{"name":"Groups","url":"\/groups","id":"groups"}],"counts":{"all-categories":null,"recent-discussions":null,"activity":null,"best-of":null,"groups":null}}}},"fonts":{"url":"","type":"json","content-type":"application\/json","data":[]},"scripts":{"url":"","type":"json","content-type":"application\/json"},"styles":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/styles.css?v=2.0.1-60109b38","type":"css","content-type":"text\/css"},"javascript":{"url":"https:\/\/atkins-hcp.vanillastaging.com\/api\/v2\/themes\/keystone\/assets\/javascript.js?v=2.0.1-60109b38","type":"js","content-type":"application\/javascript"}},"preview":{"info":{"Description":{"type":"description","value":"A responsive Vanilla theme with customization options."},"Authors":{"type":"string","value":"Isis Graziatto, Adam (charrondev) Charron"}},"imageUrl":"\/addons\/themes\/keystone\/screenshot.png","variables":{"globalPrimary":null,"globalBg":"#fff","globalFg":"#555a62","titleBarBg":null,"titleBarFg":null,"backgroundImage":null}},"features":{"NewFlyouts":true,"SharedMasterView":false,"ProfileHeader":false,"DataDrivenTheme":false,"UserCards":false,"DisableKludgedVars":false,"NewEventsPage":false,"useNewSearchPage":false,"EnhancedAccessibility":false,"NewQuickLinks":true,"LegacyDataDrivenTheme":true},"supportedSections":[]}}}}];
</script>
<noscript><style>body {visibility: visible !important;}</style></noscript>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,700,700i" rel="stylesheet">
</head>
<body id="vanilla_categories_index" class="Vanilla Categories isDesktop index Section-CategoryList Section-CategoryList ThemeOptions-hasHeroBanner ThemeOptions-hasFeatureSearchbox UserLoggedOut locale-en ">
<a href="#MainContent" class="Button Primary btn button-skipToContent sr-only SrOnly">Skip to content</a>
<!--[if lt IE 9]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
<div class="Frame">
<div class="Frame-top">
<div class="Frame-header">

<header id="MainHeader" class="Header">
<div class="Container">
<div class="row">
<div class="Hamburger">
<button class="Hamburger Hamburger-menuXcross" id="menu-button" aria-label="toggle menu">
<span class="Hamburger-menuLines" aria-hidden="true">
</span>
<span class="Hamburger-visuallyHidden sr-only">
toggle menu
</span>
</button>
</div>
<a href="/" class="Header-logo">
Atkins® HCP Forum
</a>
<a href="/" class="Header-logo mobile">
Atkins® HCP Forum
</a>
<nav class="Header-desktopNav">
<div class='Navigation-linkContainer'>
<a href='/activity' class='Navigation-link '>
Activity
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/categories' class='Navigation-link Selected'>
Categories
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/discussions' class='Navigation-link '>
Discussions
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/bestof/everything' class='Navigation-link BestOf'>
Best Of...
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/groups/' class='Navigation-link Groups'>
Groups
</a>
</div>
</nav>
<div class="Header-flexSpacer"></div>
<div class="Header-right">
<span data-react='subcommunity-chooser' data-props='{"buttonType":"titleBarLink","buttonClass":"Header-desktopCommunityChooser"}'></span>
<div class="MeBox-header">
<div class="MeBox MeBox-SignIn FlyoutRight"><div class="SignInLinks"><a href="/entry/signin?Target=categories" class=" SignInPopup" rel="nofollow">Sign In</a> <span class="Bullet">&middot;</span> <a href="/entry/register?Target=categories" class="ApplyButton" rel="nofollow">Register</a> </div> <div class="SignInIcons"></div></div>
</div>
</div>
</div>
</div>

<nav class="Navigation js-nav needsInitialization">
<div class="Container">
<div class="Navigation-row">
<div class="SignIn mobile">
 <div class="MeBox MeBox-SignIn"><div class="SignInLinks"><a href="/entry/signin?Target=categories" class=" SignInPopup" rel="nofollow">Sign In</a> <span class="Bullet">&middot;</span> <a href="/entry/register?Target=categories" class="ApplyButton" rel="nofollow">Register</a> </div> <div class="SignInIcons"></div></div>
</div>
</div>
<div class='Navigation-linkContainer'>
<a href='/activity' class='Navigation-link '>
Activity
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/categories' class='Navigation-link Selected'>
Categories
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/discussions' class='Navigation-link '>
Discussions
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/bestof/everything' class='Navigation-link BestOf'>
Best Of...
</a>
</div>
<div class='Navigation-linkContainer'>
<a href='/groups/' class='Navigation-link Groups'>
Groups
</a>
</div>
<div class='Navigation-linkContainer'>
<span data-react='subcommunity-chooser' data-props='{"buttonType":"reset","fullWidth":true,"buttonClass":"Navigation-link"}'></span>
</div>
</div>
</nav>
<nav class="mobileMebox js-mobileMebox needsInitialization">
<div class="Container">
<div class="MeBox MeBox-SignIn"><div class="SignInLinks"><a href="/entry/signin?Target=categories" class=" SignInPopup" rel="nofollow">Sign In</a> <span class="Bullet">&middot;</span> <a href="/entry/register?Target=categories" class="ApplyButton" rel="nofollow">Register</a> </div> <div class="SignInIcons"></div></div>
<button class="mobileMebox-buttonClose Close">
<span>×</span>
</button>
</div>
</nav>

</header>

</div>
<div class="Frame-body">

<div class="Herobanner">
<div class="Herobanner-bgImage" style="background-image:url('https://us.v-cdn.net/6031147/uploads/c747e61e73a42d9e22cd3ce80b91b4e9.jpg')"></div>
<div class="Container">
<div class="SearchBox js-sphinxAutoComplete" role="search">
<form method="get" action="/search" autocomplete="off">
<div>
<input type="text" id="Form_Search" name="Search" value="" placeholder="Search" accesskey="/" aria-label="Enter your search term." title="Enter your search term." role="searchbox" class="InputBox js-search" /><input type="submit" id="Form_Go" name="" aria-label="Search" class="Button" value="Go" />
</div>
</form>
</div>
</div>
</div>

<div class="Frame-content">
<div class="Container">
<div class="Frame-contentWrap">
<div class="Frame-details">
<div class="Frame-row SearchBoxMobile">
<div class="SearchBox js-sphinxAutoComplete" role="search">
<form method="get" action="/search" autocomplete="off">
<div>
<input type="text" id="Form_Search1" name="Search" value="" placeholder="Search" accesskey="/" aria-label="Enter your search term." title="Enter your search term." role="searchbox" class="InputBox js-search" /><input type="submit" id="Form_Go1" name="" aria-label="Search" class="Button" value="Go" />
</div>
</form>
</div>
</div>
<div class="Frame-row">

<main id="MainContent" class="Content MainContent">


<iframe src="<a href=" www.twitter.com atkinsglobal">www.twitter.com/atkins</a>" width="640" height="520" scrolling ="no" frameborder="0"></iframe><h1 class="H HomepageTitle">Atkins® Healthcare Professional Forum</h1><div class="P PageDescription">This is a forum for members of the healthcare community to discuss recent research, the clinical utility of the Atkins diet, and practical considerations for helping patients with using low-carbohydrate diets.</div> <div class="DataListWrap">
<h2 class="sr-only">Category List</h2>
<ul class="DataList CategoryList"> <li id="Category_13" class="Item Category-weight-loss Item-Category-weight-loss Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/weight-loss" class="Item-Icon PhotoWrap PhotoWrap-Category"><img src="https://us.v-cdn.net/6031147/uploads/1RPJB0MMH5A9.jpg" class="CategoryPhoto" alt="Weight-Loss" /></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/weight-loss" class="Title">Weight-Loss</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/weight-loss/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_12" class="Item Alt Category-cardiovascular-disease Item-Category-cardiovascular-disease Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/cardiovascular-disease" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a>  <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/cardiovascular-disease" class="Title">Cardiovascular Disease</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/cardiovascular-disease/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_10" class="Item Category-observations-from-practice Item-Category-observations-from-practice Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/observations-from-practice" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/observations-from-practice" class="Title">Observations from Practice</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/observations-from-practice/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_9" class="Item Alt Category-physical-acitivity Item-Category-physical-acitivity Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/physical-acitivity" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/physical-acitivity" class="Title">Physical Acitivity</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/physical-acitivity/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_8" class="Item Category-new-research Item-Category-new-research Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/new-research" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/new-research" class="Title">New Research</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/new-research/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="2 discussions" class="Number">2</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
<span class="MItem LastDiscussionTitle">
<span class="MostRecent"><span class="MLabel">Most recent:</span> <a href="/discussion/4/low-carb-research-library#latest" class="LatestPostTitle">Low Carb Research Library</a> <span class="MostRecentBy">by <a href="/profile/Jclinthorne" class="UserLink js-userCard" data-userid="9">Jclinthorne</a></span></span> </span>
<span class="MItem LastCommentDate">
June 2019 </span>
</div>
</div>
</li>
<li id="Category_3" class="Item Alt Category-clinical-guidelines Item-Category-clinical-guidelines Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/clinical-guidelines" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/clinical-guidelines" class="Title">Clinical Guidelines</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/clinical-guidelines/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_7" class="Item Category-continuing-education Item-Category-continuing-education Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/continuing-education" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/continuing-education" class="Title">Continuing Education</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/continuing-education/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="3 discussions" class="Number">3</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
<span class="MItem LastDiscussionTitle">
<span class="MostRecent"><span class="MLabel">Most recent:</span> <a href="/discussion/9/a-19-year-old-latina-college-student-with-prediabetes-clinical-case-3#latest" class="LatestPostTitle">A 19-Year-Old Latina College Student with Prediabetes—Clinical Case 3</a> <span class="MostRecentBy">by <a href="/profile/Jclinthorne" class="UserLink js-userCard" data-userid="9">Jclinthorne</a></span></span> </span>
<span class="MItem LastCommentDate">
September 2019 </span>
</div>
</div>
</li>
<li id="Category_11" class="Item Alt Category-type-1-diabetes Item-Category-type-1-diabetes Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/type-1-diabetes" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/type-1-diabetes" class="Title">Type 1 Diabetes</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/type-1-diabetes/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_2" class="Item Category-type-2-diabetes Item-Category-type-2-diabetes Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/type-2-diabetes" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/type-2-diabetes" class="Title">Type 2 Diabetes</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/type-2-diabetes/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_6" class="Item Alt Category-upcoming-conferences Item-Category-upcoming-conferences Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/upcoming-conferences" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/upcoming-conferences" class="Title">Upcoming Conferences</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/upcoming-conferences/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_5" class="Item Category-additional-resources Item-Category-additional-resources Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/additional-resources" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/additional-resources" class="Title">Conference Presentations on Low Carb</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/additional-resources/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="2 discussions" class="Number">2</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
<span class="MItem LastDiscussionTitle">
<span class="MostRecent"><span class="MLabel">Most recent:</span> <a href="/discussion/3/dr-jeff-volek-phd-rd-and-dr-stephen-phinney-md-phd-translating-basic-science-of-nutitional-ketos#latest" class="LatestPostTitle">Dr. Jeff Volek PhD RD and Dr. Stephen Phinney MD PhD - Translating Basic Science of Nutitional Ketos</a> <span class="MostRecentBy">by <a href="/profile/Jclinthorne" class="UserLink js-userCard" data-userid="9">Jclinthorne</a></span></span> </span>
<span class="MItem LastCommentDate">
June 2019 </span>
</div>
</div>
</li>
<li id="Category_4" class="Item Alt Category-cholesterol-questions Item-Category-cholesterol-questions Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div class="ItemContent Category">
<div class="Options">
</div>
<a href="//atkins-hcp.vanillastaging.com/categories/cholesterol-questions" class="Item-Icon PhotoWrap PhotoWrap-Category Hidden NoPhoto"><span class="sr-only">Expand for more options.</span></a> <div role="heading" aria-level="3" class="TitleWrap CategoryNameHeading isEmptyDescription">
<a href="https://atkins-hcp.vanillastaging.com/categories/cholesterol-questions" class="Title">Lipid Profile Questions</a> </div>
<div class="CategoryDescription">
</div>
<div class="Meta">
<span class="MItem RSS"><a href="/categories/cholesterol-questions/feed.rss" title="RSS Feed"><img src="/applications/dashboard/design/images/rss.gif" alt="RSS Feed" /></a></span>
<span class="MItem DiscussionCount">
<span title="0 discussions" class="Number">0</span> discussions </span>
<span class="MItem CommentCount">
<span title="0 comments" class="Number">0</span> comments </span>
</div>
</div>
</li>
<li id="Category_1" class="CategoryHeading Item Category-general Item-Category-general Depth1 Depth-1 Unread  Offline noPhotoWrap">
<div role="heading" aria-level="3" class="ItemContent Category">
<div class="Options"></div>
General </div>
</li>
</ul> </div>
</main>


<aside class="Panel Panel-main">
<div class="SearchBox js-sphinxAutoComplete" role="search">
<form method="get" action="/search" autocomplete="off">
<div>
<input type="text" id="Form_Search2" name="Search" value="" placeholder="Search" accesskey="/" aria-label="Enter your search term." title="Enter your search term." role="searchbox" class="InputBox js-search" /><input type="submit" id="Form_Go2" name="" aria-label="Search" class="Button" value="Go" />
</div>
</form>
</div>
<div class="Box GuestBox">
<h4 class="GuestBox-title">
Howdy, Stranger! </h4>
<p class="GuestBox-message">
It looks like you're new here. If you want to get involved, click one of these buttons! </p>
<p class="GuestBox-beforeSignInButton">
</p>
<div class="P"><a href="/entry/signin?Target=categories" class="Button Primary SignInPopup" rel="nofollow" aria-label="Sign In Now">Sign In</a> <a href="/entry/register?Target=categories" class="Button ApplyButton" rel="nofollow" aria-label="Register Now">Register</a></div> </div>
<div class="" data-react="QuickLinks" data-props="{&quot;title&quot;:&quot;Quick Links&quot;}"></div> <div class="Box BoxCategories">
<h4 aria-level="2">Categories</h4> <ul class="PanelInfo PanelCategories">
<li class="Active"><a href="/categories" class="ItemLink ItemLinkAllCategories"><span class="Aside"><span class="Count"><span title="7 discussions" class="Number">7</span></span></span> All Categories</a></li><li class="ClearFix Depth1 Category-weight-loss"><a href="https://atkins-hcp.vanillastaging.com/categories/weight-loss" class="ItemLink"> Weight-Loss</a></li>
<li class="ClearFix Depth1 Category-cardiovascular-disease"><a href="https://atkins-hcp.vanillastaging.com/categories/cardiovascular-disease" class="ItemLink"> Cardiovascular Disease</a></li>
<li class="ClearFix Depth1 Category-observations-from-practice"><a href="https://atkins-hcp.vanillastaging.com/categories/observations-from-practice" class="ItemLink"> Observations from Practice</a></li>
<li class="ClearFix Depth1 Category-physical-acitivity"><a href="https://atkins-hcp.vanillastaging.com/categories/physical-acitivity" class="ItemLink"> Physical Acitivity</a></li>
<li class="ClearFix Depth1 Category-new-research"><a href="https://atkins-hcp.vanillastaging.com/categories/new-research" class="ItemLink"><span class="Aside"><span class="Count"><span title="2 discussions" class="Number">2</span></span></span> New Research</a></li>
<li class="ClearFix Depth1 Category-clinical-guidelines"><a href="https://atkins-hcp.vanillastaging.com/categories/clinical-guidelines" class="ItemLink"> Clinical Guidelines</a></li>
<li class="ClearFix Depth1 Category-continuing-education"><a href="https://atkins-hcp.vanillastaging.com/categories/continuing-education" class="ItemLink"><span class="Aside"><span class="Count"><span title="3 discussions" class="Number">3</span></span></span> Continuing Education</a></li>
<li class="ClearFix Depth1 Category-type-1-diabetes"><a href="https://atkins-hcp.vanillastaging.com/categories/type-1-diabetes" class="ItemLink"> Type 1 Diabetes</a></li>
<li class="ClearFix Depth1 Category-type-2-diabetes"><a href="https://atkins-hcp.vanillastaging.com/categories/type-2-diabetes" class="ItemLink"> Type 2 Diabetes</a></li>
<li class="ClearFix Depth1 Category-upcoming-conferences"><a href="https://atkins-hcp.vanillastaging.com/categories/upcoming-conferences" class="ItemLink"> Upcoming Conferences</a></li>
<li class="ClearFix Depth1 Category-additional-resources"><a href="https://atkins-hcp.vanillastaging.com/categories/additional-resources" class="ItemLink"><span class="Aside"><span class="Count"><span title="2 discussions" class="Number">2</span></span></span> Conference Presentations on Low Carb</a></li>
<li class="ClearFix Depth1 Category-cholesterol-questions"><a href="https://atkins-hcp.vanillastaging.com/categories/cholesterol-questions" class="ItemLink"> Lipid Profile Questions</a></li>
<li class="ClearFix Heading Category-general" aria-level="3"> General</li>
</ul>
</div>
<div class="Box Tags">
<h4 aria-level="2">Popular Tags</h4> <ul class="TagCloud">
<li class="TagCloud-Item"><a href="/discussions/tagged/ketones" class="Tag_ketones">ketones <span class="Count">2</span></a></li>
 <li class="TagCloud-Item"><a href="/discussions/tagged/alzheimers" class="Tag_alzheimers">alzheimers <span class="Count">1</span></a></li>
<li class="TagCloud-Item"><a href="/discussions/tagged/keto" class="Tag_keto">keto <span class="Count">1</span></a></li>
<li class="TagCloud-Item"><a href="/discussions/tagged/cognitive-function" class="Tag_cognitive-function">cognitive function <span class="Count">1</span></a></li>
</ul>
</div>
</aside>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="Frame-footer">

<footer class="Footer">
<div class="Container">
<div class="row">
<div class="col col-copyRight">
<p class="Footer-copyright">© Vanilla Keystone Theme 2021</p>
</div>
<div class="col col-logo">
<div class="Vanilla-logo">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 124.418 27" class="PoweredbyVanilla">
<title>Powered By Vanilla</title>
<path fill="currentColor" d="M72.512,26.847q-.2-.444-.389-.89c-.332-.78-.64-1.57-.909-2.375-1.324-3.95-1.86-8.865,1.458-11.991a8.318,8.318,0,0,1,3.76-1.977c.338-.084,1.409-.206,1.563-.261.373-.135.214-1.117.152-1.4-.322-1.459-2.2-2-3.481-1.876A5.405,5.405,0,0,0,71.3,7.991a10.813,10.813,0,0,0-1.912,3.055c-1.811,4.282-.943,11.279.231,13.246A9.434,9.434,0,0,0,68.1,22.835c-.44-.423-.886-.839-1.314-1.273a12.964,12.964,0,0,1-2.337-3.047,11.854,11.854,0,0,1-1.482-5.32,5.9,5.9,0,0,1,.72-3.2,3.662,3.662,0,0,0-2.959,1.125A4.134,4.134,0,0,0,59.011,14.4a11.164,11.164,0,0,0,1.681,4.073,22.229,22.229,0,0,0,5.255,6.215,24.779,24.779,0,0,0,3.621,2.533c.857.494,1.981,1.079,2.964.6.091-.044.258-.107.285-.214s-.062-.255-.1-.352c-.062-.138-.139-.269-.2-.407M96.19,15.979c.453-.881,1.614-2.209,1.269-3.287a1.589,1.589,0,0,0-2.477-.712c-1.2,1-1.131,6.827-.7,7.683.226.955,1.764,1.651,2.431.717a.4.4,0,0,0-.067-.56.881.881,0,0,0-.385-.048c-.607-.036-.744-1.332-.724-1.782a5,5,0,0,1,.657-2.011m-5.082,4.509c-.2-1.613,1.441-3.939,1.387-5.807a2.67,2.67,0,0,0-1.11-2.383,1.591,1.591,0,0,0-.371-.139,3.6,3.6,0,0,0-1.2-.039,3.922,3.922,0,0,0-1.295.353,5.793,5.793,0,0,0-1.912,1.6c-.266.319-.518.649-.771.978.02-.026-.153-.3-.173-.333-.066-.115-.137-.227-.214-.335a3.655,3.655,0,0,0-.516-.594,2.134,2.134,0,0,0-1.272-.617,1.612,1.612,0,0,0-.767.151,1.219,1.219,0,0,0-.543.411,1.227,1.227,0,0,0,0,.932A19.1,19.1,0,0,0,83.5,17.223c.04.089.079.178.115.268a9.535,9.535,0,0,1,.925,2.9c.038.662-.361,1.6.185,1.685,1.776.215,1.281-2.876,1.664-4.5A3.591,3.591,0,0,1,88.731,14.9a.45.45,0,0,1,.353.006.465.465,0,0,1,.222.389,10.823,10.823,0,0,1-.431,2.506,17.753,17.753,0,0,0-.365,2.725c-.066,1.739.443,3.5,2.32,3.92a2.6,2.6,0,0,0,2.517-.428,1.679,1.679,0,0,0,.442-2.309c-1.242.073-2.5.224-2.681-1.218M108.057,2.315c3.281-.054-2.808,8.594-5.378,8.522,1.125-2.794,3.73-8.5,5.378-8.522M104.4,23.094a4.753,4.753,0,0,1-1.2-.407,3.334,3.334,0,0,1-.758-.607,4.618,4.618,0,0,1-.963-1.695,8.976,8.976,0,0,1-.417-2.805,14.169,14.169,0,0,1,.447-3.55,11.375,11.375,0,0,1,.5-1.548c.078-.191.245-.537.245-.537s.689-.027.941-.073c2.632-.482,4.965-2.7,6.255-4.983.885-1.565,1.814-4.11-.061-5.347C106.452-.4,103.782,3.36,102.622,5.3a26.123,26.123,0,0,0-1.663,3.388c-.206.5-.4,1-.6,1.5-.068.177-.3.739-.3.739s-.362-.061-.458-.085a5.054,5.054,0,0,1-.678-.219A2.378,2.378,0,0,1,97.4,9.249c2.448.834,3.576-3.361.924-3.84-1.556-.216-2.441,1.1-2.28,2.558a4.17,4.17,0,0,0,1.01,2.366,5.131,5.131,0,0,0,2.052,1.22c.166.059.5.166.5.166l.19.051s-.082.316-.105.395c-.138.485-.272.971-.4,1.46a24.062,24.062,0,0,0-.6,3.08,16.094,16.094,0,0,0-.068,3.025c.13,1.891.478,4.305,1.985,5.618a2.671,2.671,0,0,0,2.855.5c.736-.463.927-1.446,1.194-2.21a.426.426,0,0,0-.062-.462.5.5,0,0,0-.2-.086m11.391-17.1c.93.41-1.666,7.077-7.2,8.983,1.038-3.583,5.908-9.564,7.2-8.983m-3.867,18.346a4.773,4.773,0,0,1-.885-.433,5.036,5.036,0,0,1-1.375-1.256A7.628,7.628,0,0,1,108.326,19a15,15,0,0,1-.1-2.34c6.89-1.492,10.235-9.165,9.153-11.052-.982-1.715-2.946-1.194-4.686-.052a15.607,15.607,0,0,0-6.709,10.181,2.721,2.721,0,0,1-1.272.01c-.164-.036-.411-.177-.576-.121a.3.3,0,0,0-.157.409.734.734,0,0,0,.365.338,4.065,4.065,0,0,0,1.409.47c-.326,2.935.616,7.675,2.473,9.651a2.531,2.531,0,0,0,2.533.7c.835-.234,2.21-1.085,1.889-2.143a1.1,1.1,0,0,0-.721-.711m7.742-5.681a8.28,8.28,0,0,1-1.265,1.976,3.007,3.007,0,0,1-1.858,1.337,1.741,1.741,0,0,1-.479-.021,1.421,1.421,0,0,1-1.319-1.632,4.067,4.067,0,0,1,1.187-2.649c1.424-1.407,4.833-1.687,3.734.989m4.191-2.375c-1.04-.15-1.782.878-2.5,1.217.615-1.669-.768-2.745-1.109-3.09-4.765-3.191-11.5,5.251-8.137,8.523a4.423,4.423,0,0,0,5.363.187c.227,2.632,5.324,3.044,5.362.468-6.206,1.619,1.131-3.651,2.034-5.62a1.162,1.162,0,0,0-1.017-1.685M78.37,21.119a1.858,1.858,0,0,1-1.025.828c-1.91.655-2.768-1.523-2.761-2.972a3.3,3.3,0,0,1,.824-2.267,2.382,2.382,0,0,1,1.957-.629,1.32,1.32,0,0,1,.674.328,2.2,2.2,0,0,1,.587,1.354,9.3,9.3,0,0,1,.146,1.47,3.6,3.6,0,0,1-.4,1.888m4.425,1a2.67,2.67,0,0,1-1.02-.676,3.911,3.911,0,0,1-.6-1.421,10.478,10.478,0,0,1-.118-3.39c.041-.562.093-1.122.149-1.682.045-.456.093-.912.135-1.369a4.07,4.07,0,0,0,.04-.756l0-.023a1.148,1.148,0,0,0-1.875-.511,1.9,1.9,0,0,0-.677,1.133c-.056.225-.093.454-.132.683a3.479,3.479,0,0,1-.134.666c-.056.143-.1-.009-.141-.088a2.24,2.24,0,0,0-.176-.274,2.182,2.182,0,0,0-.431-.438,2.552,2.552,0,0,0-1.141-.48,3.836,3.836,0,0,0-1.038-.032,2.977,2.977,0,0,0-.555.117c-1.343.429-2.126,1.863-2.554,3.156a8.093,8.093,0,0,0-.374,1.887,9.2,9.2,0,0,0,.049,1.949,8.2,8.2,0,0,0,.447,1.821,5.715,5.715,0,0,0,.821,1.5,2.947,2.947,0,0,0,2.974,1.21,4.439,4.439,0,0,0,2.946-2.87c.051-.162.054-.536.259-.447.107.046.282.524.357.638a3.306,3.306,0,0,0,1.009,1.023c.643.393,2.74.741,2.543-.585-.067-.452-.4-.589-.763-.746" transform="translate(-0.582 -1)"></path>
<path fill="currentColor" d="M.582,22V16.273H2.438a6.734,6.734,0,0,1,1.374.086,1.5,1.5,0,0,1,.825.561,1.779,1.779,0,0,1,.332,1.115,1.865,1.865,0,0,1-.192.887,1.557,1.557,0,0,1-.486.564,1.666,1.666,0,0,1-.6.272,6.657,6.657,0,0,1-1.2.082H1.738V22Zm1.156-4.758v1.625h.633a2.98,2.98,0,0,0,.914-.09.753.753,0,0,0,.361-.281.765.765,0,0,0,.131-.445.742.742,0,0,0-.183-.516.807.807,0,0,0-.465-.254,5.563,5.563,0,0,0-.832-.039Zm3.946,1.93A3.654,3.654,0,0,1,5.945,17.7a2.7,2.7,0,0,1,.534-.785,2.226,2.226,0,0,1,.74-.516,3.144,3.144,0,0,1,1.234-.226,2.688,2.688,0,0,1,2.026.785,3.01,3.01,0,0,1,.759,2.184,3,3,0,0,1-.754,2.169,2.663,2.663,0,0,1-2.015.784,2.692,2.692,0,0,1-2.031-.78A2.954,2.954,0,0,1,5.684,19.172Zm1.191-.039a2.146,2.146,0,0,0,.449,1.474,1.545,1.545,0,0,0,2.276,0,2.191,2.191,0,0,0,.443-1.494,2.153,2.153,0,0,0-.432-1.469,1.462,1.462,0,0,0-1.146-.484,1.471,1.471,0,0,0-1.153.49A2.168,2.168,0,0,0,6.875,19.133ZM12.953,22l-1.367-5.727H12.77l.863,3.934,1.047-3.934h1.375l1,4,.879-4H19.1L17.711,22H16.484l-1.14-4.281L14.207,22Zm6.738,0V16.273h4.247v.969h-3.09v1.27h2.875v.965H20.848v1.558h3.2V22Zm5.34,0V16.273h2.434a4.16,4.16,0,0,1,1.334.155,1.32,1.32,0,0,1,.666.549,1.645,1.645,0,0,1,.25.9,1.525,1.525,0,0,1-.379,1.064,1.821,1.821,0,0,1-1.133.53,2.669,2.669,0,0,1,.619.48,6.5,6.5,0,0,1,.658.93L30.18,22H28.8l-.836-1.246a8.243,8.243,0,0,0-.609-.842A.894.894,0,0,0,27,19.674a1.9,1.9,0,0,0-.582-.065h-.234V22Zm1.157-3.3h.855a4.415,4.415,0,0,0,1.039-.07.625.625,0,0,0,.324-.242.748.748,0,0,0,.117-.43.687.687,0,0,0-.154-.467.709.709,0,0,0-.435-.224q-.141-.02-.844-.02h-.9ZM30.805,22V16.273h4.246v.969h-3.09v1.27h2.875v.965H31.961v1.558h3.2V22Zm5.332-5.727H38.25a4.117,4.117,0,0,1,1.09.11,1.916,1.916,0,0,1,.863.527,2.5,2.5,0,0,1,.547.928,4.224,4.224,0,0,1,.188,1.353,3.767,3.767,0,0,1-.176,1.219,2.53,2.53,0,0,1-.614,1.012,2.027,2.027,0,0,1-.812.457A3.488,3.488,0,0,1,38.312,22H36.137Zm1.156.969v3.793h.863a3.109,3.109,0,0,0,.7-.055,1.052,1.052,0,0,0,.467-.238,1.207,1.207,0,0,0,.3-.553,3.736,3.736,0,0,0,.117-1.048,3.429,3.429,0,0,0-.117-1.02,1.307,1.307,0,0,0-.328-.555,1.109,1.109,0,0,0-.535-.269,5.191,5.191,0,0,0-.95-.055Zm6.852-.969h2.289a6.557,6.557,0,0,1,1.013.057,1.5,1.5,0,0,1,.6.236,1.47,1.47,0,0,1,.439.479,1.287,1.287,0,0,1,.176.67,1.358,1.358,0,0,1-.8,1.242,1.508,1.508,0,0,1,.8.52,1.373,1.373,0,0,1,.281.863,1.7,1.7,0,0,1-.181.76,1.532,1.532,0,0,1-.5.589,1.632,1.632,0,0,1-.776.272q-.288.032-1.394.039H44.145Zm1.156.954v1.324h.758q.675,0,.839-.02a.763.763,0,0,0,.467-.2.6.6,0,0,0,.17-.447.633.633,0,0,0-.146-.432.67.67,0,0,0-.436-.2c-.114-.013-.444-.019-.988-.019Zm0,2.277v1.531h1.07A5.3,5.3,0,0,0,47.164,21a.711.711,0,0,0,.42-.229.7.7,0,0,0,.162-.486.746.746,0,0,0-.125-.437.707.707,0,0,0-.361-.262,3.922,3.922,0,0,0-1.026-.082ZM51.422,22V19.59l-2.1-3.317H50.68l1.347,2.266,1.321-2.266H54.68L52.574,19.6V22Z" transform="translate(-0.582 -1)"></path>
</svg>
</div>
</div>
</div>
</div>
</footer>

</div>
</div>
<div id="modals"></div>
</body>
</html>
```