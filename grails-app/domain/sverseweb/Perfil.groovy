package sverseweb

class Perfil {
    String imgPerfil
    String email
    String trello
    String github
    String contato
    String biografia
    Integer nFollowing
    Integer nFollowers
    static constraints = {
        imgPerfil(nullable: false, blank: false,        maxSize: 100, unique:false)
        email(nullable: false, blank: false,        maxSize: 100, unique:false)
        trello(nullable: false, blank: false,        maxSize: 100, unique:false)
        github(nullable: false, blank: false,        maxSize: 100, unique:false)
        contato(nullable: false, blank: false,        maxSize: 100, unique:false)
        biografia(nullable: false, blank: false,        maxSize: 100, unique:false)
        nFolllowing(nullable: false, blank: false,        maxSize: 100, unique:false)
        nFollowers(nullable: false, blank: false,        maxSize: 100, unique:false)

    }
}
