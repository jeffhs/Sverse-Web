package sverseweb

import seguranca.Usuario

class Envio {
    static belongsTo = [emissor:Usuario, destinatario:Usuario]
    static hasMany = [itens:ItemEnvio]

    static constraints = {
    }
}
