<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'cicloDeEstudo.label', default: 'CicloDeEstudo')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

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
            <div style="text-align: center; margin-right: 0;">
                <g:render template="cycle"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>