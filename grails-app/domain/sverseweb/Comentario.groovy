package sverseweb

import seguranca.Usuario

class Comentario {
    String texto
    Integer postId
    Date dataDeComentado

    static belongsTo = [usuario: Usuario]

    static constraints = {
        texto(nullable: false, blank: false, unique: false)
        postId(nullable: true, blank: false, unique: false)
        dataDeComentado(nullable: false, blank: false, unique: false)
    }
}
