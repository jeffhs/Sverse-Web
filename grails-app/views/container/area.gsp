<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'drag_and_drop.css')}" type="text/css">
    <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/45226/dragula.min.js"></script>
    <asset:javascript src="drag_and_drop.js"/>
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

                <g:render template="area"/>

            </div>
        </div>
    </div>
</div>
</body>
</html>