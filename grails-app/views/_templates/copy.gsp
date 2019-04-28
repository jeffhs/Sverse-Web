CONTEINERS

<div class="mdiv" style="background-color: rgba(0, 0, 0, 0.4);">
    <div class="modeloheader">
        <h6>Containers de Estudo</h6>
    </div>

    <div class="conteudo">
        <button class="btn btn-action s-circle badd" onclick="window.location.href = '/container/create'">
            <i class="icon icon-plus" style="margin-top: 2px"></i>
        </button>
        <g:render template="containers" model="containers:containers"></g:render>
    </div>
</div>

CICLO DE ESTUDOS


<div class="container">
    <div class="columns">
        <div class="col-3" style="border-style: solid; border: 1px">
            <g:render template="../templates/_sidebar"/>
        </div>
        <div class="col-9" style="border-style: solid; border: 1px">

            <div class="mdiv" style="background-color: rgba(0, 0, 0, 0.4);">
                <div class="modeloheader">
                    <h6>Começe seus Estudos em Ciclo!</h6>
                </div>

                <div class="conteudo">

                    <a href="#list-cicloDeEstudo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                    <div class="nav" role="navigation">
                        <ul>
                            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                        </ul>
                    </div>
                    <div id="list-cicloDeEstudo" class="content scaffold-list" role="main">
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <f:table collection="${cicloDeEstudoList}" />

                        <div class="pagination">
                            <g:paginate total="${cicloDeEstudoCount ?: 0}" />
                        </div>
                        <div class="mdiv" style="background-color: rgba(0, 0, 0, 0); margin-top: 20px; padding-right: 60px">
                            <div class="conteudo">
                                <div class="col-md-9 text-center center-block"
                                     style="border: white 2px; border-style: solid; margin-top: 20px;
                                     border-top-right-radius: 12px; border-top-left-radius: 12px; border-bottom-right-radius: 12px; border-bottom-left-radius: 12px;
                                     margin-right: 200px; margin-left: 200px; background: url(https://irp-cdn.multiscreensite.com/376e8bb8/dms3rep/multi/desktop/aron-visuals-322314-unsplash.jpg); background-size: 100%; background-position: center center;">

                                    <div class="modeloheader"
                                         style="background-position: center center; background: white;">
                                        <h6 style=" padding-left: 8px; text-align: left; font-size: 10pt; color: darkslategray;">Tarefa Atual</h6>
                                    </div>

                                    <asset:image style="border: white 2px; border-style: solid; height: 120px; width: 120px; margin-top: 20px"
                                                 class="avatar avatar-xl" src="perfil_sverse.png"></asset:image>
                                    <h6 style="font-size: 18pt; color: lavender">Organize seu Ciclo de Estudo</h6>

                                    <h6 id="tempo" style="font-size: 48pt; color: lavender">00:00</h6>

                                    <div class="marginTop col-md-12 text-center center-block" style="padding-bottom: 30px;">
                                        <button id="btn" onclick="cronometro(1)" type="button"
                                                class="col-md-2 col-md-offset-5 btn btn-success">Iniciar</button>
                                        <button id="btnPause" onclick="parar()" type="button"
                                                class="hide col-md-2 col-md-offset-5 btn btn-danger">Pause</button>
                                        <button id="btnStop" onclick="stop()" type="button"
                                                class="hide col-md-2 col-md-offset-5 btn btn-primary">Stop</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


TRABALHOS EM GRUPO

            <div class="container">
                <div class="columns">
                    <div class="col-3" style="border-style: solid; border: 1px">
                        <g:render template="../templates/_sidebar"/>
                    </div>
                    <div class="col-9" style="border-style: solid; border: 1px">

                        <div class="mdiv" style="background-color: rgba(0, 0, 0, 0.4);">
                            <div class="modeloheader">
                                <h6>Aqui estão todos os seus trabalhos.</h6>
                            </div>

                            <div class="conteudo">
                                <button class="btn btn-action s-circle badd" onclick="window.location.href = '/trabalhoEmGrupo/create'">
                                    <i class="icon icon-plus" style="margin-top: 2px"></i>
                                </button>
                                <g:render template="trabalhos" model="trabalhos:trabalhos"></g:render>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


NOTA



            <div class="col-9">
                <div class="mdiv" style="background-color: rgba(0, 0, 0, 0.4);">
                    <div class="modeloheader">
                        <h6>Bloco de Notas</h6>
                    </div>

                    <div class="conteudo">
                        <button class="btn btn-action s-circle badd" onclick="window.location.href = '/nota/create'">
                            <i class="icon icon-plus" style="margin-top: 2px"></i>
                        </button>
                        <g:render template="blocodenotas" model="notas:notas"></g:render>
                    </div>
                </div>
            </div>