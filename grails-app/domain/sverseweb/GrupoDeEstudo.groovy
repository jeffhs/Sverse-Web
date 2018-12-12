package sverseweb

class GrupoDeEstudo {
    String codGrupo
    String objetivos

    static constraints = {
        codGrupo(nullable: false, blank: false,        maxSize: 100, unique:false)
        objetivos(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
