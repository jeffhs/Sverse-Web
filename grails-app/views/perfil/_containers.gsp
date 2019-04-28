<div class="container">
    <g:if test="${containers.size() != null && containers.size()>0}">
        <div class="wrapper">
            <g:each status="i" var="container" in="${containers}">
                <div class="nota"
                     style="background: url('https://encceja2018.net.br/wp-content/uploads/2018/04/capa-3.jpg'); background-size: contain"
                     onclick="window.location.href = '/containerEmGrupo/area/${container.id}'">
                    <h6 style="background-color: rgba(0, 0, 0, 0.4)">${container.nome}</h6>
                </div>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Aparentemente não há nenhum grupo com esse nome.</h6>
    </g:else>
</div>