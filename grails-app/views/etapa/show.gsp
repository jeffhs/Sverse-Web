<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="layout-secundario" />
        <g:set var="entityName" value="${message(code: 'etapa.label', default: 'Etapa')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>

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

                    <div class="mdiv">
                        <div class="modeloheader">
                            <h6>Aqui estão todas as etapas do trabalho</h6>
                        </div>

                        <div class="conteudo">
                            <div id="show-etapa" class="content scaffold-show" role="main">
                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <f:display bean="etapa" />
                                <g:form resource="${this.etapa}" method="DELETE">
                                    <fieldset class="buttons">
                                        <g:link class="edit" action="edit" resource="${this.etapa}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
