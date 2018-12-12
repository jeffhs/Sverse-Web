package sverseweb

class Objetivo {
    String descricao

    static constraints = {
        descricao(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
