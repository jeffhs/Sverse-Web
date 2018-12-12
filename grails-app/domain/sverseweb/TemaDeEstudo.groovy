package sverseweb

class TemaDeEstudo {
    String nome
    Date dataCriacao
    Date dataAtualizacao
    static constraints = {
        nome(nullable: false, blank: false,        maxSize: 100, unique:false)
        dataCriacao(nullable: false, blank: false,        maxSize: 100, unique:false)
        dataAtualizacao(nullable: false, blank: false,        maxSize: 100, unique:false)


    }
}
