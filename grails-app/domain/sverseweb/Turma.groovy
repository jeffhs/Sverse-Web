package sverseweb

class Turma extends Container{
    String codSala

    static hasMany = [salas : Sala]
    
    static constraints = {
        codSala(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
