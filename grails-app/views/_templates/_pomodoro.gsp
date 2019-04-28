<script>
    /*
            // criando elemento html5 audio
            this.audio = document.createElement('audio');
            this.sourceAudio = document.createElement('source');
            this.sourceAudio.setAttribute('src', 'http://www.online-clockalarm.com/sounds/sound3.mp3');
            this.sourceAudio.setAttribute('type', 'audio/mp3');
            this.audio.appendChild(this.sourceAudio);


            this.verificaAlarme = function () {
                if (este.intervaloAlarmeMinutos != 0 || este.intervaloAlarmeSegundos != 0) {
                    var segundosTotais = este.hora * 3600 + este.minuto * 60 + este.segundo;
                    var intervaloAlarmeSegundosTotais = parseInt(este.intervaloAlarmeMinutos * 60) + parseInt(este.intervaloAlarmeSegundos);
                    if (segundosTotais % intervaloAlarmeSegundosTotais == 0) {
                        este.audio.play();
                    }
                    ;
                }
            }
            */


    var minuto = new Number();
    var segundo = new Number();
    var time = new Number();

    var pause = 0;
    var x = 0;

    function parar() {
        pause = parseInt($('#pause').val());
        if (pause === 0) {
            x = 0;
        }

        if (x === 0) {
            $('#pause').val('1');
            $('#btnPause').html('Play');
            $('#btn').removeClass('disabled');
            x = 1;
        } else {
            $('#pause').val('0');
            $('#btnPause').html('Pause');

            x = 0;
            cronometro(2);
        }
    }


    function cronometro(aux) {
        if (aux == 1) {
            minuto = parseInt(25);
            segundo = parseInt(0);

            if (segundo != 0 || minuto != 0) {
                segundo = segundo + 1;
                $('#pause').val('0');
                $('#btn').addClass('disabled');
                $('#btnPause').html('Pause');
                $('#btnPause').removeClass('hide');
                $('#btnStop').removeClass('hide');
            }

            if (segundo > 60 || minuto > 60 || segundo < 0 || minuto < 0) {
                alert("Erro! Confira o registro informado!");
                stop();
            }

        }
        if (aux == 2) {

            $('#btn').addClass('disabled');
        }

        if (minuto > 0 && segundo === 0) {
            segundo = 60;
            minuto--;
        }
        if ((segundo - 1) >= 0) {
            segundo = segundo - 1;
            if (segundo == 0 && minuto == 0) {
                time = "00:00";
                $('#btn').removeClass('disabled');
            } else if (segundo < 10 && minuto === 0) {
                time = "0" + segundo;
            } else if (minuto >= 1) {
                time = (minuto < 10 ? '0' + minuto : minuto) + ":" + (segundo < 10 ? '0' + segundo : segundo);
            } else {
                time = segundo;
            }
            pause = parseInt($('#pause').val());
            if (pause === 0) {
                tempo.innerText = time;
                setTimeout('cronometro();', 1000);
            }
        }
    }

    function stop() {
        location.reload();
    }
</script>

<style>
.bConfigCycle {
    position: absolute;
    border-radius: 50%;
    height: 30px;
    width: 30px;
    top: 8px;
    right: 8px;
    transition: all 400ms;
}

.bConfigCycle:hover {
    transform: rotate(90grad);
}

.imgCycleItem {
    position: absolute;
    border-radius: 50%;
    height: 60px;
    width: 60px;
    top: 32px;
    left: 40%;
    border-style: solid;
    border-color: #05bc81;
    transition: all 100ms;
}

.imgCycleItem:hover {
    transform: scale(1.1);
}

.divButtons {
    position: absolute;
    justify-content: center;
    justify-items: center;
    bottom: 4px;
    left: 24px;
}
.divButtons button{
    background-color: #39c94b;
    transition: all 200ms;
}
.divButtons button:hover{
    transform: scale(1.08);
}
</style>

<div style="border-bottom-left-radius: 7px; border-bottom-right-radius: 7px; border-top-left-radius: 7px; border-top-right-radius: 7px; position: relative; background-image: url('/assets/textareaBG.jpg');
background-size: cover; background-position: center center; background-repeat: no-repeat; margin: 0; padding: 0; height: 240px;">
    <div style="border-top-left-radius: 8px; border-top-right-radius: 8px; background: rgba(0,0,0,0.3); margin: 0; padding: 0;">
        <h6 style=" padding-left: 8px; padding: 4px; text-align: left; font-size: 10pt; color: darkslategray;">Tarefa Atual</h6>
    </div>

    <a href="/cicloDeEstudo">
        <asset:image class="bConfigCycle"
                     src="settings-icon.png"></asset:image>
    </a>
    <a href="/cicloDeEstudo">
        <asset:image class="imgCycleItem"
                     src="logo_sverse.png"></asset:image>
    </a>

    <h6 style="font-size: 11pt; color: #284527; margin-top: 80px; margin-bottom: 80px;">Organize seu Ciclo de Estudo</h6>
    <h6 id="tempo" style="font-size: 24pt; position: absolute; top: 68px; left: 0; right: 0; color: #284527">00:00</h6>

    <div class="divButtons">
        <button id="btn" onclick="cronometro(1)" type="button"
                class="col-md-2 col-md-offset-5 btn btn-success">Iniciar</button>
        <button id="btnPause" onclick="parar()" type="button"
                class="hide col-md-2 col-md-offset-5 btn btn-danger">Pause</button>
        <button id="btnStop" onclick="stop()" type="button"
                class="hide col-md-2 col-md-offset-5 btn btn-primary">Stop</button>
    </div>

    <input id="pause" type="hidden" value="0" class="form-control">
</div>