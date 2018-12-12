package sverseweb

class Meta {
    String descricao
    Date previsaoTempo

    static constraints = {
        descricao(nullable: false, blank: false,        maxSize: 100, unique:false)
        previsaoTempo(nullable: false, blank: false,        maxSize: 100, unique:false)
    }
}
