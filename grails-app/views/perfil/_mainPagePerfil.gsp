<link href=${resource(dir: 'css', file: 'itens-in-grid.css')} rel="stylesheet">

<script>
    function setDisplayNone() {
        listAmigos.style.display = "none";
        listSolicitacoes.style.display = "none";
        listGrupos.style.display = "none";
        listPessoas.style.display = "none";
        calendario.style.display = "none";
        configuracoes.style.display = "none";
    }

    function setAnabled() {
        bGrupos.disabled = false;
        bPessoas.disabled = false;
        bExplorar.disabled = false;
        bAmigos.disabled = false;
        bSolicitacoes.disabled = false;
    }
    function abrirCalendario() {
        var bGrupos = document.getElementById("bGrupos");
        var bPessoas = document.getElementById("bPessoas");
        var bExplorar = document.getElementById("bExplorar");
        var bAmigos = document.getElementById("bAmigos");
        var bSolicitacoes = document.getElementById("bSolicitacoes");
        var calendario = document.getElementById("calendario");
        var configuracoes = document.getElementById("configuracoes");


        var mDisplay = "block";
        var mDisplayButton = "block";

        var listAmigos = document.getElementById("listAmigos");
        var listSolicitacoes = document.getElementById("listSolicitacoes");
        var listGrupos = document.getElementById("listGrupos");
        var listPessoas = document.getElementById("listPessoas");

        setDisplayNone();
        calendario.style.display = mDisplay;
        setAnabled();

        bPessoas.style.display = "none";
        bGrupos.style.display = "none";
    }

    function abrirConfiguracoes() {
        var bGrupos = document.getElementById("bGrupos");
        var bPessoas = document.getElementById("bPessoas");
        var bExplorar = document.getElementById("bExplorar");
        var bAmigos = document.getElementById("bAmigos");
        var bSolicitacoes = document.getElementById("bSolicitacoes");
        var calendario = document.getElementById("calendario");
        var configuracoes = document.getElementById("configuracoes");

        var mDisplay = "block";
        var mDisplayButton = "block";

        var listAmigos = document.getElementById("listAmigos");
        var listSolicitacoes = document.getElementById("listSolicitacoes");
        var listGrupos = document.getElementById("listGrupos");
        var listPessoas = document.getElementById("listPessoas");

        setDisplayNone();
        configuracoes.style.display = mDisplay;
        setAnabled();

        bPessoas.style.display = "none";
        bGrupos.style.display = "none";
    }

    function alternarMenuMode(menuMode) {
        var calendario = document.getElementById("calendario");
        var bGrupos = document.getElementById("bGrupos");
        var bPessoas = document.getElementById("bPessoas");
        var bExplorar = document.getElementById("bExplorar");
        var bAmigos = document.getElementById("bAmigos");
        var bSolicitacoes = document.getElementById("bSolicitacoes");

        var listAmigos = document.getElementById("listAmigos");
        var listSolicitacoes = document.getElementById("listSolicitacoes");
        var listGrupos = document.getElementById("listGrupos");
        var listPessoas = document.getElementById("listPessoas");
        var configuracoes = document.getElementById("configuracoes");


        var mDisplay = "block";
        var mDisplayButton = "block";

        switch (menuMode) {
            case "explorar":
                bAmigos.style.backgroundColor = "#4CAF50";
                bSolicitacoes.style.backgroundColor = "#4CAF50";
                bExplorar.style.backgroundColor = "#006400";

                setDisplayNone();
                listGrupos.style.display = mDisplay;
                setAnabled();
                bExplorar.disabled = true;
                bGrupos.disabled = true;
                bPessoas.style.display = mDisplayButton;
                bGrupos.style.display = mDisplayButton;
                bGrupos.style.backgroundColor = "#006400";
                bPessoas.style.backgroundColor = "#4CAF50";
                break;
            case "amigos":
                bAmigos.style.backgroundColor = "#006400";
                bSolicitacoes.style.backgroundColor = "#4CAF50";
                bExplorar.style.backgroundColor = "#4CAF50";

                setDisplayNone();
                listAmigos.style.display = mDisplay;
                setAnabled();
                bAmigos.disabled = true;
                bPessoas.style.display = "none";
                bGrupos.style.display = "none";

                break;
            case "solicitacoes":
                bAmigos.style.backgroundColor = "#4CAF50";
                bSolicitacoes.style.backgroundColor = "#006400";
                bExplorar.style.backgroundColor = "#4CAF50";

                setDisplayNone();
                listSolicitacoes.style.display = mDisplay;
                setAnabled();
                bSolicitacoes.disabled = true;
                bPessoas.style.display = "none";
                bGrupos.style.display = "none";
                break;
        }
    }

    function alternarPesquisaMode(isGrupoMode) {
        var calendario = document.getElementById("calendario");
        var configuracoes = document.getElementById("configuracoes");
        var bGrupos = document.getElementById("bGrupos");
        var bPessoas = document.getElementById("bPessoas");
        var listGrupos = document.getElementById("listGrupos");
        var listPessoas = document.getElementById("listPessoas");

        if (!isGrupoMode) {
            bGrupos.style.backgroundColor = bPessoas.style.background;
            bPessoas.style.backgroundColor = "#006400";
            listPessoas.style.display = listGrupos.style.display;
            listGrupos.style.display = "none";
            bPessoas.disabled = true;
            bGrupos.disabled = false;

        } else {
            bPessoas.style.backgroundColor = bGrupos.style.backgroundColor;
            bGrupos.style.backgroundColor = "#006400";
            listGrupos.style.display = listPessoas.style.display;
            listPessoas.style.display = "none";
            bPessoas.disabled = false;
            bGrupos.disabled = true;
        }
    }
</script>

<style>
.rotate{
    animation: rotation 3s infinite;
}

@keyframes  rotation {
    from {transform: rotate(0deg)}
    to {transform: rotate(359deg)}
}

.wrapper {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-row-gap: 100px;
    grid-column-gap: 10px;
    grid-auto-rows: 200px;
}

.container-pesquisa {
    width: 100%;
    position: relative;
    height: 50px;
}

.input-pesquisa {
    height: 50px;
    border: none;
    outline: none;
    padding-left: 50px;
    width: 0;
    position: absolute;
    top: 0;
    left: 0;
    background: none;
    z-index: 3;
    transition: width 1s ease-out;
    cursor: pointer;
}

.input-pesquisa:focus {
    border: 1px solid #ccc;
    border-radius: 25px;
    width: 100%;
    z-index: 1;
    transition: width 1s ease-in;
}

.button-pesquisa {
    height: 50px;
    width: 50px;
    background: url('/assets/lupa1.png') center no-repeat;
    background-size: 50%;
    -moz-transform: scaleX(-1);
    -o-transform: scaleX(-1);
    -webkit-transform: scaleX(-1);
    transform: scaleX(-1);
    border: none;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 2;
    cursor: pointer;
}

.button-pesquisa:focus {
    outline: none;
}

/* esconde o LABEL "Buscar" */
.label-pesquisa {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    border: 0;
}
</style>

<section style="margin-left: 20px; background: whitesmoke;" class="main-page content user-normal">
    <article class="post main-post user-profile-page" style="background-color: whitesmoke;">
        <div style="height: auto; background: whitesmoke;" class="user-canopy community-bg j-followee-number-container">
            <div class="user-header hide-blocker">
                <img src="/assets/logoweb.png">
            </div>

            <div class="blocked-spacer blocked-indicator"
                 data-author-uid="67bc0342-1c11-4abb-8df8-057a6bb1243d">

            </div>

            <div class="user-profile">
                <a class="user-link" data-refer-type="user_profile_page">
                    <img class="user-avatar img-cover" data-vce="image"
                         src="https://randomuser.me/api/portraits/lego/${usuario.perfil.imgPerfil}.jpg">
                </a>

                <h1 class="user-name">
                    <a class="link" data-vce="rich-content"
                       data-refer-type="user_profile_page">
                        <span class="user-name-truncate">${usuario.nome}</span>

                        <div class="btn-group" style="width: 100%;">
                            <button id="bExplorar" onclick="alternarMenuMode('explorar')"
                                    style="background-color: #006400; width: 33.3%; font-size: 12pt;">Explorar</button>
                            <button id="bAmigos" onclick="alternarMenuMode('amigos')"
                                    style="width: 33.3%; font-size: 12pt;">Amigos</button>
                            <button id="bSolicitacoes" onclick="alternarMenuMode('solicitacoes')"
                                    style="width: 33.3%; font-size: 12pt;">Solicitações</button>
                        </div>
                    </a>
                </h1>
            </div>

            <div class="counter-info-backdrop hide-blocker"
                 data-author-uid="67bc0342-1c11-4abb-8df8-057a6bb1243d">

            </div>
        </div>
        <section class="user-bio hide-blocker" data-author-uid="67bc0342-1c11-4abb-8df8-057a6bb1243d">
            <div class="btn-group" style="width: 100px; float: right; margin-right: 10px;">
                <button id="bGrupos" onclick="alternarPesquisaMode(true)" disabled="disabled"
                        style="background-color: #006400; font-size: 8pt; width: 50%; padding: 4px; border-bottom-left-radius: 10px; border-top-left-radius: 10px;">Grupos</button>
                <button id="bPessoas" onclick="alternarPesquisaMode(false)"
                        style="font-size: 8pt; width: 50%; padding: 4px; border-bottom-right-radius: 10px; border-top-right-radius: 10px;">Pessoas</button>
            </div>
            <header class="title" style="padding-top: 0;">
                <h3 class="title community-color">Explore por grupos de estudo ou amigos</h3>

                <div>
                    <g:form name="FormCadastro" url="[controller: 'perfil', action: 'pesquisarPorUsuarios']"
                            style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">
                        <label class="label-pesquisa" for="busca">Buscar</label>
                        <div class="container-pesquisa">
                            <input class="input-pesquisa" type="search" id="busca" name="q">
                            <button class="button-pesquisa" type="submit"></button>
                        </div>
                    </g:form>
                </div>
            </header>

            <div id="listGrupos" class="bio-body" data-vce="toggle-content" data-threshold="350">
                <g:render template="containers" model="containers:containers"></g:render>
            </div>

            <div style="display: none;" id="listPessoas" class="bio-body" data-vce="toggle-content"
                 data-threshold="350">
                <g:render template='usuarios' model='usuarios:usuarios'></g:render>
            </div>

            <div style="display: none;" id="listAmigos" class="bio-body" data-vce="toggle-content" data-threshold="350">
                <g:render template='amigos' model='usuario:usuario'></g:render>
            </div>

            <div style="display: none;" id="listSolicitacoes" class="bio-body" data-vce="toggle-content"
                       data-threshold="350">
            <g:render template='solicitacoes' model='usuario:usuario'></g:render>
            </div>

            <div style="display: none;" id="calendario" class="bio-body" data-vce="toggle-content"
                 data-threshold="350">
                <g:render template='calendario' model='usuario:usuario'></g:render>
            </div>

            <div style="display: none;" id="configuracoes" class="bio-body" data-vce="toggle-content"
                 data-threshold="350">
                <g:render template='configuracoes' model='usuario:usuario'></g:render>
            </div>
        </section>
    </article>
</section>