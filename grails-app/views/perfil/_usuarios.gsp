<div class="usuario">
    <g:if test="${usuarios.size() != null && usuarios.size() > 0}">
        <div class="wrapper">
            <g:each status="i" var="usuario" in="${usuarios}">
                <div class="nota"
                     style="background: url('https://encceja2018.net.br/wp-content/uploads/2018/04/capa-3.jpg'); background-size: contain"
                     onclick="window.location.href = '/usuarioEmGrupo/area/${usuario.id}'">
                    <h6 style="background-color: rgba(0, 0, 0, 0.4)">${usuario.nome}</h6>
                    <span class="counter" style="float: left; margin-top: 70%; margin-left: 10px;">
                        <i class="amino-icon amino-icon-user-triple"></i>
                    <span class="num">91</span>
                    </span>
                </div>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Aparentemente não há nenhum usuário com esse nome.</h6>
    </g:else>
</div>