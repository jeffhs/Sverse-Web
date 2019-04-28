<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="layout-secundario" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'MyUsuario')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>

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

            <div class="col-9" style="border-style: solid; border: 1px">

                <div class="mdiv">
                    <div class="modeloheader">
                        <h6>Altere seu Usuário!</h6>
                    </div>

                    <div class="conteudo">

                        <div id="edit-usuario" class="content scaffold-edit" role="main">
                            <g:if test="${flash.message}">
                                <div class="message" role="status">${flash.message}</div>
                            </g:if>
                            <g:hasErrors bean="${this.usuario}">
                                <ul class="errors" role="alert">
                                    <g:eachError bean="${this.usuario}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                    </g:eachError>
                                </ul>
                            </g:hasErrors>
                            <g:form resource="${this.usuario}" method="PUT">
                                <g:hiddenField name="version" value="${this.usuario?.version}" />
                                <fieldset class="form">
                                    <f:all bean="usuario"/>
                                </fieldset>
                                <fieldset class="buttons">
                                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
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
