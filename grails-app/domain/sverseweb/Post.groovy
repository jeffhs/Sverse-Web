package sverseweb

import seguranca.Usuario

class Post {
    String tipo
    Integer containerId
    Integer usuarioId
    Integer[] publicoIds
    Date dataDePublicacao

    static hasMany = [comentarios: Comentario]

    static constraints = {
        tipo(nullable: false, blank: false, unique: false, inList: [
                "Container Secreto",
                "Container Publico",
                "Solicitacao de Amizade",
                "Solitacao de Participacao",
                "Adicao de Participante",
                "Aviso de Estudo",
                "Aviso do Sistema"])
        containerId(nullable: true, blank: false, unique: false)
        usuarioId(nullable: true, blank: false, unique: false)
        publicoIds(nullable: true, blank: false, unique: false)
        dataDePublicacao(nullable: false, blank: false, unique: false)
    }
}
