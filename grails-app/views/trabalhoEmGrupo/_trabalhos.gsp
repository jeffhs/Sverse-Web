<script>
    function cpenEdit(i) {
        document.getElementById("bEditar"+i).style.display = "block";
    }
    function closeEdit(i) {
        document.getElementById("bEditar"+i).style.display = "none";
    }
</script>

<div class="container">
    <g:if test="${trabalhos.size() > 0}">
        <div class="wrapper">
            <g:each status="i" var="trabalho" in="${trabalhos}">
                <g:if test="${i%2==0}">
                    <div class="card" onmouseover="cpenEdit(${trabalho.id})" onmouseout="closeEdit(${trabalho.id})">
                        <a onclick="window.location = '/trabalhoEmGrupo/edit/${trabalho.id}'" style="z-index: 2;">
                            <image id="bEditar${trabalho.id}" class="bEditar" src="/assets/editar.png" ></image>
                        </a>
                        <div class="card--cap green"></div>
                        <div class="card--body">
                            <h2 class="card--header green" onclick="window.location = '/trabalhoEmGrupo/area/${trabalho.id}'">${trabalho.nome}</h2>
                            <p onclick="window.location = '/trabalhoEmGrupo/area/${trabalho.id}'">${trabalho.descricao}</p>
                        </div>
                    </div>
                </g:if>
                <g:else>
                    <div class="card" onmouseover="cpenEdit(${trabalho.id})" onmouseout="closeEdit(${trabalho.id})">
                        <a onclick="window.location = '/trabalhoEmGrupo/edit/${trabalho.id}'" style="z-index: 2;">
                            <image id="bEditar${trabalho.id}" class="bEditar" src="/assets/editar.png" ></image>
                        </a>
                        <div class="card--cap blue"></div>
                        <div class="card--body">
                            <h2 class="card--header blue" onclick="window.location = '/trabalhoEmGrupo/area/${trabalho.id}'">${trabalho.nome}</h2>
                            <p onclick="window.location = '/trabalhoEmGrupo/area/${trabalho.id}'">${trabalho.descricao}</p>
                        </div>
                    </div>
                </g:else>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Você não tem nenhum trabalho.</h6>
    </g:else>
</div>