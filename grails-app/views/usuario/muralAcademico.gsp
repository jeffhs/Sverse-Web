<!doctype html>
<html>
<head>
    <title>Sverse Web</title>
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

    <script>
        window.onload = function (ev) {
            if (${usuario == null}) {
                window.location = "/usuario/muralAcademico";
            } else {
                document.getElementById("divPrincipal").style.display = "block";
            }
        }
    </script>

    <style>
    .imgPostNovoContainer {
        transition: 400ms all;
        border-radius: 50%;
    }
    .imgPostNovoContainer:hover {
        border-style: double;
        border-color: #41b88e;
        border-width: 4px;
    }

    </style>
</head>

<body>
<div style="display: none;" id="divPrincipal" class="container">
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
                            <article class="post main-post user-profile-page" style="min-height: 70vh;">
                                <g:if test="${posts != null && posts.size() > 0}">
                                    <g:each in="${posts}" var="post">
                                        <div style="height: 220px; box-shadow: gainsboro 1px 1px 8px; text-align: left; margin: 18px; margin-bottom: 120px;">
                                            <g:if test="${post.tipo == "Container Secreto" || post.tipo == "Container Publico"}">
                                                <div style="height: 18%; padding: 12px; box-shadow: gainsboro 1px 1px 8px; border-radius: 4px 4px 0 0; position: relative; background-color: #747f88;"
                                                     class="postHeader">

                                                    <!-- ImgDePerfil e Msg do post -->
                                                    <img style="position: absolute; top: 4px; left: 4px; height: 80%; width: auto;"
                                                         src="/assets/logo_sverse.png">
                                                    <label class="tituloHeaderPost"
                                                           style="font-weight: bold; margin-left: 28px; color:#fff;">
                                                        <g:if test="${post.usuarioId == usuario.id}">
                                                            Você
                                                        </g:if>
                                                        <g:else>
                                                            ${idUserPost[post.usuarioId].nome}
                                                        </g:else>
                                                        criou um novo grupo de estudo.
                                                    </label>
                                                </div>

                                                <div style="padding:20px; padding-right: 36%; text-align: left; min-height: 62%; position: relative; background-color: #bee1da;"
                                                     class="postBody">

                                                    <!-- Img do container, nome e figura ilustrativa -->
                                                    <img class="imgPostNovoContainer" style="position: absolute; top: 34px; right: 34px; height: 70%; width: auto;"
                                                         src="/assets/logo_sverse.png">
                                                    <h5 style="font-weight: bold; margin-left: 28px; font-size: 14pt; color:#747f88; text-align: right; margin-top: 0; padding-top: 0;">
                                                        ${idContainerPost[post.containerId]?.nome}
                                                    </h5><br>
                                                    <label class="tituloHeaderPost" style="margin-right: 28px; color:#747f88;">
                                                        ${idContainerPost[post.containerId]?.descricao}
                                                    </label>
                                                </div>

                                                <div style="border-radius:0 0 4px 4px; height: 20%; text-align: left; padding-left: 8px; background-color: #bee1da; color: #747f88;"
                                                     class="postFooder">
                                                    <!-- Data e Hora -->
                                                    <h6 style="display: inline-block">Data:
                                                    ${post.dataDePublicacao.date + "/" + post.dataDePublicacao.month + "/" + post.dataDePublicacao.year}
                                                    </h6>
                                                    <h6 style="display: inline-block">Hora:
                                                    ${post.dataDePublicacao.hours + ":" + post.dataDePublicacao.minutes + ":" + post.dataDePublicacao.seconds}
                                                    </h6>
                                                </div>
                                            </g:if>
                                            <g:elseif test="">

                                            </g:elseif>
                                            <g:elseif test="">
                                            </g:elseif>
                                        </div>
                                    </g:each>
                                </g:if>
                                <g:else>
                                    <h4 style="padding: 10px">${usuario?.nome}, seja bem vindo ao Sverse Web</h4>
                                    <h6 style="padding: 200px">Atualmente você não tem nenhum post.</h6>
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
