package sverseweb

class Nota{
    Integer nota
    String titulo
    String texto
    Integer nCor
    Integer nEmoji
    String tag
    Date dataCriacao
    Date dataAtualizacao

    static constraints = {
        nota(nullable: false, blank: false,        maxSize: 100, unique:false)
        titulo(nullable: false, blank: false,        maxSize: 100, unique:false)
        texto(nullable: false, blank: false,        maxSize: 100, unique:false)
        nCor(nullable: false, blank: false,        maxSize: 100, unique:false)
        nEmoji(nullable: false, blank: false,        maxoSize: 100, unique:false)
        tag(nullable: false, blank: false,        maxoSize: 100, unique:false)
        dataCriacao(nullable: false, blank: false,        maxoSize: 100, unique:false)
        dataAtualizacao(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
