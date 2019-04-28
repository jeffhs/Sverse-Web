<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'perfil.label', default: 'Perfil')}"/>
    <title>
        <g:message code="default.list.label" args="[entityName]"/>
    </title>
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

    <style>
    * {
        padding: 0;
        margin: 0;
    }

    html, body {
        background-size: cover;
        background-repeat: no-repeat;
    }
    </style>
</head>

<body>
<div class="container">
    <div class="columns">
        <div class="column col-12">
            <header class="global-header contentNavGlobal">
                <div class="content community-bg ">
                    <div class="container">
                        <g:render template="../templates/_navGlobal"/>
                    </div>
                </div>
            </header>
            <g:render template="../templates/_navHome"/>
            <div style="text-align: center; margin-right: 0;">
                <section class="global-body">
                    <a onclick="abrirCalendario()" href="#" style=" margin-left: 88%;">
                        <g:img style="margin-top: 10px; height: 30px; width: 30px;" src="calendar-icon.png"></g:img>
                    </a>
                    <a onclick="abrirConfiguracoes()" href="#"
                       style=" margin-bottom: 4px; margin-top: 4px; margin-left: 20px; margin-right: 10px;">
                        <g:img class="rotate" style="margin-top: 10px; height: 30px; width: 30px;"
                               src="settings-icon.png"></g:img>
                    </a>

                    <section class="community-content">
                        <g:render template="mainPagePerfil"/>
                    </section>
                    <aside class="community-sidebar"
                           data-vce="sidebar-community"
                           data-close-by-overlay="1">
                        <div class="content community-sidebar-container">
                            <g:render template="perfilAtributos"/>
                            <g:render template="biografia"/>
                        </div>
                    </aside>
                </section>
            </div>
        </div>
    </div>
</div>
</body>
</html>