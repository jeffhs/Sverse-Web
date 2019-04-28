package sverseweb

class Pomodoro {
    Integer minEstudo
    Integer minPausa

    static belongsTo = [cicloDeEstudo:CicloDeEstudo]

    static constraints = {
        minEstudo(nullable: false, blank: false, maxSize: 100, unique:false)
        minPausa(nullable: false, blank: false, maxSize: 100, unique:false)
        cicloDeEstudo(nullable: true)
    }
}
