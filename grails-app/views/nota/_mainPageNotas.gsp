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
    <article class="post main-post user-profile-page" style="height: 74vh; overflow: auto">
        <div class="conteudo">
            <div id="divFormCreate">
                <g:form action='newNota' method='POST' id='frmCreateNota' name='frmCreateNota'>
                    <fieldset>
                        <label>Nota:</label>
                        <g:textArea class="textarea" placeholder="Seu texto aqui..." cols="30" rows="5"
                                    name="texto" form="frmCreateNota"></g:textArea>
                        <input type="submit" value="Criar" style="color: white; "
                               class="btn float-right login_btn">
                    </fieldset>
                </g:form>
            </div>

            <button id="bAdd" href="" class="addButton" onclick="openFormCreate()">
                <span id="spanAdd" class="addIcon">+</span>
            </button>

            <div id="divBlocoDeNotas" style="height: auto;">
                <g:render template="blocodenotas" model="notas:notas"></g:render>
            </div>
        </div>
    </article>
</section>