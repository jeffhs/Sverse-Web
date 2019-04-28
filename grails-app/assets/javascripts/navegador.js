window.onload = function () {
    ativarMarcacao();
    $('.conteudo').animate({height: 'toggle'});
}

function ativarMarcacao() {
    switch (window.location.href) {
        case "https://sverse-web.herokuapp.com/":
            $('.active').removeClass('active');
            $('#mural-academico').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/container":
        case "https://sverse-web.herokuapp.com/container/":
        case "https://sverse-web.herokuapp.com/container/index":
            $('.active').removeClass('active');
            $('#containers-de-estudo').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/nota":
        case "https://sverse-web.herokuapp.com/nota/":
        case "https://sverse-web.herokuapp.com/nota/index":
            $('.active').removeClass('active');
            $('#bloco-de-notas').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/paginador/ajuda":
        case "https://sverse-web.herokuapp.com/paginador/ajuda/":
        case "https://sverse-web.herokuapp.com/paginador/ajuda/index":
            $('.active').removeClass('active');
            $('#ajuda').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/paginador/perfil":
        case "https://sverse-web.herokuapp.com/paginador/perfil/":
        case "https://sverse-web.herokuapp.com/paginador/perfil/index":
            $('.active').removeClass('active');
            $('#perfil').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/paginador/config":
        case "https://sverse-web.herokuapp.com/paginador/config/":
        case "https://sverse-web.herokuapp.com/paginador/config/index":
            $('.active').removeClass('active');
            $('#config').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/cicloDeEstudo":
        case "https://sverse-web.herokuapp.com/cicloDeEstudo/":
        case "https://sverse-web.herokuapp.com/cicloDeEstudo/index":
            $('.active').removeClass('active');
            $('#cicloDeEstudo').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/trabalhoEmGrupo":
        case "https://sverse-web.herokuapp.com/trabalhoEmGrupo/":
        case "https://sverse-web.herokuapp.com/trabalhoEmGrupo/index":
            $('.active').removeClass('active');
            $('#trabalhoEmGrupo').addClass('active');
            break;
        case "https://sverse-web.herokuapp.com/perfil":
        case "https://sverse-web.herokuapp.com/perfil/":
        case "https://sverse-web.herokuapp.com/perfil/index":
            $('.active').removeClass('active');
            $('#perfil').addClass('active');
            break;
        case "/**/lixeira":
        case "/**/lixeira/":
        case "/**/lixeira/index":
            $('.active').removeClass('active');
            $('#lixeira').addClass('active');
            break;
    }
}

function navegar(pag) {
    switch (pag) {
        case "mural-academico":
            window.location.href = "/";
            break;
        case "containers-de-estudo":
            window.location.href = "/container/index";
            break;
        case "bloco-de-notas":
            window.location.href = "/nota/index";
            break;
        case "ajuda":
            window.location.href = "/paginador/ajuda";
            break;
        case "perfil":
            window.location.href = "/perfil";
            break;
        case "configuracoes":
            window.location.href = "/paginador/config";
            break;
        case "ciclos-de-estudo":
            window.location.href = "/cicloDeEstudo/index";
            break;
        case "grupos-de-trabalho":
            window.location.href = "/trabalhoEmGrupo/index";
            break;
        case "linha-do-tempo":
            window.location.href = "/perfil/timeline";
            break;
        case "amigos":
            window.location.href = "/usuario/amigos";
            break;
        case "calendario":
            window.location.href = "/usuario/calendarioAcademico";
            break;
        case "participacoes":
            window.location.href = "/";
            break;
        case "compartilhamentos":
            window.location.href = "/envio/compartilhamento";
            break;
        case "lixeira":
            window.location.href = "/lixeira/index";
            break;
    }
}