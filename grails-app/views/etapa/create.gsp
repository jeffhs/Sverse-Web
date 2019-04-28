<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="layout-secundario" />
        <g:set var="entityName" value="${message(code: 'etapa.label', default: 'Etapa')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>

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
                            <div id="create-etapa" class="content scaffold-create" role="main">
                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <g:hasErrors bean="${this.etapa}">
                                    <ul class="errors" role="alert">
                                        <g:eachError bean="${this.etapa}" var="error">
                                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                        </g:eachError>
                                    </ul>
                                </g:hasErrors>
                                <g:form resource="${this.etapa}" method="POST">
                                    <fieldset class="form">
                                        <f:all bean="etapa"/>
                                    </fieldset>
                                    <fieldset class="buttons">
                                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
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
