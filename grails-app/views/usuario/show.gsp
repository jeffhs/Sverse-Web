<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="layout-secundario" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'MyUsuario')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>

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

                <div class="mdiv">
                    <div class="modeloheader">
                        <h6>Ver Usuario!</h6>
                    </div>

                    <div class="conteudo">

                        <div id="show-usuario" class="content scaffold-show" role="main">
                            <g:if test="${flash.message}">
                                <div class="message" role="status">${flash.message}</div>
                            </g:if>
                            <f:display bean="usuario" />
                            <g:form resource="${this.usuario}" method="DELETE">
                                <fieldset class="buttons">
                                    <g:link class="edit" action="edit" resource="${this.usuario}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </fieldset>
                            </g:form>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
