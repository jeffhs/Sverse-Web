package sverseweb

class Usuario {

    String nome
    String login
    String senha
    String permissao
    String tipo
    Integer nNotificacoes
    Lixeira lixeira
    Perfil perfil

    static hasMany = [boletinsDeEstudo : BoletimDeEstudo,
                      boletinsDeEtapas : BoletimDeEtapas,
                      boletinsDeObjetivo: BoletimDeObjetivos,
                      notas : Nota,
                      containers : Container,
                      containersAdmin : Container,
                      ciclosDeEstudo : CicloDeEstudo,
                      envios : Envio,
                      recibos : Envio,
                      trabalhosEmGrupo : TrabalhoEmGrupo]

    static constraints = {
        nome(nullable: false, blank: false, maxSize: 100, unique:false)
        login(nullable: false, blank: false, maxSize: 100, unique:false)
        senha(nullable: false, blank: false, maxSize: 100, unique:false)
        permissao(nullable: false, blank: false, maxSize: 100, unique:false)
        tipo(nullable: false, blank: false, maxSize: 100, unique:false)
        nNotificacoes(nullable: false, blank: false, maxSize: 100, unique:false)
        perfil(nullable: true)
        lixeira(nullable: true)
    }
}
