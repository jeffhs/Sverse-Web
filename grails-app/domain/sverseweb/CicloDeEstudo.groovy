package sverseweb

class CicloDeEstudo {
    String nome
    String estado
    String cor
    static constraints = {
        nome(nullable: false, blank: false,        maxSize: 100, unique:false)
        estado(nullable: false, blank: false,        maxSize: 100, unique:false)
        tipo(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
