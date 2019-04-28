<div class="amigo">
    <g:if test="${usuario.amigos.size() != null && usuario.amigos.size()>0}">
        <div class="wrapper">
            <g:each status="i" var="amigo" in="${usuario.amigos}">
                <div class="nota"
                     style="background: url('https://encceja2018.net.br/wp-content/uploads/2018/04/capa-3.jpg'); background-size: contain"
                     onclick="window.location.href = '/usuarioEmGrupo/area/${amigo.id}'">
                    <h6 style="background-color: rgba(0, 0, 0, 0.4)">${amigo.nome}</h6>
                </div>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Aparentemente não há nenhum grupo ou usuário com esse nome.</h6>
    </g:else>
</div>