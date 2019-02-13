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
    grid-auto-rows: 200px;
}
</style>

<script>
    function openFormCreate() {
        var bAdd = document.getElementById("bAdd")
        var spanAdd = document.getElementById("spanAdd")
        var divForm = document.getElementById("divForm")
        var divTrabalhos = document.getElementById("divTrabalhos")
        if (divForm.style.display == "none") {
            spanAdd.innerHTML = "<"
            bAdd.classList.remove("rotate")
            bAdd.classList.add("rotate");
            divForm.style.display = "block";
        } else {
            spanAdd.innerHTML = "+"
            bAdd.classList.remove("rotate")
            bAdd.classList.add("rotate");
            divForm.style.display = "none";
        }
    }
</script>

<section class="main-page content user-normal">
    <article class="post main-post user-profile-page">
        <div class="conteudo" style="min-height: 60vh;">

            <div id="divForm">

                <g:form action='newTrabalho' method='POST' name='frmCreateTrabalho'>
                    <fieldset>
                        <label>Nome:</label>
                        <input type="text" name="nome"><br>
                        <label>Previsão:</label>:
                        <input type="date" name="dataTermino"><br>
                        <g:textArea placeholder="Escreva aqui a descrição do seu trabalho..." cols="30" rows="5"
                                    name="descricao" form="frmCreateTrabalho"></g:textArea>
                        <input type="submit" value="Criar" style="color: white; " class="btn float-right login_btn">
                    </fieldset>
                </g:form>
            </div>

            <button id="bAdd" class="addButton rotate" onclick="openFormCreate()">
                <span id="spanAdd" class="addIcon">+</span>
            </button>

            <div id="divTrabalhos">
                <g:render template="trabalhos" model="trabalhos:trabalhos"></g:render>
            </div>
        </div>
    </article>
</section>