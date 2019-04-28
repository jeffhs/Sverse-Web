<link rel="stylesheet" href="${resource(dir: 'css', file: 'itens-in-grid.css')}" type="text/css">

<div class="container" style="height: auto;">
    <g:if test="${notas.size() > 0}">
        <div class="wrapper">
            <g:each status="i" var="nota" in="${notas}">
                <a onclick="window.location = '/nota/edit/${nota.id}'">
                    <div class="nota">
                        <p>${nota.texto}</p>
                    </div>
                </a>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h6 style="text-align: center; height: 60vh;">Crie sua primeira nota.</h6>
    </g:else>
</div>