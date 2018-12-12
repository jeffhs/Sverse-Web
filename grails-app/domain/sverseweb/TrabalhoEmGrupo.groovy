package sverseweb

class TrabalhoEmGrupo {
    String nome
    String descricao
    Integer andamento
    Date dataTermino
    Date dataCriacao

    static constraints = {
        nome(nullable: false, blank: false,        maxSize: 100, unique:false)
        descricao(nullable: false, blank: false,        maxSize: 100, unique:false)
        andamento(nullable: false, blank: false,        maxSize: 100, unique:false)
        dataTermino(nullable: false, blank: false,        maxSize: 100, unique:false)
        dataCriacao(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
