<!doctype html>
<html>
<head>
    <title>Sverse Web</title>
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

    <style>
    .rotate {
        animation: rotation 3s infinite;
    }
    @keyframes  rotation {
        from {transform: rotate(0deg)}
        to {transform: rotate(359deg)}
    }
    </style>
</head>

<body>

<div class="container">
    <div class="columns">
        <div class="column col-12">
            <header class="global-header">
                <div class="content community-bg">
                    <div class="container">
                        <g:render template="../templates/_navGlobal"/>
                    </div>
                </div>
            </header>
            <g:render template="../templates/_navHome"/>
            <div style="text-align: center; margin-right: 0;">
                <section class="global-body" style="margin-left: 40px;">
                    <a onclick="abrirCalendario()" href="#" style=" margin-left: 88%;">
                        <g:img style="margin-top: 10px; height: 30px; width: 30px;" src="calendar-icon.png"></g:img>
                    </a>
                    <a onclick="abrirConfiguracoes()" href="#"
                       style=" margin-bottom: 4px; margin-top: 4px; margin-left: 20px; margin-right: 10px;">
                        <g:img class="rotate" style="margin-top: 10px; height: 30px; width: 30px;"
                               src="settings-icon.png"></g:img>
                    </a>

                    <section class="community-content">
                        <section class="main-page content user-normal">
                            <article class="post main-post user-profile-page">
                                <g:if test="${usuario != null}">
                                    <g:each in="${usuario.posts}" var="post">
                                        ${post.dataDePublicacao}
                                    </g:each>
                                </g:if><g:else>
                                <h4 style="padding: 10px">${usuario?.nome}, seja bem vindo ao Sverse Web</h4>
                                <h6 style="padding: 10px">Atualmente você não tem nenhum post.</h6>
                            </g:else>

                            </article>
                        </section>
                    </section>
                    <aside class="community-sidebar"
                           data-vce="sidebar-community"
                           data-close-by-overlay="1">
                        <div class="content community-sidebar-container" style="margin-top: 18px; height: 90%;">
                            <g:render template="../templates/_pomodoro"/>
                            <g:render template="../templates/_dica"/>
                        </div>
                    </aside>
                </section>
            </div>
        </div>
    </div>
</div>


<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src="scripts/profile-model.js"></script>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="scripts/grid-profile.js"></script>
</body>
</html>
