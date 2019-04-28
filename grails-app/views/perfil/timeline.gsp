<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="layout-secundario"/>
    <g:set var="entityName" value="${message(code: 'perfil.label', default: 'Perfil')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

    <link href=${resource(dir: 'css', file: 'sidebar.css')} rel="stylesheet">
    <link href=${resource(dir: 'css', file: 'pagina-modelo.css')} rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="columns">
            <div class="col-3" style="border-style: solid; border: 1px">
                <g:render template="../templates/_sidebar"/>
            </div>

            <div class="col-9" style="border-style: solid; border: 1px">

                <div class="mdiv" style="background-color: rgba(0, 0, 0, 0.4);">
                    <div class="modeloheader">
                        <h6>Linha do Tempo</h6>
                    </div>

                    <div class="conteudo">

                        <div style="display: flex; flex-direction: row;justify-content: center;>
                        <div class=" docs-demo columns">
                        <div class="column col-6 col-sm-12" style="padding: 11% 0 0 0;">
                            <div class="timeline">
                                <div class="timeline-item" id="timeline-example-1">
                                    <div class="timeline-left"><a class="timeline-icon tooltip" href="#timeline-example-1"
                                                                  data-tooltip="March 2016"></a></div>

                                    <div class="timeline-content">
                                        <div class="tile">
                                            <div class="tile-content">
                                                <p class="tile-subtitle">March 2016</p>

                                                <p class="tile-title">Initial commit</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="timeline-item" id="timeline-example-2">
                                    <div class="timeline-left"><a class="timeline-icon icon-lg tooltip"
                                                                  href="#timeline-example-2"
                                                                  data-tooltip="February 2017"><i
                                                class="icon icon-check"></i></a></div>

                                    <div class="timeline-content">
                                        <div class="tile">
                                            <div class="tile-content">
                                                <p class="tile-subtitle">February 2017</p>

                                                <p class="tile-title">New Documents experience</p>

                                                <p class="tile-title"><a
                                                        href="components.html#bars">Bars</a>: represent the progress of a task
                                                </p>

                                                <p class="tile-title"><a
                                                        href="components.html#steps">Steps</a>: progress indicators of a sequence of task steps
                                                </p>

                                                <p class="tile-title"><a
                                                        href="components.html#tiles">Tiles</a>: repeatable or embeddable information blocks
                                                </p>
                                            </div>

                                            <div class="tile-action">
                                                <button class="btn">View</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="timeline-item" id="timeline-example-3">
                                    <div class="timeline-left"><a class="timeline-icon icon-lg tooltip"
                                                                  href="#timeline-example-3"
                                                                  data-tooltip="March 2017"><i class="icon icon-check"></i>
                                    </a></div>

                                    <div class="timeline-content">
                                        <div class="tile">
                                            <div class="tile-content">
                                                <p class="tile-subtitle">March 2017</p>

                                                <p class="tile-title"><a
                                                        href="elements.html#icons">Icons</a>: single-element, responsive and pure CSS icons
                                                </p>

                                                <p class="tile-title"><a
                                                        href="components.html#popovers">Popovers</a>: small overlay content containers
                                                </p>

                                                <p class="tile-title"><a
                                                        href="experimentals.html#calendars">Calendars</a>: date or date range picker and events display
                                                </p>

                                                <p class="tile-title"><a
                                                        href="experimentals.html#carousels">Carousels</a>: slideshows for cycling images
                                                </p>
                                            </div>

                                            <div class="tile-action">
                                                <button class="btn">View</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>