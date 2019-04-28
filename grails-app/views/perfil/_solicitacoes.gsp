<div class="solicitacao">
    <header class="title" style="padding-top: 0;">
        <h6 style="border: 0; border-bottom: #2a9a39; border-style: solid; padding-bottom: 4px" class="title community-color">Solicitações Recebidas</h6>
    </header>
    <g:if test="${usuario.solicitacoesRecebidas.size() != null && usuario.solicitacoesRecebidas.size() > 0}">
        <div class="wrapper">
            <g:each status="i" var="solicitacao" in="${usuario.solicitacoesRecebidas}">
                <div class="nota"
                     style="background: url('https://encceja2018.net.br/wp-content/uploads/2018/04/capa-3.jpg'); background-size: contain"
                     onclick="window.location.href = '/usuarioEmGrupo/area/${solicitacao.id}'">
                    <h6 style="background-color: rgba(0, 0, 0, 0.4)">${solicitacao.usuario.username}</h6>
                </div>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Aparentemente você não recebeu nenhuma solicitação.</h6>
    </g:else>

    <br>
    <br>

    <header class="title" style="padding-top: 0;">
        <h6 style="border: 0; border-bottom: #2a9a39; border-style: solid; padding-bottom: 4px" class="title community-color">Solicitações Enviadas</h6>
    </header>
    <g:if test="${usuario.solicitacoesEnviadas.size() != null && usuario.solicitacoesEnviadas.size() > 0}">
        <div class="wrapper">
            <g:each status="i" var="solicitacao" in="${usuario.solicitacoesEnviadas}">
                <div class="nota"
                     style="background: url('https://encceja2018.net.br/wp-content/uploads/2018/04/capa-3.jpg'); background-size: contain"
                     onclick="window.location.href = '/usuarioEmGrupo/area/${solicitacao.id}'">
                    <h6 style="background-color: rgba(0, 0, 0, 0.4)">${solicitacao.usuario.username}</h6>
                </div>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Aparentemente não há nenhum grupo ou usuário com esse nome.</h6>
    </g:else>
</div>