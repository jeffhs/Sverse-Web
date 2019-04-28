package sverseweb

import seguranca.Usuario

class Nota{
    String titulo
    String texto
    String nCor
    String nEmoji
    String tag
    Date dataCriacao
    Date dataAtualizacao

    static belongsTo = [usuario : Usuario]

    static constraints = {
        titulo(nullable: true, blank: true, maxSize: 100, unique:false)
        texto(nullable: false, maxSize: 2888, blank: false, unique:false)
        nCor(nullable: true, blank: true, maxSize: 100, unique:false, default: "Aleatória", inList: ["Azul","Verde","Vermelho","Amarelo","Branco","Preto"])
        nEmoji(nullable: true, blank: true, maxoSize: 100, unique:false)
        tag(nullable: true, blank: true, maxoSize: 100, unique:false)
        dataCriacao(nullable: false, blank: false, maxoSize: 100, unique:false)
        dataAtualizacao(nullable: false, blank: false, maxSize: 100, unique:false)
    }
}
