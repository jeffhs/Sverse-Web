<asset:javascript src="jquery-ui-1.10.1.custom.min.js"/>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'mForm.css')}" type="text/css">

<!-- Style das class de buttons -->
<style>
.addButton {
    padding: 0;
    text-align: center;
    align-items: center;
    position: fixed;
    right: 16px;
    bottom: 16px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background-color: #39c94b;
    transition: 500ms all;
}

.addButton:hover {
    background-color: #FFFFFF;
}

.addIcon {
    width: 100%;
    height: 100%;
    text-align: center;
    font-size: 24pt;
    color: #FFFFFF;
    transition: 500ms all;
}

.addIcon:hover {
    color: #39c94b;
}

</style>

<!-- Style proprio da pagina -->

<style>
.textarea {
    background: url(/assets/textareaBG.jpg) center center no-repeat; /* This ruins default border */
    border: 2px solid #2a9a39;
    width: 340px;
    height: 200px;
    padding: 24px;
    outline: none;
    resize: none;
    color: #475d24;
    font-weight: bold;
    border-radius: 10px;
    text-align: center;
    overflow: auto;
}

.rotate {
    animation: rotation 1s;
}

@keyframes rotation {
    from {
        transform: rotate(0deg)
    }
    to {
        transform: rotate(359deg)
    }
}

.wrapper {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-row-gap: 10px;
    grid-column-gap: 10px;
    grid-auto-rows: 200px;
}
</style>

<script>
    window.onload = function x() {
        var bAdd = document.getElementById("bAdd");
        var spanAdd = document.getElementById("spanAdd");
        var bBack = document.getElementById("bBack");
        var spanBack = document.getElementById("spanAdd");
        var divFormCreate = document.getElementById("divFormCreate");
        var divFormEdit = document.getElementById("divFormEdit");
        divFormCreate.style.display = "block";

        $(document).mouseup(function(e)
        {
            var container = $(".divFormEdit");

            if (!container.is(e.target) && container.has(e.target).length === 0)
            {
                container.slideUp("slow/400/fast");
            }
        });
    }

    function openFormCreate() {
        if (divFormCreate.style.display == "none") {
            spanAdd.innerHTML = "<";
            divFormCreate.style.display = "block";
        } else {
            spanAdd.innerHTML = "+";
            divFormCreate.style.display = "none";
        }
    }
</script>

<section class="main-page content user-normal">
    <article class="post main-post user-profile-page">
        <div class="conteudo" style="min-height: 60vh;">
            <button id="bAdd" class="addButton" onclick="window.location = '/container/index'">
                <span id="spanAdd" class="addIcon"><</span>
            </button>

            <div id="divFormCreate">
                <div id="area">
                    <g:form class="mForm" action='editContainer' method='POST' name='frmEditContainer'>
                        <fieldset>
                            <legend>Preencha o Formulário</legend>
                            <label>Nome:</label>
                            <input type="text" id="campo_nome" value="${container.nome}" name="nome"><br>
                            <label>Tipo:</label>
                            <g:select name="tipo" id="campo_tipo" value="${container.tipo}" from="${["Pessoal", "Grupo", "Turma", "Sala"]}"
                                      noSelection="['': '-Escolha o tipo-']"></g:select><br>
                            <label>Dificuldade:</label>
                            <g:select name="dificuldade" value="${container.dificuldade}" id="campo_dificuldade"
                                      from="${["Muito Difícil", "Difícil", "Razoável", "Fácil"]}"
                                      noSelection="['': '-Escolha a dificulade-']"></g:select><br>
                            <label>Importância:</label>
                            <g:select name="importancia" value="${container.importancia}" id="campo_importancia"
                                      from="${["Muito importante", "Importante", "Razoável", "Não muito importante"]}"
                                      noSelection="['': '-Escolha a importância-']"></g:select><br>
                            <label>Privacidade:</label>
                            <g:select name="privacidade" value="${container.privacidade}" id="campo_privacidade"
                                      from="${["Container Secreto", "Container Publico"]}"
                                      noSelection="['': '-Escolha a privacidade-']"></g:select><br>
                            <g:textArea id="campo_descricao" placeholder="Escreva a descrição do seu contêiner..."
                                        cols="30"
                                        rows="5" name="descricao" form="frmEditContainer">${container.descricao}</g:textArea><br>
                            <input name="idEditContainer" type="number" value="${container.id}" style="display: none;">
                            <input type="submit" id="submit" value="Atualizar" style="color: white; "
                                   class="btn float-right login_btn">
                        </fieldset>
                    </g:form>
                    <g:form action='excluirContainer' method='POST' name='frmExcluirContainer'>
                        <input name="idEditContainer" type="number" value="${container.id}" style="display: none;">
                        <input type="submit" value="Excluir" onclick="confirm('Tem certeza de que deseja excluir?');" style="margin-bottom:8px; margin-top: 8px; color: white; " class="btn float-right login_btn">
                    </g:form>
                </div>
            </div>

            <div id="divContainers">
                <g:render template="containers" model="containers:containers"></g:render>
            </div>
        </div>
    </article>
</section>