package sverseweb

class ItemLixeira {

    static belongsTo = [lixeira : Lixeira]
    static constraints = {
        lixeira(nullable: true)
    }
}
