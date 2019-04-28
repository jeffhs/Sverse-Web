<script>
    function cpenEdit(i) {
        document.getElementById("bEditar"+i).style.display = "block";
    }
    function closeEdit(i) {
        document.getElementById("bEditar"+i).style.display = "none";
    }
</script>

<div class="container">
    <g:if test="${containers.size() > 0}">
        <div class="wrapper">
            <g:each status="i" var="container" in="${containers}">
                <g:if test="${i%2==0}">
                    <div class="card" onmouseover="cpenEdit(${container.id})" onmouseout="closeEdit(${container.id})">
                        <a onclick="window.location = '/container/edit/${container.id}'" style="z-index: 2;">
                            <image id="bEditar${container.id}" class="bEditar" src="/assets/editar.png" ></image>
                        </a>
                        <div class="card--cap green"></div>
                        <div class="card--body">
                            <h2 class="card--header green" onclick="window.location = '/container/area/${container.id}'">${container.nome}</h2>
                            <p onclick="window.location = '/container/area/${container.id}'">${container.descricao}</p>
                        </div>
                    </div>
                </g:if>
                <g:else>
                    <div class="card" onmouseover="cpenEdit(${container.id})" onmouseout="closeEdit(${container.id})">
                        <a onclick="window.location = '/container/edit/${container.id}'" style="z-index: 2;">
                            <image id="bEditar${container.id}" class="bEditar" src="/assets/editar.png" ></image>
                        </a>
                        <div class="card--cap blue"></div>
                        <div class="card--body">
                            <h2 class="card--header blue" onclick="window.location = '/container/area/${container.id}'">${container.nome}</h2>
                            <p onclick="window.location = '/container/area/${container.id}'">${container.descricao}</p>
                        </div>
                    </div>
                </g:else>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center">Você não tem nenhum Container.</h6>
    </g:else>
</div>