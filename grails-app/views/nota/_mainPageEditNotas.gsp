<asset:javascript src="jquery-ui-1.10.1.custom.min.js"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
        divFormCreate.style.display = "none";

        $(document).mouseup(function(e)
        {
            var container = $(".divFormEdit");

            if (!container.is(e.target) && container.has(e.target).length === 0)
            {
                container.slideUp("slow/400/fast");
            }
        });
    }

    window.onload = function openFormEdit() {
        divFormEdit.style.display = "block";
    }
</script>

<section class="main-page content user-normal">
    <article class="post main-post user-profile-page">
        <div class="conteudo" style="min-height: 60vh;">
            <div id="divFormEdit" class="divFormEdit">
                <g:form action='editNota' method='POST' id='frmEditNota' name='frmEditNota'>
                    <fieldset>
                        <label>Nota:</label>
                        <g:textArea id="textAreaEdit" class="textarea" placeholder="Digite sua nova nota..." cols="30"
                                    rows="5"
                                    name="texto" form="frmEditNota">${nota.texto}</g:textArea>
                        <input type="number" style="display: none;" name="idNotaEdit" value="${nota.id}">
                        <input type="submit" value="Atualizar" style="color: white; "
                               class="btn float-right login_btn">
                    </fieldset>
                </g:form>
                <g:form action='excluirNota' method='POST' name='frmExcluirNota'>
                    <input type="number" style="display: none;" name="idNotaEdit" value="${nota.id}">
                    <input type="submit" value="Excluir" onclick="confirm('Tem certeza de que deseja excluir?');" style="margin-bottom:8px; margin-top: 8px; color: white; " class="btn float-right login_btn">
                </g:form>
            </div>

            <button id="bAdd" href="" class="addButton" onclick="window.location = '/nota/index'">
                <span id="spanAdd" class="addIcon"><</span>
            </button>

            <div id="divBlocoDeNotas">
                <g:render template="blocodenotas" model="notas:notas"></g:render>
            </div>
        </div>
    </article>
</section>