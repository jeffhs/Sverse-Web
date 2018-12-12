package sverseweb

class Container {
    String nome
    String descricao
    String tipo
    String imgContainer
    String dificuldade
    String importancia
    Integer nNotificacoes
    String imgBackground
    Date dataCriacao
    Date dataAtualizacao

    static constraints = {
        nome(nullable: false, blank: false,        maxSize: 100, unique:false)
        descricao(nullable: false, blank: false,        maxSize: 100, unique:false)
        tipo(nullable: false, blank: false,        maxoSize: 100, unique:false)
        imgContainer(nullable: false, blank: false,        maxSize: 100, unique:false)
        dificuldade(nullable: false, blank: false,        maxSize: 100, unique:false)
        importancia(nullable: false, blank: false,        maxSize: 100, unique:false)
        nNotificacoes(nullable: false, blank: false,        maxSize: 100, unique:false)
        imgBackground(nullable: false, blank: false,        maxSize: 100, unique:false)
        dataCriacao(nullable: false, blank: false,        maxoSize: 100, unique:false)
        dataAtualizacao(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
