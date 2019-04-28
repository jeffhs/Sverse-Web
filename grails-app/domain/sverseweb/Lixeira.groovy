package sverseweb

import seguranca.Usuario

class Lixeira {
    static belongsTo = [Usuario]
    static hasMany = [itensLixeira : ItemLixeira]

    static constraints = {
        usuario(nullable: true, blank: true, unique:false)
    }
}
