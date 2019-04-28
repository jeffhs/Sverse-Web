<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="layout-secundario" />
        <g:set var="entityName" value="${message(code: 'container.label', default: 'Container')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

        <link href=${resource(dir: 'css', file: 'sidebar.css')} rel="stylesheet">
        <link href=${resource(dir: 'css', file: 'pagina-modelo.css')} rel="stylesheet">
        <link href=${resource(dir: 'css', file: 'itens-in-grid.css')} rel="stylesheet">
    </head>
    <body>
    <div class="container">
        <div class="columns">
            <div class="col-3" style="border-style: solid; border: 1px">
                <g:render template="../templates/_sidebar"/>
            </div>

            <div class="col-9">
                <div class="mdiv" style="background-color: rgba(0, 0, 0, 0.4);">
                    <div class="modeloheader">
                        <h6>Containers de Estudo</h6>
                    </div>

                    <div class="conteudo">
                        <button class="btn btn-action s-circle badd" onclick="window.location.href = '/usuario/create'">
                            <i class="icon icon-plus" style="margin-top: 2px"></i>
                        </button>
                        <g:render template="amigos" model="usuarios:usuarios"></g:render>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>