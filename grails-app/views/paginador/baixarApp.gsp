<!DOCTYPE html>
<html>
<head>
    <title>Sverse Login</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'button.css')}" type="text/css">
    <asset:javascript src="button.js"/>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'baixarAppLogo.css')}" type="text/css">
    <style>
    /* Customize the label (the container) */
    .mcontainer {
        display: block;
        position: relative;
        padding-left: 22px;
        margin-bottom: 12px;
        cursor: pointer;
        font-size: 14px;
        color: whitesmoke;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    /* Hide the browser's default radio button */
    .mcontainer input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
        height: 0;
        width: 0;
    }

    /* Create a custom radio button */
    .checkmark {
        position: absolute;
        top: 0;
        left: 0;
        height: 16px;
        width: 16px;
        background-color: #eee;
        border-radius: 50%;
    }

    /* On mouse-over, add a grey background color */
    .mcontainer:hover input ~ .checkmark {
        background-color: #ccc;
    }

    /* When the radio button is checked, add a blue background */
    .mcontainer input:checked ~ .checkmark {
        background-color: #2196F3;
    }

    /* Create the indicator (the dot/circle - hidden when not checked) */
    .checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    /* Show the indicator (dot/circle) when checked */
    .mcontainer input:checked ~ .checkmark:after {
        display: block;
    }

    /* Style the indicator (dot/circle) */
    .mcontainer .checkmark:after {
        top: 6px;
        left: 6px;
        width: 5px;
        height: 5px;
        border-radius: 50%;
        background: white;
    }

    .radiobuttons-container {
        height: auto;
        -webkit-column-count: 3;
        -moz-column-count: 3;
        column-count: 3;
    }
    </style>

</head>

<body>

<div class="contenedor" style="position: relative; width: 100vw;">
    <div class="columns">
        <div class="column col-12">
            <header class="global-header contentNavGlobal">
                <div class="content community-bg">
                    <div class="container">
                        <g:render template="../templates/_navGlobalBaixarApp"/>
                    </div>
                </div>
            </header>
        </div>
    </div>

    <div class=""
         style="position: absolute; width: 100vw; top: 44px; background-image: url('/assets/introsverse.jpg'); background-size: cover; background-position: center;">
    </div>

    <div style="color: #00FF7F; justify-content: center; align-items: center; width: 100%; height: 100%;">

        <button class="bBaixarApp"
                style="border-radius: 40px; position:fixed; left: 35%; bottom: 18%; text-align: right;" href="#"
                onclick="window.open('https://www.apple.com/br/ios/app-store/', '_blank'); ">
            <img style="right: 24px; width: 24px; left:6px; top: 4px;  position: absolute;"
                 src="/assets/apple_logo.png">App Store</button>

        <button class="bBaixarApp"
                style="border-radius: 40px; position:fixed; right: 35%; bottom: 18%; text-align: right;" href="#"
                onclick="window.open('https://play.google.com/store/apps?hl=pt_BR', '_blank');">
            <img style="right: 20px; width: 20px; left:6px; top: 8px; position: absolute;"
                 src="/assets/playstore.svg">Play Store</button>


        <div id="main">
            <div id="child" class="coin">
                <img style="height: 100%; width: 100%;" src="/assets/logo_sverse.png">
            </div>

            <div id="child1" class="coin"></div>

            <div id="child2" class="coin"></div>

            <div id="child3" class="coin"></div>

            <div id="child4" class="coin"></div>

            <div id="child5" class="coin"></div>

            <div id="child6" class="coin"></div>

            <div id="child7" class="coin"></div>

            <div id="child8" class="coin">
                <img style="-webkit-transform: scaleX(-1);
                transform: scaleX(-1);
                height: 100%;
                width: 100%;" src="/assets/logo_sverse.png">
            </div>
        </div>
    </div>
</div>
</body>
</html>