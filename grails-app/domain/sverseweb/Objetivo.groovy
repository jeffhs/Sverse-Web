package sverseweb

class Objetivo {
    String descricao


    static belongsTo = [container : Container]
    static hasMany = [metas : Meta]

    static constraints = {
        descricao(nullable: false, blank: false,        maxSize: 100, unique:false)
    }

}
