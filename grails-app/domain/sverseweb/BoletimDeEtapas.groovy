package sverseweb

import seguranca.Usuario

class BoletimDeEtapas {

    static constraints = {
    }
    static belongsTo = [usuario: Usuario]
    static hasMany = [estapas : Etapa]
}
