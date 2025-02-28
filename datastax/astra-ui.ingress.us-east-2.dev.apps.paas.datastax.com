```<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >

<head>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-W99FD34');</script>
    <!-- End Google Tag Manager -->
    <!-- Segment Analytics -->
    <script>
    !function(){var analytics=window.analytics=window.analytics||[];if(!analytics.initialize)if(analytics.invoked)window.console&&console.error&&console.error("Segment snippet included twice.");else{analytics.invoked=!0;analytics.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","reset","group","track","ready","alias","debug","page","once","off","on","addSourceMiddleware","addIntegrationMiddleware","setAnonymousId","addDestinationMiddleware"];analytics.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);e.unshift(t);analytics.push(e);return analytics}};for(var t=0;t<analytics.methods.length;t++){var e=analytics.methods[t];analytics[e]=analytics.factory(e)}analytics.load=function(t,e){var n=document.createElement("script");n.type="text/javascript";n.async=!0;n.src="https://a.datastax.com/analytics.js/v1/"+t+"/analytics.min.js";var a=document.getElementsByTagName("script")[0];a.parentNode.insertBefore(n,a);analytics._loadOptions=e};analytics.SNIPPET_VERSION="4.1.0";
    analytics.load("DkTt2obVcmEQEJKlrnM8NngyS9gpvPnv");
    analytics.page();
    }}();
    </script>
    <!-- End Segment Analytics -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

            <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <title>DataStax</title>
    <link rel="icon" href="/auth/resources/5cigl/login/cloud/img/favicon.ico" />
            <link href="/auth/resources/5cigl/login/cloud/node_modules/patternfly/dist/css/patternfly.css" rel="stylesheet" />
            <link href="/auth/resources/5cigl/login/cloud/lib/zocial/zocial.css" rel="stylesheet" />
            <link href="/auth/resources/5cigl/login/cloud/css/login.css" rel="stylesheet" />
            <link href="/auth/resources/5cigl/login/cloud/css/style.css" rel="stylesheet" />
            <link href="/auth/resources/5cigl/login/cloud/css/bundle.css" rel="stylesheet" />
            <link href="/auth/resources/5cigl/login/cloud/css/rebrand.css" rel="stylesheet" />
    <link rel="dns-prefetch" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Kanit:wght@700&family=Roboto:wght@400;500;900&display=swap" />
</head>

<body  class="astra-auth" style="background-image: url('/auth/resources/5cigl/login/cloud/img/astra-background.png');" >
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W99FD34"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
  <div class="login-pf-page">
      <header>
        <div class="container">
          <nav class="navbar">
            <a class="navbar-brand" href="//datastax.com">
              <img src="/auth/resources/5cigl/login/cloud/img/datastax-white-logo.svg" alt="Datastax logo">
            </a>
            <p class="ml-auto mb-0">
                <span class="d-none d-md-inline">Don’t have an account?</span>
                <a href="/auth/realms/CloudUsers/login-actions/registration?client_id=auth-proxy&amp;tab_id=3rJvpZ0ZjIM">Sign up</a>
            </p>
          </nav>
        </div>
      </header>
      <div id="kc-content">
        <div id="kc-content-wrapper">
  <main>
     <div class="container">
        <div class="row">
          <div class="col-12 col-lg-6 col-xl-5">
            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="https://non-prod.auth.cloud.datastax.com/auth/realms/CloudUsers/login-actions/authenticate?session_code=NjM64HqnZ1QzKRWMS9YfTMqtGqOOKRucQtypRowIgQw&amp;execution=89d7121f-bb88-4bf2-b5a6-3e8ae0499c2d&amp;client_id=auth-proxy&amp;tab_id=3rJvpZ0ZjIM" method="post">
              <h3>Sign In</h3>
              <div class="form-group">
                <label for="username" class="control-label">Email</label>
                  <input tabindex="1" id="username" class="form-control" name="username" value=""  type="text" autofocus autocomplete="off" />
              </div>

              <div class="form-group">
               <label for="password" class="control-label">Password</label>
               <input tabindex="2" id="password" class="form-control" name="password" type="password" autocomplete="off" />
              </div>
              <div class="form-group row">
                <div class="col-12 mb-3 col-md-auto mb-md-0">
                   <div class="custom-control custom-checkbox">
                     <input class="custom-control-input" id="rememberMe" name="rememberMe" type="checkbox" >
                     <label class="custom-control-label" for="rememberMe">Remember Me</label>
                   </div>
                </div>

                <div class="col-12 col-md-auto ml-md-auto text-md-right">
                    <a href="/auth/realms/CloudUsers/login-actions/reset-credentials?client_id=auth-proxy&amp;tab_id=3rJvpZ0ZjIM" class="forgot-password">Forgot Password?</a>
                </div>
              </div>

              <div id="kc-form-buttons" class="form-group">
               <input tabindex="4" class="btn btn-primary btn-block btn-lg" name="login" id="kc-login" type="submit" value="Sign In"/>
              </div>

                <div class="form-group or-separator">
                  <div class="col pr-0"><hr /></div>
                  <div class="col-auto">OR</div>
                  <div class="col pl-0"><hr /></div>
                </div>
                  <div class="form-group">
                    <a class="btn btn-outline-primary btn-block" href="/auth/realms/CloudUsers/broker/google/login?client_id=auth-proxy&amp;tab_id=3rJvpZ0ZjIM&amp;session_code=NjM64HqnZ1QzKRWMS9YfTMqtGqOOKRucQtypRowIgQw" id="zocial-google">
                       <img src="/auth/resources/5cigl/login/cloud/img/google-icon.svg" alt="google icon">
                       Sign In with Google
                    </a>
                  </div>
                  <div class="form-group">
                    <a class="btn btn-outline-primary btn-block" href="/auth/realms/CloudUsers/broker/github/login?client_id=auth-proxy&amp;tab_id=3rJvpZ0ZjIM&amp;session_code=NjM64HqnZ1QzKRWMS9YfTMqtGqOOKRucQtypRowIgQw" id="zocial-github">
                       <img src="/auth/resources/5cigl/login/cloud/img/github-icon.svg" alt="github icon">
                       Sign In with GitHub
                    </a>
                  </div>
            </form>
          </div>
          <div class="col-12 col-md ml-md-auto col-xl-auto">
              <article class="astra-auth__marketing">
                <header>
                  <h2>DataStax Astra <br /><brCassandra-as-a-Service</h2>
                  <h3>Open, Multi-cloud Stack for Modern Data Apps</h3>
                </header>
                <ul>
                  <li>Start in minutes with 5 GB free, no credit card needed.</li>
                  <li>Eliminate the overhead to install, operate, and scale Cassandra clusters.</li>
                  <li>Build faster with REST, GraphQL, CQL, and JSON/Document APIs.</li>
                  <li>Built on open-source Apache Cassandra™ used by the best of the internet.</li>
                  <li>Scale elastically — apps are viral ready from Day 1.</li>
                  <li>Deploy multi-cloud, multi-tenant or dedicated clusters on AWS, Azure, or GCP.</li>
                  <li>Ensure enterprise-level reliability, security, and management.</li>
                </ul>
                <p>Still have questions? <a href="https://docs.astra.datastax.com/docs/datastax-astra-faq" target="_blank">Check out the FAQ!</a></p>
              </article>
            </div>
          </div>
      </div>
    </main>

            <div id="kc-info" class="login-pf-signup">
              <div id="kc-info-wrapper" class="">

              </div>
            </div>
        </div>
      </div>

    </div>
  </div>
  <footer>
    <div class="container">
      <p>© 2020 DataStax</p>
    </div>
  </footer>
  <script src="/auth/resources/5cigl/login/cloud/js/app.62b3ac33.js"></script></body>
  </html>

</body>
</html>
```