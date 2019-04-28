package sverseweb

class Sala extends Container{

    String nome
    String imgMateria
    Integer nNotificacoes

    static belongsTo = [turma : Turma]

    static constraints = {
        nome(nullable: false, blank: false,        maxSize: 100, unique:false)
        imgMateria(nullable: false, blank: false,        maxSize: 100, unique:false)
        nNotificacoes(nullable: false, blank: false,        maxoSize: 100, unique:false)
    }
}
