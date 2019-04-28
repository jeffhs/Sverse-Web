package sverseweb

import seguranca.Usuario

class Perfil {
    String imgPerfil
    String email
    String trello
    String github
    String contato
    String biografia
    String curso
    String hobbie
    Integer nFollowing
    Integer nFollowers

    static belongsTo = [usuario:Usuario]

    static constraints = {
        imgPerfil(nullable: true, blank: true, maxSize: 100, unique:false)
        email(nullable: true, blank: true, email: true, maxSize: 100, unique:false)
        trello(nullable: true, blank: true, maxSize: 100, unique:false)
        github(nullable: true, blank: true, maxSize: 100, unique:false)
        contato(nullable: true, blank: true,  maxSize: 100, unique:false)
        biografia(nullable: true, blank: true, maxSize: 100, unique:false)
        curso(nullable: true, blank: true, maxSize: 100, unique:false)
        hobbie(nullable: true, blank: true, maxSize: 100, unique:false)
        nFollowing(nullable: true, blank: true, maxSize: 100, unique:false)
        nFollowers(nullable: true, blank: true, maxSize: 100, unique:false)
    }
}
