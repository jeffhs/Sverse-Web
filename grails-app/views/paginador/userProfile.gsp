<!DOCTYPE html>
<div>
    <head>
        <meta name="layout" content="layout-secundario"/>
        <g:set var="entityName" value="${message(code: 'paginador.label', default: 'Paginador')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>

    <div>
        <div style="display: flex; flex-direction: row;justify-content: center;>
        <div class=" docs-demo columns">
        <div class="column col-4 col-xs-12" style="padding: 4% 4% 4% 4%;">
            <div class="panel">
                <div class="panel-header text-center">
                    <figure class="avatar avatar-lg">
                        <asset:image alt="Oséias Pereira" src="perfil_sverse.png"/>
                    </figure>

                    <div class="panel-title h5 mt-10">Bruce Banner</div>

                    <div class="panel-subtitle">THE HULK</div>
                </div>
                <nav class="panel-nav">
                    <ul class="tab tab-block">
                        <li class="tab-item active"><a href="#panels">Perfil</a></li>
                        <li class="tab-item"><a href="#panels">Envios e Recibos</a></li>
                        <li class="tab-item"><a href="#panels">Lixeira</a></li>
                    </ul>
                </nav>

                <div class="panel-body">
                    <div class="tile tile-centered">
                        <div class="tile-content">
                            <div class="tile-title text-bold">E-mail</div>

                            <div class="tile-subtitle">bruce.banner@hulk.com</div>
                        </div>

                        <div class="tile-action">
                            <button class="btn btn-link btn-action btn-lg tooltip tooltip-left"
                                    data-tooltip="Edit E-mail"><i
                                    class="icon icon-edit"></i></button>
                        </div>
                    </div>

                    <div class="tile tile-centered">
                        <div class="tile-content">
                            <div class="tile-title text-bold">Skype</div>

                            <div class="tile-subtitle">bruce.banner</div>
                        </div>

                        <div class="tile-action">
                            <button class="btn btn-link btn-action btn-lg"><i class="icon icon-edit"></i></button>
                        </div>
                    </div>

                    <div class="tile tile-centered">
                        <div class="tile-content">
                            <div class="tile-title text-bold">Location</div>

                            <div class="tile-subtitle">Dayton, Ohio</div>
                        </div>

                        <div class="tile-action">
                            <button class="btn btn-link btn-action btn-lg"><i class="icon icon-edit"></i></button>
                        </div>
                    </div>
                </div>

                <div class="panel-footer">
                    <button class="btn btn-primary btn-block">Save</button>
                </div>
            </div>
        </div>

        <div class="column col-3 col-xs-12" style="padding: 4% 0 4% 0;">
            <div class="panel">
                <div class="panel-header">
                    <div class="panel-title h6">Planejador</div>
                </div>

                <div class="panel-body">
                    <div class="tile">
                        <div class="tile-icon">
                            <figure class="avatar">
                                <asset:image alt="Oséias Pereira" src="perfil_sverse.png"/>
                            </figure>
                        </div>

                        <div class="tile-content">
                            <p class="tile-title text-bold">Thor Odinson</p>

                            <p class="tile-subtitle">Earth's Mightiest Heroes joined forces to take on threats that were too big for any one hero to tackle...</p>
                        </div>
                    </div>

                    <div class="tile">
                        <div class="tile-icon">
                            <figure class="avatar"><img src="../img/avatar-2.png" alt="Avatar"></figure>
                        </div>

                        <div class="tile-content">
                            <p class="tile-title text-bold">Bruce Banner</p>

                            <p class="tile-subtitle">The Strategic Homeland Intervention, Enforcement, and Logistics Division...</p>
                        </div>
                    </div>

                    <div class="tile">
                        <div class="tile-icon">
                            <figure class="avatar" data-initial="TS"></figure>
                        </div>

                        <div class="tile-content">
                            <p class="tile-title text-bold">Tony Stark</p>

                            <p class="tile-subtitle">Earth's Mightiest Heroes joined forces to take on threats that were too big for any one hero to tackle...</p>
                        </div>
                    </div>

                    <div class="tile">
                        <div class="tile-icon">
                            <figure class="avatar"><img src="../img/avatar-4.png" alt="Avatar"></figure>
                        </div>

                        <div class="tile-content">
                            <p class="tile-title text-bold">Steve Rogers</p>

                            <p class="tile-subtitle">The Strategic Homeland Intervention, Enforcement, and Logistics Division...</p>
                        </div>
                    </div>

                    <div class="tile">
                        <div class="tile-icon">
                            <figure class="avatar"><img src="../img/avatar-3.png" alt="Avatar"></figure>
                        </div>

                        <div class="tile-content">
                            <p class="tile-title text-bold">Natasha Romanoff</p>

                            <p class="tile-subtitle">Earth's Mightiest Heroes joined forces to take on threats that were too big for any one hero to tackle...</p>
                        </div>
                    </div>
                </div>

                <div class="panel-footer">
                    <div class="input-group">
                        <input class="form-input" type="text" placeholder="Hello">
                        <button class="btn btn-primary input-group-btn">Send</button>
                    </div>
                </div>
            </div>
        </div>

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
                    <div class="timeline-left"><a class="timeline-icon icon-lg tooltip" href="#timeline-example-2"
                                                  data-tooltip="February 2017"><i class="icon icon-check"></i></a></div>

                    <div class="timeline-content">
                        <div class="tile">
                            <div class="tile-content">
                                <p class="tile-subtitle">February 2017</p>

                                <p class="tile-title">New Documents experience</p>

                                <p class="tile-title"><a
                                        href="components.html#bars">Bars</a>: represent the progress of a task</p>

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
                    <div class="timeline-left"><a class="timeline-icon icon-lg tooltip" href="#timeline-example-3"
                                                  data-tooltip="March 2017"><i class="icon icon-check"></i></a></div>

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


</body>
</html>