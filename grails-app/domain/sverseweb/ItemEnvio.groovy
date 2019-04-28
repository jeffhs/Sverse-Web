package sverseweb

class ItemEnvio {

    static belongsTo = [envio:Envio]

    static constraints = {
        envio(nullable: true)
    }
}
