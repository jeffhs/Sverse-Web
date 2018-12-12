package sverseweb

class Turma {
    String codTurma
    
    static constraints = {
        codTurma(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
