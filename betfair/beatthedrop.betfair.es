```<!DOCTYPE html>
<html lang="br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    
            <title>Segurar esta Bolada (Beat The Drop) » Betfair desafio das futebol</title>
<meta name="csrf-token" content="1tFoGJUkLwPWuGgSt1StQuwbJNAlO1Bcc8gD5RvD">
<meta name="og:url" content="https://beatthedrop.betfair.com">
<meta name="og:image" content="https://beatthedrop.betfair.com/images/betfair/favicon.png">
<meta name="og:title" content="Segurar esta Bolada">
<meta name="description" content="Descubra apostas esportivas com um toque na Betfair, onde você pode apostar na Premier League e na Champions League com o nosso desafio Segurar esta Bolada!">

    <link rel="alternate" href="https://beatthedrop.betfair.com" hreflang="x-default" />
    <link rel="alternate" href="https://beatthedrop.betfair.com/segureestabolada" hreflang="pt-br" />
    <link rel="alternate" href="https://beatthedrop.betfair.com/rettedengewinn" hreflang="de-de" />
    
    <link rel="shortcut icon" type="image/png" href="https://beatthedrop.betfair.com/images/betfair/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="88x88" href="https://beatthedrop.betfair.com/images/betfair/favicon.png">
    <link rel="manifest" href="/manifest.json">

    <style>@import  url("css/betfair-critical.css");</style>
    <link rel="stylesheet" rel="preload" href="/css/betfair-overall.css?id=3bae249c4f78707083c8">
    
    <script>window.dataLayer = window.dataLayer || [];</script>
        
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-P32JX6');</script>
    <!-- End Google Tag Manager -->
</head>
<body>
    <!-- Google Tag Manager (noscript) -->
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P32JX6" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    
    <div id="app" class="app" v-cloak>
        <div class="blur-bg" v-show="isEnabledOverlay" @click="overlayOutsideClick"></div>

        <transition-group name="slide-from-bottom" class="non-blur">
            <overlay v-if="isEnabledOverlay" :key="getOverlayKey"></overlay>
        </transition-group>

        <div 
    class="header-container"
    ref="headerContainer"
    :class="{'fixed': stickyIsActive}">

    <header id="header" class="header">
        <div class="header-item">
            <div class="back-btn" v-if="isEnabledBackArrow" @click="goBack">
                <div class="back-btn-icon"></div>
            </div>
            <div class="logo" :class="getLocalizationClass" @click="goToPage('questionsList')"></div>
        </div>
        <div class="header-item">
            <template v-if="getUser">
                                <a href="/history" class="balance-trigger" @click.prevent="openMyBets"></a>
                
                <div class="user-balance" @click="showUserProfile">
                                        <div>{{ $t('user_balance') }}</div>
                                        <div class="user-balance--value">{{ getUser.balance | currency(2, 2) }}</div>
                                    </div>
            </template>

            <div class="login-link" v-else>
                <a href="#" @click="login">{{ $t('login_link') }}</a>
                <div class="separator"></div>
                <a href="#" @click="register">{{ $t('join_link') }}</a>
            </div>
        </div>
    </header>

    <user-tour-info v-if="enableUserTourInfo"></user-tour-info>
</div>        <side-slide>
        <router-view 
            :key="$route.path" 
            class="main-content"
            :class="getLocalizationClass"
            :style="{marginTop: headerHeight + 'px'}">
        </router-view>
    </side-slide>

    <div class="info-links">
        <a href="/gameRules" class="info-links--item mb-3" @click.prevent="goToPage('gameRules')">Regras do jogo</a>
        <a href="/faqs" class="info-links--item mb-3" @click.prevent="goToPage('faq')">Perguntas mais frequentes</a>
        <a :href="$t(getTermAndConditionLink)" class="info-links--item" target="_blank">Termos e Condições</a>
    </div>
        <footer class="footer">
    <footer-timer v-if="isAvailableFooterTimer"></footer-timer>

    <div class="footer_top-section"> 
        <div class="bottom-logo" :class="getLocalizationClass">powered by</div>
    </div>
    
    <div class="footer_block">
        <div class="footer_info" v-for="item in footerInfo">
            <b>{{ item.title }}</b>
            <span v-html="item.content"></span>
        </div>

        <div class="footer_logos d-flex justify-content-center align-items-center">
            <a href="http://content.betfair.com/misc/?product=portal&amp;sWhichKey=GamCare&amp;locale=sv&amp;wrapperExtUrl=true" target="_blank"><img src="/images/logos/18.png" alt=""></a>
            <a href="http://www.gamcare.org.uk/?wrapperExtUrl=true" target="_blank"><img src="/images/logos/gamcare.png" alt=""></a>
            <a :href="'https://www.gamblingtherapy.org/' + getCurrentLanguageCode + '?ReferrerID=103'" target="_blank"><img src="/images/logos/gt.svg" alt=""></a>
            <a href="http://www.whenthefunstops.co.uk/" target="_blank"><img src="/images/logos/when_the_fun_bg.png" alt=""></a>
        </div>
        <div class="footer_logos d-flex justify-content-center align-items-center">
            <a href="https://www.authorisation.mga.org.mt/verification.aspx?lang=en&company=4f2ce9bc-6584-440c-8643-9314defffd0e" target="_blank"><img src="/images/logos/mga.svg" alt=""></a>
            <a href="https://secure.gamblingcommission.gov.uk/PublicRegister/Search/Detail/39439" target="_blank"><img src="/images/logos/gambling-commission.svg" alt=""></a>
            <a href="https://www.gamstop.co.uk/" target="_blank"><img src="/images/logos/gamstop.svg" alt=""></a>
        </div>
        <div class="footer_info">
            <div class="footer_parag">
                PPB Counterparty Services Limited, Triq il-Kappillan Mifsud, St. Venera, SVR 1851, MALTA, é licenciada e regulada pela Malta Gaming Authority.
                <a href="https://www.mga.org.mt/" target="_blank"> </a>
                Licença número: MGA/CL2/294/2006 12 de Março 2013, e para os clientes no Reino Unido, licenciada e regulada pela <a href='https://secure.gamblingcommission.gov.uk/gccustomweb/PublicRegister/PRSearch.aspx?ExternalAccountId=39439' target='_blank'>Gambling Commission</a>. Licença número: <a target='_blank' href='https://secure.gamblingcommission.gov.uk/PublicRegister/Search/Detail/39439'>000-039439-R-319330-003</a>
            </div>
            <div class="footer_parag"> </div>
            <div class="footer_parag">
                <a href="http://responsiblegambling.betfair.com" target="_blank">O jogo pode causar dependência. Por favor, jogue com responsabilidade.</a>
            </div>
            <div class="footer_parag">
                <span class="jurisdiction-gambling-text">
                    <a href="http://responsiblegambling.betfair.com" target="_blank">Jogo Responsável</a>
                </span>
                <span class="pipe">|</span>
                <a class="jurisdiction-gambling-text" target="_blank" href="http://www.gamcare.org.uk/">GamCare</a>
                <span class="pipe">|</span>
                <a class="jurisdiction-gambling-text" target="_blank" href="https://www.gamblingtherapy.org/pt?ReferrerID=103">Gambling Therapy</a>
                <span class="pipe">|</span>
                <a class="jurisdiction-gambling-text" target="_blank" href="https://www.betfair.com/aboutUs/Cookie.Policy/">Política de Cookies</a>
            </div>
        </div>
    </div>
    </footer>
        <transition-group name="fade" class="non-blur">
            <inline-message v-if="isEnabledInlineMessage" :key="getInlineMessageText"></inline-message>
            <personal-profile v-if="isEnabledUserProfile" key="profile"></personal-profile>
            <small-hint v-if="hasHint" @click="hideHint" key="hint"></small-hint>
            <decomission-apps-overlay
                v-if="decomissionAppsOverlayIsVisible"
                key="decomissionApps"
                @close-overlay="decomissionAppsOverlayIsVisible=false"
            ></decomission-apps-overlay>
        </transition-group>
    </div>

    <script>window.api_routes = {"login":"https:\/\/identitysso.betfair.com\/view\/login?product=bfbeatthedrop&url=https:\/\/beatthedrop.betfair.com","register":"https:\/\/register.betfair.com\/account\/registration?promotionCode=ZSKA57&returnURL=https:\/\/beatthedrop.betfair.com","questionsLibrary":"https:\/\/beatthedrop.betfair.com\/api\/question-library","numberWinners":"https:\/\/beatthedrop.betfair.com\/api\/numberWinners","matches":"https:\/\/beatthedrop.betfair.com\/api\/matches","tours":{"index":"https:\/\/beatthedrop.betfair.com\/api\/tours","actual":"https:\/\/beatthedrop.betfair.com\/api\/tours\/actual","round":"https:\/\/beatthedrop.betfair.com\/api\/tours\/round\/update","buy":"https:\/\/beatthedrop.betfair.com\/api\/tours","mine":"https:\/\/beatthedrop.betfair.com\/api\/tours\/mine"},"viewResult":"https:\/\/beatthedrop.betfair.com\/api\/user\/view-result","user":{"me":"https:\/\/beatthedrop.betfair.com\/api\/user","freeTicket":"https:\/\/beatthedrop.betfair.com\/api\/user\/getFreeTicket","freePeriod":"https:\/\/beatthedrop.betfair.com\/api\/user\/getFreePeriod","checkTheReward":"https:\/\/beatthedrop.betfair.com\/api\/user\/checkTheReward"},"log":{"info":"https:\/\/beatthedrop.betfair.com\/log\/info"},"question":{"vote":"https:\/\/beatthedrop.betfair.com\/api\/question\/vote"},"odd":{"active":"https:\/\/beatthedrop.betfair.com\/api\/active-odds"}};window.btd = {"provider":"betfair","brand":"betfair","data":{"cookies":{"link":"https:\/\/www.betfair.com\/aboutUs\/Cookie.Policy\/"},"crossBanner":{"text":"Go to Betfair Football Homepage","link":"https:\/\/www.betfair.com\/sport\/football"},"gtm":{"targetID":"UA-43334570-2","brand":"bf"},"faq_help":"help_center_link","termsAndConditions":"terms_and_conditions_link","rewardsLink":"https:\/\/myaccount.betfair.com\/rewards\/my-rewards\/choose","socialShareLinks":{"whatsapp":"https:\/\/beatthedrop.betfair.com\/?utm_source=share&utm_medium=whatsapp","twitter":"https:\/\/beatthedrop.betfair.com\/?utm_source=share&utm_medium=twitter","facebook":"https:\/\/beatthedrop.betfair.com\/?utm_source=share&utm_medium=facebook"},"referal":{"link":"https:\/\/promos.betfair.com\/promotion?promoCode=RAEAUTOSPORTS"}},"isNativeApp":false,"linkToGoAtNativeApp":"https:\/\/www.betfair.com\/sport","depositLink":"https:\/\/myfunds.betfair.com\/deposit?prod=8&showHeader=1&returnURL=https:\/\/beatthedrop.betfair.com","profileLink":"https:\/\/myaccount.betfair.com\/account\/navigation?prod=8&showHeader=1&hideBalance=off&iframe=false&returnURL=https:\/\/beatthedrop.betfair.com","footerInfo":[{"title":"Como funciona?","content":"Jogue o Segure esta Bolada, uma nova maneira de provar o seu conhecimento sobre esportes. O pr\u00eamio \u00e9 dado logo no in\u00edcio e voc\u00ea tem que jogar para mant\u00ea-lo. Responda corretamente, mantenha seus ganhos e prove seu conhecimento. Das op\u00e7\u00f5es oferecidas, basta escolher a pergunta a que prefere responder. \u00c9 um jogo simples de sim ou n\u00e3o, mas voc\u00ea precisa jogar de forma inteligente para vencer. Voc\u00ea pode ent\u00e3o, dividir o seu pote, ou apostar tudo nessa pergunta. Repita esse processo at\u00e9 que tenha respondido a todas as perguntas. Ap\u00f3s responder a todas as perguntas, o dinheiro que restar ser\u00e1 seu."},{"title":"O que posso ganhar?","content":"Os ganhos m\u00e1ximos de cada jogo (onde todas as 15 perguntas s\u00e3o respondidas corretamente) s\u00e3o de R$5.000 \/ $1.250."},{"title":"Quando recebo o meu pr\u00eamio?","content":"O dinheiro ser\u00e1 creditado automaticamente na sua conta no final de cada jogo."},{"title":"Que mais preciso saber?","content":"Para novos clientes o jogo ser\u00e1 gr\u00e1tis durante 30 dias. Os bilhetes s\u00f3 s\u00e3o v\u00e1lidos por sessenta dias a partir do momento em que voc\u00ea respondeu sua \u00faltima pergunta. Se este tempo terminar e um jogo n\u00e3o for conclu\u00eddo, voc\u00ea ter\u00e1 direito a reivindicar uma quantia que \u00e9 calculada dividindo o pote pela metade (ou seja, no decorrer do per\u00edodo de sessenta dias) para cada quest\u00e3o remanescente.  N\u00e3o h\u00e1 op\u00e7\u00e3o para jogar ou apostar dinheiro real com esta vers\u00e3o do jogo. Voc\u00ea ter\u00e1 oportunidades ilimitadas de jogar um jogo de '15 perguntas para ganhar um m\u00e1ximo de R$5000 \/ $1250' durante este per\u00edodo de 30 dias. Voc\u00ea s\u00f3 pode fazer um jogo de cada vez. O per\u00edodo gratuito expira 30 dias ap\u00f3s sua primeira entrada. Quando voc\u00ea chegar ao fim de um jogo dentro dos primeiros 30 dias (ganhar ou perder), voc\u00ea estar\u00e1 automaticamente habilitado a come\u00e7ar de imediato outro jogo novo gratuito, desde que esteja dentro do per\u00edodo de 30 dias. Os ganhos ser\u00e3o atribu\u00eddos em dinheiro."},{"title":"","content":"Para garantir que a promo\u00e7\u00e3o seja limitada a uma por cliente, s\u00f3 permitimos que um cliente participe de cada endere\u00e7o residencial, endere\u00e7o IP, endere\u00e7o de e-mail, m\u00e9todo de pagamento (por exemplo, cart\u00e3o de d\u00e9bito ou cr\u00e9dito, etc.) e \/ ou computador compartilhado biblioteca ou local de trabalho). Reservamo-nos o direito de n\u00e3o conceder entradas gratuitas a qualquer cliente. Ao registrar-se para jogar Segure esta Bolada, voc\u00ea concorda em receber comunica\u00e7\u00f5es de marketing e ofertas da Betfair. Voc\u00ea pode desativar ou gerenciar as prefer\u00eancias de contato durante o registro ou a qualquer momento, visitando a se\u00e7\u00e3o 'A minha conta'."}]};window.user = {"data":null,"tour":null,"ticketBox":null,"restrictedSports":null,"insufficientFunds":null};window.localization = {"userCountryCode":"us","active":"br","currencyCode":"BRL","list":{"de":"rettedengewinn","en":"en","es":"es","pe":"pe","mx":"mx","ro":"ro","dk":"dk","segureestabolada":"segureestabolada","latam":"latam"},"translations":{"product_name":"Segurar esta Bolada","meta_title":"Segurar esta Bolada (Beat The Drop) \u00bb Betfair desafio das futebol","meta_description":"Descubra apostas esportivas com um toque na Betfair, onde voc\u00ea pode apostar na Premier League e na Champions League com o nosso desafio Segurar esta Bolada!","user_balance":"Saldo","join_link":"Inscrever-se","login_link":"Fazer login","your_pot":"Seu pote","question":"Pergunta","of":"de","faq":"Perguntas mais frequentes","game_rules":"Regras do jogo","terms_and_conditions":"Termos e Condi\u00e7\u00f5es","terms_and_conditions_link":"http:\/\/www.betfair.com\/pt\/aboutUs\/Terms.and.Conditions\/","powered_by":"powered by","eighteen_plus_link":"http:\/\/content.betfair.com\/misc\/?product=portal&sWhichKey=GamCare&locale=sv&wrapperExtUrl=true","malta_authority":" ","license_text":"PPB Counterparty Services Limited, Triq il-Kappillan Mifsud, St. Venera, SVR 1851, MALTA, \u00e9 licenciada e regulada pela Malta Gaming Authority.","license_value":"Licen\u00e7a n\u00famero: MGA\/CL2\/294\/2006 12 de Mar\u00e7o 2013, e para os clientes no Reino Unido, licenciada e regulada pela <a href='https:\/\/secure.gamblingcommission.gov.uk\/gccustomweb\/PublicRegister\/PRSearch.aspx?ExternalAccountId=39439' target='_blank'>Gambling Commission<\/a>. Licen\u00e7a n\u00famero: <a target='_blank' href='https:\/\/secure.gamblingcommission.gov.uk\/PublicRegister\/Search\/Detail\/39439'>000-039439-R-319330-003<\/a>","license_uk_users":" ","responsible_gambling":"Jogo Respons\u00e1vel","addictive_gambling":"O jogo pode causar depend\u00eancia. Por favor, jogue com responsabilidade.","game_care":"GamCare","gambling_therapy":"Gambling Therapy","gambling_therapy_link":"https:\/\/www.gamblingtherapy.org\/pt?ReferrerID=103","cookie_policy":"Pol\u00edtica de Cookies","choose_first_question":"Escolha sua primeira pergunta","in_play_now":"Ao vivo","closes_in":"Esta pergunta encerra em","locked":"Divis\u00e3o confirmada.","days":"d","hours":"h","minutes":"m","seconds":"s","earn_free_days":" ","free_entry_available":"Entrada gr\u00e1tis disponivel","next_free_entry":"Pr\u00f3xima entrada gr\u00e1tis foi creditada em","play_for_free":"Jogue de gra\u00e7a","unlock_free_days":" ","answer_your_first_question_now":"Responda sua primeira pergunta","no_free_entry":"No momento, voc\u00ea n\u00e3o tem nenhuma entrada gr\u00e1tis dispon\u00edvel.","answer_questions_to_win":"Responda {questions} perguntas e ganhe at\u00e9 {pot}","tap_here_to_play":"Toque aqui para jogar","enter_game_here":" ","play_with_cash":"Jogue com dinheiro","shorter_games":"Jogos mais r\u00e1pidos","choose_stake":"Escolha a quantia","win_up_to":"Ganhe at\u00e9 {pot}","cash_games_unavailable":"Saldo Indisponivel","not_accepting_cash_games":"N\u00e3o estamos mais aceitando novas entradas, desculpa pela inconveni\u00eancia","more_questions":"Mais perguntas iguais a esta","less_questions":"Menos perguntas iguais a esta","ask_a_friend":"Pergunte a um amigo","less_questions_coming":"Receber menos dessas","more_questions_coming":"Receber mais dessas","already_voted":"Voc\u00ea ja escolheu esta op\u00e7\u00e3o","share_message_preconditions":"Eu estou na pergunta {currentRound} de {totalRounds} em Segure esta Bolada. {pot} restantes no meu pote e","share_message_question":"\"{question}\" \u00e9 minha pr\u00f3xima pergunta sobre {sport}, o que voc\u00ea acha?","share_it":"Share it!","checkout_product":"Conferir o Segure esta Bolada","overall_winners":"N\u00famero de Vencedores","help_center_text":"Se voc\u00ea precisar de mais ajuda, visite nosso Centro de Ajuda","help_center_link":"https:\/\/pt-betfair.custhelp.com\/app\/home","lets_play":"Vamos jogar","test_your_knowledge":"Teste seu conhecimento","choose_ticket_value":"Escolha o valor do bilhete","how_many_questions":"Escolha o n\u00famero de perguntas","play_game":"Come\u00e7ar jogo","yes":"Sim","no":"N\u00e3o","slide_to_lock":"Deslize para dividir seu pote","lock_your_split":"Confirmar divis\u00e3o","edit_split":"Editar divis\u00e3o","locked_in":"Voc\u00ea est\u00e1 travado. Segure firme!","locked_in_good_luck":"Boa sorte!","all_in_yes":"Com certeza","split_the_pot":"Dividir o pote","all_in_no":"Sem chance","change_question":"Alterar pergunta?","from":"De","to":"Para","boom_you_won":"Parab\u00e9ns, voc\u00ea ganhou","winner":"Vencedor","game_over":"Fim do jogo","game_voided":"Seu jogo foi anulado","expired_game":"Que pena! Seu jogo expirou","play_again":"Jogar novamente","refer_friends":"Ganhe dinheiro: indique amigos","answered_right":"% dos jogadores acertaram essa pergunta","answered_draw":"% de jogadores est\u00e3o 50\/50 nesta pergunta","question_no_result":"Esta pergunta n\u00e3o foi resultada","pot_left":"Tem {pot} no seu pote","good_to_go":"Tudo pronto","almost_had_it":"Voc\u00ea quase conseguiu","safe_bet":"Aposta segura","keep_going":" ","hang_on_there":" ","draw_split":" ","question_voided":"Sua \u00faltima pergunta foi anulada. ","select_another_question":"Selecione outra pergunta para continuar jogando","next_round":"Pr\u00f3xima rodada","history":"Hist\u00f3rico","pending":"Em progresso","game":"Jogo","questions":"Perguntas","no_rounds":"Voc\u00ea ainda n\u00e3o possui nenhuma aposta","this_game_is_free":"Este jogo \u00e9 de gra\u00e7a!","free_game":"Este jogo \u00e9 de gra\u00e7a!","free_game_conditions":"Voc\u00ea recebeu um pote de {pot}. Voc\u00ea deve responder {questions} perguntas, e o que voc\u00ea conseguir conquistar no final do jogo, \u00e9 seu!","free":"Gr\u00e1tis","entry_fee":"Taxa de entrada","pot":"Pr\u00eamio","answer_first_question":"Responda a primeira pergunta","bet_is_placing":"Aguarde. Sua aposta est\u00e1 sendo feita.","confirm_game_entry":"Confirmar a entrada no jogo?","insufficient_funds":"Fundos insuficientes","sorry":"Desculpe","opps":"Opps...","game_on":"Come\u00e7a o jogo!","entering_a_game":"Voc\u00ea est\u00e1 entrando em um jogo do Segurar esta Bolada","fill_up_account":"Abaste\u00e7a sua conta para continuar","unable_to_enter":"Fundos insuficientes","successfully_entered":"Sua entrada em um jogo do Segurar esta Bolada foi realizada com \u00eaxito","confirm_entry":"Confirmar","deposit_funds":"Depositar fundos","awarded_conditions":" ","read_more":"Read More","dont_miss_out":"Ative nossas notifica\u00e7\u00f5es!","receive_notifications":"Receba notifica\u00e7\u00f5es push assim que soubermos o resultado de suas perguntas.","question_resulted":"J\u00e1 saiu o resultado da sua \u00faltima pergunta, confira o resultado antes de responder \u00e0 pr\u00f3xima pergunta.","now":"Agora","no_thanks":"N\u00e3o, obrigado","enable_notifications":"Ativar notifica\u00e7\u00f5es","notification_question_resulted":"Sua pergunta do Segurar esta Bolada teve resultado! O que sobrou do seu pote?","notification_question_canceled":"Your question Beat The Drop has been canceled","error":"error","something_went_wrong":"Ocorreu algo errado!","go_to_homepage":"V\u00e1 para a p\u00e1gina principal","connection_error":"Problema de Conex\u00e3o: Por favor, atualize a p\u00e1gina. Se este problema persistir, cheque a sua conex\u00e3o e acesse sua conta novamente.","we_will_be":"VOLTAREMOS","back_very_soon":"EM BREVE!","stay_tuned":"Segure esta Bolada est\u00e1 preparando grandes novidades, fique ligado!","check_promotions":"Enquanto isso, confira as \u00faltimas ofertas do Betfair","take_me_there":"CONFERIR!","suspended_account":"Sua conta foi suspensa. Por favor, entre em contato com a","my_account":"Central de Ajuda","for_more_information":"para mais informa\u00e7\u00f5es"}};window.current_time = "2021-02-11 08:17:03";window.iso_code = "segureestabolada";window.device = "phone";window.device_key = "mW77sdgKPfElsaHJ";window.device_model = false;window.device_platform = false;window.device_browser = false;window.gtm_cookie = [];window.rfrCookieValue = 723021;window.prompt = null;</script><script type="text/javascript">
    (function(p,u,s,h,e,r,l,i,b) {p['XtremePushObject']=s;p[s]=function(){
        (p[s].q=p[s].q||[]).push(arguments)};i=u.createElement('script');i.async=1;
        i.src=h;b=u.getElementsByTagName('script')[0];b.parentNode.insertBefore(i,b);
    })(window,document,'xtremepush','/js/'+'betfair'+'/sdk.js');
</script>

<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function(){
        var user_account_id = window.user.data ? window.user.data.accountId : false;
        if (user_account_id) {
            xtremepush('set', 'external_id', user_account_id);
        }
    });
</script>

<script defer src="https://www.gstatic.com/firebasejs/4.13.0/firebase.js"></script>
<script defer src="https://beatthedrop.betfair.com/js/vendor/init-firebase.js"></script>    <script src="/js/web/app.js?id=d3199f6316c6bc244b32" defer></script>
</body>
</html>```