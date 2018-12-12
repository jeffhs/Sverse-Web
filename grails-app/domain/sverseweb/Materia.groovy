package sverseweb

class Materia {

    String nome
    String imgMateria
    Integer nNotificacoes

    static constraints = {
        nome(nullable: false, blank: false,        maxSize: 100, unique:false)
        imgMateria(nullable: false, blank: false,        maxSize: 100, unique:false)
        nNotificacoes(nullable: false, blank: false,        maxoSize: 100, unique:false)
    }
}
