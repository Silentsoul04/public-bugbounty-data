```<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>Tesla SSO – Login</title>
  
  <link rel="shortcut icon" href="/images/icons/favicon.ico" type="image/vnd.microsoft.icon" />
  <link rel="icon" type="image/png" href="/images/icons/favicon-196x196.png" sizes="196x196?2" />
  <link rel="icon" type="image/png" href="/images/icons/favicon-160x160.png" sizes="160x160?2" />
  <link rel="icon" type="image/png" href="/images/icons/favicon-96x96.png" sizes="96x96?2" />
  <link rel="icon" type="image/png" href="/images/icons/favicon-16x16.png" sizes="16x16?2" />
  <link rel="icon" type="image/png" href="/images/icons/favicon-32x32.png" sizes="32x32?2" />
  
  <link rel="stylesheet" href="/styles/bulma.min.css" />
  <link rel="stylesheet" href="/styles/main.css" />
  
  <style nonce="0604034f30a7eaba3dd2">
  a { color: rgb(62, 107, 226); }
  a:hover { color: #345BC0; }
  .layout-body { width: 100%; }
  .login-form { width: 100%; }
  .login-body { padding: 10px 40px 40px 40px; background: #eee; border-top-left-radius: 1rem; border-top-right-radius: 1rem; }
  .input { height: 40px; font-size: 16px; border-radius: 2rem; }
  .messages { color: #c00; font-size: 12px; margin: 12px; }
  .login-button { border-radius: 2rem; color: #fff; background-color: rgb(62, 107, 226); border: 3px solid rgb(62, 107, 226); padding: 0 40px 0 40px; font-size: 0.9em; font-weight: 500; width: 100%; height: 40px; line-height: 36px; display: inline-block; }
  .login-button:hover { color: #fff; }
  .section-title { border-bottom: 1px solid #ccc; font-size: 30px; padding: 0 0 12px 0; letter-spacing: 2px; user-select: none; }
  .control label { display: none; }
  .signin { margin: 10px 0 0 0; }
  .register { background: #fff; font-size: 12px; color: #000; border-bottom-left-radius: 1rem; border-bottom-right-radius: 1rem; }
  .register a { display: block; height: 42px; line-height: 42px; }
  .g-recaptcha > div { margin: 5px auto 0 auto; }
  .background-semi-interior { background: radial-gradient(transparent, hsl(0, 0%, 2%)), #333 url(/images/login-semi-interior.jpg) no-repeat center center fixed; background-size: cover; }
  .starman { background: radial-gradient(transparent, hsl(0, 0%, 2%)), #333 url(/images/roadster-dontpanic.jpg) no-repeat center center fixed; background-size: cover; }  
  </style>
  
  
  
  
  
</head>
<body class="background-semi-interior hero is-fullheight">
  
  <div class="hero-head layout-header">
    
  </div>
  
  <div class="hero-body is-paddingless is-marginless">
    
    <div class="column is-4 is-offset-4">
      
      
      <form method="post" class="is-desktop login-form" id="login-form">
        <input type="hidden" name="_csrf" value="Pgd9E0eb-Y1V7TU_D9v1VYQPlpEU2Qt0yZdw" />
      
        <div class="login-body">
        
          <div class="has-text-centered">
            <h1 class="section-title" data-i18n-text>Sign In</h1>
          
            
          
            <div class="control username">
              <label class="label" data-i18n-text>Username</label>
              <input class="input" type="text" name="user" placeholder="Username" value="" tabindex="0" data-i18n-placeholder />
            </div>
            <div class="control email">
              <label class="label" data-i18n-text>Email</label>
              <input class="input" type="text" name="email" placeholder="Email" value="" tabindex="1" data-i18n-placeholder autocomplete="email" />
            </div>
            <div class="control password">
              <label class="label" data-i18n-text>Password</label>
              <input class="input" type="password" name="password" placeholder="Password" tabindex="2" data-i18n-placeholder autocomplete="current-password" />
            </div>
          
            <div class="has-text-left">
              
              <a href="/user/password/forgot" tabindex="3" data-i18n-text>Reset your password</a>
            </div>
          
            <div class="g-recaptcha has-text-centered"></div>
          
            
            
            <div class="has-text-centered signin">
              <button class="button login-button" tabindex="4" data-i18n-key="Sign In">Sign In</button>
            </div>
        
          </div>
        
        </div>
      
        <div class="has-text-centered register">
          <a href="/register" tabindex="5" data-i18n-text>Create an account</a>
        </div>
      
      </form>
      
      
    </div>
  </div>
  
  <div class="hero-foot has-text-centered layout-footer">
    <a class="locale-selector-flag locale-selector-toggle"><span>Language</span></a>
  </div>
  
  
  <!-- Locale Selector: start -->
  <div id="locale-selector" class="locale-selector closed">
    <div class="innerwrapper">
      <a class="close-modal locale-selector-toggle"></a>
      <iframe data-src="/static/locales.html?theme=dark"></iframe>
    </div>
  </div>
  
  <script src="/static/scripts/locales.js"></script>
  <script nonce="0604034f30a7eaba3dd2">
  new LocaleSelector();
  </script>
  <!-- Locale Selector: start -->
  
  
  <!-- Localization: start -->
  <script src="/static/scripts/i18next.bundle.min.js"></script>
  <script nonce="0604034f30a7eaba3dd2">
    var i18nValues = {
      
    };
    
    if (typeof i18next !== 'undefined') {
      i18next
        .use(i18nextBrowserLanguageDetector)
        .use(i18nextXHRBackend)
        .init({
          
          nsseparator: ':::',
          keyseparator: '::',
          ns: ['common', /*, 'moduleA', 'moduleB'*/],
          defaultNS: 'common',
          detection: {
            lookupQuerystring: 'locale',
          },
          fallbackLng: 'en-US',
          backend: {
            loadPath: '/static/data/locales/{{ns}}.{{lng}}.json'
          }
        }, autoTranslate(i18nValues));
    
      i18next.on('languageChanged', updateLang);
    }
  </script>
  <!-- Localization: end -->

  <script nonce="0604034f30a7eaba3dd2">
    document.body.onclick=function(t){t.target&&t.target.classList&&t.target.contains&&t.target.classList.contains("hero-body")&&document.body.classList.toggle("starman")};
  </script>

  <!-- @todo rolling index crypto keys: http://bitly.com/2WXBRNp -->

</body>
</html>```