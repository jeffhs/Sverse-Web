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

.backButton {
    display: none;
    padding: 0;
    text-align: center;
    align-items: center;
    position: fixed;
    left: 16px;
    top: 16px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background-color: #FFFFFF;
    transition: 500ms all;

}

.backButton:hover {
    background-color: #39c94b;
}

.backIcon {
    transition: 500ms all;
    width: 100%;
    height: 100%;
    text-align: center;
    font-size: 22pt;
    color: #39c94b;
    transition: 500ms all;
}

.backIcon:hover {
    color: #fff;
}
</style>

<!-- Style proprio da pagina -->
<style>
.rotate {
    animation: rotation 3s;
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
    grid-auto-rows: 240px;
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
        <div class="conteudo" style="min-height: 74vh; overflow: auto;">

            <div id="divFormEdit" style="display: block;">
                <g:form action='editTrabalho' method='POST' name='frmEditTrabalho'>
                    <fieldset>
                        <label>Nome:</label>
                        <input type="text" value="${trabalhoEdit.nome}" name="nome"><br>
                        <label>Previsão:</label>:
                        <input type="date" name="dataTermino"><br>
                        <g:textArea placeholder="Escreva aqui a descrição do seu trabalho..." cols="30" rows="5"
                                    name="descricao" form="frmEditTrabalho">${trabalhoEdit.descricao}</g:textArea>
                        <input name="index" type="number" value="${trabalhoEdit.id}" style="display: none;">
                        <input type="submit" value="Atualizar" style="color: white; " class="btn float-right login_btn">
                    </fieldset>
                </g:form>
                <g:form action='excluirTrabalho' method='POST' name='frmEditTrabalho'>
                    <input name="index" type="number" value="${trabalhoEdit.id}" style="display: none;">
                    <input type="submit" value="Excluir" onclick="confirm('Tem certeza de que deseja excluir?');" style="margin-bottom:8px; margin-top: 8px; color: white; " class="btn float-right login_btn">
                </g:form>
            </div>

            <button id="bAdd" class="addButton rotate" onclick="window.location = '/trabalhoEmGrupo/index'">
                <span id="spanAdd" class="addIcon"><</span>
            </button>

            <div id="divTrabalhos">
                <g:render template="trabalhos" model="trabalhos:trabalhos"></g:render>
            </div>
        </div>
    </article>
</section>