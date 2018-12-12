package sverseweb

class Etapa {
    String titulo
    String descricao
    String estado
    Date dataTerminio

    static constraints = {
        titulo(nullable: false, blank: false,        maxSize: 100, unique:false)
        descricao(nullable: false, blank: false,        maxSize: 100, unique:false)
        estado(nullable: false, blank: false,        maxSize: 100, unique:false)
        dataTerminio(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
