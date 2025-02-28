```<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Arquillian &#183; Write Real Tests</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="An innovative testing platform for the Java Virtual Machine (JVM). Open source. Highly extensible." name="description">
    <link href="/blog/atom.xml" rel="alternate" title="Arquillian blog Atom feed" type="application/atom+xml">
    <link href="/stylesheets/screen.css?e0e71a3a85916364d66959de2468e50cc63bbf50" rel="stylesheet">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.js"></script>
    <![endif]-->
    <link href="/favicon.ico" rel="shortcut icon">
  </head>
  <body class="home">
    <header class="navbar navbar-fixed-top" id="banner" role="banner">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="g-plusone-slot">
            <div class="g-plusone" data-annotation="none"></div>
          </div>
          <a class="brand" href="/">
            <span class="logo"></span>
            <span class="name">Arquillian</span>
          </a>
          <nav class="nav-collapse" role="navigation">
            <ul class="nav">
              <li><a href="/invasion/">Invasion!</a></li>
              <li><a href="/features/">Features</a></li>
              <li><a href="/guides/">Guides</a></li>
              <li><a href="/docs/">Docs</a></li>
              <li><a href="/blog/">Blog</a></li>
              <li><a href="/community/">Community</a></li>
              <li><a href="/modules/">Modules</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </header>
    <div id="main">
      <header id="intro" role="intro">
        <div class="container">
          <div class="logline">
            <h2>So <em>you</em> can rule your code. Not the bugs.</h2>
            <p>No more mocks. No more container lifecycle and deployment hassles. Just <em>real</em> tests!</p>
          </div>
          <div class="cta">
            <a class="primary" href="/guides/getting_started/?utm_source=cta">Get Started!</a>
          </div>
        </div>
      </header>
      <div id="slideshow">
        <div class="item active">
          <div class="layout-photo" style="background-image: url('/images/testing-java-microservices-cover.png'); background-size: 32%; background-position: 70% 5px">
            <div class="visual"></div>
            <div class="container">
              <div class="headline" style="width:500px;margin-top:-100px;margin-left:50px">
                <p><img src="http://gravatar.com/avatar/8ac4459a1de90107204dbe42c2e687be?s=25" alt="" /> Alex Soto Bueno <img src="http://gravatar.com/avatar/c4ffa13c27fbb20c8404bd296e274007?s=25" alt="" /> Jason Porter <img src="https://avatars.githubusercontent.com/u/2536412?s=25" alt="" /> Andrew Gumbrecht presents:</p>
                <h2><a href="http://www.manning.com/sotobueno/">Testing Java Microservices</a></h2>
                <p><em>Testing Java Microservices</em> teaches you how to write tests for microservices in Java. You’ll learn test strategies that solve the most common issues you are likely to encounter. This practical hands-on guide begins with introducing you to microservices and providing you with a simple, carefully-designed application developed using microservices principles and following some of the most common technologies such as Java EE, Spring Boot, WildFly Swarm, and Docker. Along the way, you’ll learn about technologies like the Arquillian ecosystem, Wiremock, Mockito, AssertJ, Pact or Gatling. Finally, you’ll see how everything fits together into the Continuous Delivery pipeline.</p>
                <p class="more"><a href="http://www.manning.com/sotobueno/">Order now</a> &raquo;</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <hr class="taper" />
      <div class="container">
        <p class="question">What's been happening lately?</p>
      </div>
      <div id="activity">
        <div class="container">
          <div id="spotlight">
            <h2 class="icon crown">Contributor Spotlight</h2>
            <ul>
              <li>
                <a href="/community/hantsy">
                  <img height="44" src="https://avatars.githubusercontent.com/u/854520?s=44" width="44" />
                </a>
                <h3 style="line-height: 1; margin-bottom: 0;">Hantsy Bai</h3>
                <em style="display: block; margin-bottom: 1em;">China</em>
                <p>Hantsy Bai (<a href="http://twitter.com/hantsy">@hantsy</a>) is self-employed technology consultant focused on Java EE, Spring and Groovy. He lives in Guangzhou, China.</p>
                <p>Hantsy seized the opportunity to contribute to Arquillian by translating many of the guides into Simplified Chinese, including <a href="/guides/getting_started_zh_cn">Getting Started</a>, <a href="/guides/getting_started_rinse_and_repeat_zh_cn">Getting Started: Rinse and Repeat</a>, <a href="/guides/get_started_faster_with_forge_zh_cn">Getting Started Faster with Forge</a> and <a href="/guides/testing_java_persistence_zh_cn">Testing Java Persistence</a>.</p>
                <p>In 2012, Hantsy received a <a href="http://jboss.org/jbcra">JBoss Community Recognition Award</a> for his formidable contribution of translations, more than any other individual. His contributions have opened up Arquillian to a whole new world of developers. In addition, his dedication has fueled the translation effort. There are now over two dozen translations of the Arquillian guides distributed across ten languages.</p>
              </li>
            </ul>
            <div class="more">
              <a href="/community/contributors">View all contributors &raquo;</a>
            </div>
          </div>
          <div id="news">
            <h2 class="icon news">Latest News</h2>
            <ul>
              <li>
                <a href="/community/dipak-pawar">
                  <img class="avatar" height="44" src="https://avatars.githubusercontent.com/u/7941617?s=44" style="margin-top:2px" title="Posted by Dipak Pawar on Jun 13, 2018" width="44" />
                </a>
                <h3>
                  <a href="/blog/2018/06/13/arquillian-cube-1-16-0/">Arquillian Cube Extension 1.16.0 Released</a>
                </h3>
                <p>The Arquillian team is proud to announce the 1.16.0 release of the Arquillian Cube Extension component!
                
                What is Arquillian Cube Extension?
                With Arquillian Cube you can control the lifecycle of Docker images as part of the test lifecyle, either automatically or manually....</p>
              </li>
              <li>
                <a href="/community/matousjobanek">
                  <img class="avatar" height="44" src="https://avatars.githubusercontent.com/u/1510709?s=44" style="margin-top:2px" title="Posted by Matous Jobanek on Jun 06, 2018" width="44" />
                </a>
                <h3>
                  <a href="/blog/2018/06/06/arquillian-extension-byteman-1-0-0/">Arquillian Extension Byteman 1.0.0 Released</a>
                </h3>
                <p>The Arquillian team is proud to announce the 1.0.0 release of the Arquillian Extension Byteman component!
                
                What is Arquillian?
                Arquillian is open source software that empowers you to test JVM-based applications more effectively....</p>
              </li>
              <li>
                <a href="/community/dipak-pawar">
                  <img class="avatar" height="44" src="https://avatars.githubusercontent.com/u/7941617?s=44" style="margin-top:2px" title="Posted by Dipak Pawar on Mar 29, 2018" width="44" />
                </a>
                <h3>
                  <a href="/blog/2018/03/29/arquillian-cube-1-15-3/">Arquillian Cube Extension 1.15.3 Released</a>
                </h3>
                <p>Since we wrote this post we didn't laze around. Check our latest announcement....</p>
              </li>
            </ul>
            <div class="more">
              <a href="/blog">View all blog entries &raquo;</a>
            </div>
          </div>
          <div id="events">
            <h2 class="icon invasion">Upcoming Events</h2>
            <ul>
            </ul>
            <div class="more">
              <a href="/invasion/events">View all events &raquo;</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer>
      <div class="container">
        <div class="project">
          <img src="/images/arquillian_logo_200px.png">
          <p class="bottom">
            &#169;
            Copyright 2009-2018 Red Hat, Inc.
            <br>
            <i class="icon-fire"></i>
            Mixed with <a href="http://twitter.github.com/bootstrap">Bootstrap</a>. Baked by <a href="http://awestruct.org">Awestruct</a>.
            <br>
            <i class="icon-share-alt"></i>
            Website and docs licensed under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.
            <br>
            Code released under <a href="http://www.apache.org/licenses/LICENSE-2.0.html">Apache License, v2.0</a>.
          </p>
        </div>
        <div class="footer-nav">
          <h4>Learn</h4>
          <ul>
            <li>
              <a href="/invasion">Mission</a>
            </li>
            <li>
              <a href="/features">Features</a>
            </li>
            <li>
              <a href="/docs">Documentation</a>
            </li>
            <li>
              <a href="/guides">Guides</a>
            </li>
            <li>
              <a href="https://docs.jboss.org/author/display/ARQ/Reference+Guide">Manual</a>
            </li>
            <li>
              <a href="http://community.jboss.org/en/arquillian/faq">FAQs</a>
            </li>
          </ul>
        </div>
        <div class="footer-nav">
          <h4>Get Involved</h4>
          <ul>
            <li>
              <a href="http://community.jboss.org/en/arquillian?view=discussions">Forums</a>
            </li>
            <li>
              <a href="https://issues.jboss.org/browse/ARQ">Issue Tracker</a>
            </li>
            <li>
              <a href="https://github.com/arquillian">Source Code</a>
            </li>
            <li>
              <a href="/community/contributors">Contributors</a>
            </li>
            <li>
              <a href="https://community.jboss.org/groups/testing">Testing SIG</a>
            </li>
          </ul>
        </div>
        <div class="sponser">
          <div class="follow-us">
            <h4>Stay Informed</h4>
            <ul>
              <li>
                <a href="https://plus.google.com/100660127586085393031?rel=author"><img alt="Google+" src="/images/social/googleplus-16.png" title="Follow Arquillian on Google+"></a>
              </li>
              <li>
                <a href="https://twitter.com/#!/search/%23arquillian"><img alt="Twitter" src="/images/social/twitter-16.png" title="Browse the #arquillian hashtag on Twitter"></a>
              </li>
              <li>
                <a href="http://www.linkedin.com/groups?gid=3120340"><img alt="LinkedIn" src="/images/social/linkedin-16.png" title="Join the Arquillian group on LinkedIn"></a>
              </li>
              <li>
                <a href="http://vimeo.com/channels/arquillian"><img alt="Vimeo" src="/images/social/vimeo-16.png" title="Follow the Arquillian channel on Vimeo"></a>
              </li>
            </ul>
          </div>
          <p>This website is open source! If you want to improve it, <a href="http://github.com/arquillian/arquillian.github.com">fork the project</a>, hack on it, then send a <a href="https://help.github.com/articles/using-pull-requests">pull request</a>. You can also view the <a href="http://www.seethestats.com/site/arquillian.org">visitor stats</a>.</p>
          <p class="image"><a href="http://jboss.org"><img src="/images/jboss_redhat_branding.png" class="branding" title="Red Hat, Inc." alt="Red Hat, Inc." /></a></p>
          <p>Arquillian is a <a href="http://jboss.org">JBoss Community</a> project and development is sponsored by Red Hat, Inc.</p>
          <p class="bottom"><a href="http://www.redhat.com/legal/legal_statement.html">Terms of Use</a> | <a href="http://www.redhat.com/legal/privacy_statement.html">Privacy Policy</a></p>
        </div>
        <a class="visible-desktop" href="#" id="toTop">Top</a>
      </div>
    </footer>
    <script>
      $(function() {
        $('html').addClass('ready');
        prettify();
        activateFooterGravity();
        activateTooltips();
        activateToTopControl();
      });
    </script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.0.2/bootstrap.min.js"></script>
    <script src="/javascripts/prettify.js"></script>
    <script src="/javascripts/site.js?b716a0a39091a141161c91c10c906872383b40c9"></script>
    <script>
      (function() {
        var po = document.createElement('script'); po.async = true; po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
      })();
    </script>
    <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount','UA-18727998-3']);
    _gaq.push(['_trackPageview']);
    (function() {
     var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
     ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
     var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
    </script>
  </body>
</html>
```