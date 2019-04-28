<div class="container">
    <g:if test="${usuarios.size() > 0}">
        <div class="columns">
            <div id="bloco1" class="column col-4">
                <g:if test="${usuarios.size() > 0}">
                    <g:each status="i" var="usuario" in="${usuarios}">
                        <g:if test="${(i % 3) == 0}">
                            <div class="nota" style="border-bottom-left-radius: 30px; border-top-left-radius: 30px;
                            height: 64px; width: 200px; font-size: 14px;"
                                 onclick="window.location.href = '/usuario/edit/${usuario.id}'">
                                <asset:image class="avatar avatar-xl" src="perfil_sverse.png"/>
                                ${usuario.nome}
                                <br><i class="icon-arrow-right"></i>
                            </div>
                        </g:if>
                    </g:each>
                </g:if>
            </div>

            <div id="bloco2" class="column col-4">
                <g:if test="${usuarios.size() > 1}">
                    <g:each status="i" var="usuario" in="${usuarios}">
                        <g:if test="${((i + 2) % 3) == 0}">
                            <div class="nota" style="border-bottom-left-radius: 30px; border-top-left-radius: 30px;
                            height: 64px; width: 200px; font-size: 14px;" onclick="window.location.href = '/usuario/edit/${usuario.id}'">
                                <asset:image class="avatar avatar-xl" src="perfil_sverse.png"/>
                                ${usuario.nome}
                                <br><i class="icon-arrow-right"></i>
                            </div>
                        </g:if>
                    </g:each>
                </g:if>
            </div>

            <div id="bloco3" class="column col-4">
                <g:if test="${usuarios.size() > 2}">
                    <g:each status="i" var="usuario" in="${usuarios}">
                        <g:if test="${((i + 1) % 3) == 0}">
                            <div class="nota" style="border-bottom-left-radius: 30px; border-top-left-radius: 30px;
                            height: 64px; width: 200px; font-size: 14px;" onclick="window.location.href = '/usuario/edit/${usuario.id}'">
                                <asset:image class="avatar avatar-xl" src="perfil_sverse.png"/>
                                ${usuario.nome}
                                <br><i class="icon-arrow-right"></i>
                            </div>
                        </g:if>
                    </g:each>
                </g:if>
            </div>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Faça sua primeira amizade.</h6>
    </g:else>
</div>