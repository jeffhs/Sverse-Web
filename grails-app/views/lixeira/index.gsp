<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="layout-secundario" />
        <g:set var="entityName" value="${message(code: 'lixeira.label', default: 'Lixeira')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

        <link href=${resource(dir: 'css', file: 'sidebar.css')} rel="stylesheet">
        <link href=${resource(dir: 'css', file: 'pagina-modelo.css')} rel="stylesheet">
        <link href=${resource(dir: 'css', file: 'create-nota.css')} rel="stylesheet">

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
                        <h6>Lixeira</h6>
                    </div>

                    <div class="conteudo">

                        <div id="list-lixeira" class="content scaffold-list" role="main">
                            <g:if test="${flash.message}">
                                <div class="message" role="status">${flash.message}</div>
                            </g:if>
                            <f:table collection="${lixeiraList}" />

                            <div class="pagination">
                                <g:paginate total="${lixeiraCount ?: 0}" />
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>


    </body>
</html>