package sverseweb

class GrupoDeEstudo extends Container{
    String codGrupo

    static constraints = {
        codGrupo(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
