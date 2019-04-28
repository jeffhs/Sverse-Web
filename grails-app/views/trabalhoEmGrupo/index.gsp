<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'trabalhoEmGrupo.label', default: 'TrabalhoEmGrupo')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'itens-in-grid-trabalhos.css')}" type="text/css">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

</head>

<body>

<div class="container">
    <div class="columns">
        <div class="column col-12">
            <header class="global-header contentNavGlobal">
                <div class="content community-bg">
                    <div class="container">
                        <g:render template="../templates/_navGlobal"/>
                    </div>
                </div>
            </header>
            <g:render template="../templates/_navHome"/>
            <div style="text-align: center;">

                <g:render template="mainPageTrabalhos"/>

            </div>
        </div>
    </div>
</div>
</body>
</html>