package sverseweb

class Pomodoro {
    Integer minEstudo
    Integer minPausa

    static constraints = {
        minEstudo(nullable: false, blank: false,        maxSize: 100, unique:false)
        minPausa(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
