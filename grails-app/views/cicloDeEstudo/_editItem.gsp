<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'itensInCycle.css')}" type="text/css">
<asset:javascript src="itensInCycle.js"/>

<script>
    function exibirNomeItem(i) {
        document.getElementById("nomeItem" +i).style.display = "block";
    }
    function ocutarNomeItem(i) {
        document.getElementById("nomeItem" +i).style.display = "none";
    }
</script>

<section class="main-page content user-normal">
    <article class="post main-post user-profile-page" style="height: 90vh; position: relative;">

        <a onclick="abrirConfiguracoes()" href="#"
           style="position: absolute; top: 0px; right: 10px;">
            <g:img class="rotateInfinite" style="margin-top: 10px; height: 30px; width: 30px;"
                   src="settings-icon.png"></g:img>
        </a>

        <button id="bAdd" class="addButton" onclick="window.location = '/cicloDeEstudo/index'">
            <span id="spanAdd" class="addIcon"><</span>
        </button>

        <div id="divFormCreate" style="display: block;">
            <div id="area">
                <g:form class="mForm" action='editItem' method='POST' name='frmCreateItem'>
                    <fieldset style="width: 490px;">
                        <legend>Preencha o Formulário</legend>
                        <label>Nome:</label>
                        <input type="text" id="campo_nome" name="nome" value="${estudoEdit.nome}"><br>
                        <label>Escolha o tipo do estudo:</label>
                        <g:select value="${estudoEdit.tipo}" name="tipo" id="campo_tipo" from="${["Container", "Grupo de Estudo", "Outro"]}"
                                  noSelection="['': '-Escolha o tipo-']"></g:select><br>
                        <label>Dia do Estudo:</label>
                        <g:select name="dia" value="${diaDaSemana[estudoEdit.dia.value - 1]}" id="campo_tipo" from="${["Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"]}"
                                  noSelection="['': '-Escolha o dia-']"></g:select><br>
                        <label>Hora do Estudo:</label>
                        <g:select name="hora" value="${estudoEdit.hora}" id="campo_tipo" from="${1..24}"
                                                          noSelection="['': '-Escolha o hora-']"></g:select><br>
                        <label>Minutos do estudo:</label>
                        <g:select name="minuto" value="${estudoEdit.minuto}" id="campo_tipo" from="${0..59}"
                                  noSelection="['': '-Escolha um valor-']"></g:select><br>
                        <label>Número de Pomodoros:</label>
                        <g:select name="nPomodoros" value="${estudoEdit.nPomodoros}" id="campo_tipo" from="${1..8}"
                            noSelection="['': '-Escolha o número-']"></g:select><br>
                        <label>Intervalo:</label>
                        <g:select name="intervalo" value="${estudoEdit.intervalo}" id="campo_tipo" from="${5..20}"
                        noSelection="['': '-Escolha um valor em minutos-']"></g:select><br>
                        <input name="idEditItem" type="number" value="${estudoEdit.id}" style="display: none;">
                        <input name="imgItem" type="text" value="https://picsum.photos/300?image=" style="display: none;">

                        <input type="submit" id="submit" value="Atualizar" style="color: white; "
                               class="btn float-right login_btn">

                    </fieldset>
                </g:form>
                <g:form action='excluirItem' method='POST' name='frmExcluirItem'>
                    <input name="idEditItem" type="number" value="${estudoEdit.id}" style="display: none;">
                    <input type="submit" value="Excluir" onclick="confirm('Tem certeza de que deseja excluir?');" style="margin-bottom:8px; margin-top: 8px; color: white; " class="btn float-right login_btn">
                </g:form>
            </div>
        </div>


        <img class="bordaCycle" style="left: 18%;" src="/assets/cycleBG1.png">
        <img class="imgCycle" style="left: 18%;" src="${estudoEdit.imgItem}">
        <ul id="cycle" style="left: 18%;">
            <li class="itemCycle" style="visibility: hidden;"></li>
            <g:if test="${estudos != null}">
                <g:each in="${estudos}" var="estudo" status="i">
                    <g:if test="${estudoEdit.id != estudo.id}">
                        <li class="itemCycle" style="z-index: ${i}">
                            <div id="nomeItem${i}" class="nomeItem">${estudo.nome}<br>${estudo.dia} - ${estudo.hora}:${estudo.minuto}</div>
                            <a href="#" onclick="window.location = '/cicloDeEstudo/edit/${estudo.id}'"><img class="imgItem" src="${estudo.imgItem}" onmouseover="exibirNomeItem(${i})" onmouseout="ocutarNomeItem(${i})" ></a>
                        </li>
                    </g:if>
                    <g:else>
                        <li class="itemCycle" style="visibility: hidden;">
                            <div id="nomeItem${i}" class="nomeItem">${estudo.nome}<br>${estudo.dia} - ${estudo.hora}:${estudo.minuto}</div>
                            <img class="imgItem" src="${estudo.imgItem}" onmouseover="exibirNomeItem(${i})" onmouseout="ocutarNomeItem(${i})" >
                        </li>
                    </g:else>

                </g:each>
            </g:if>
        </ul>
    </article>
</section>