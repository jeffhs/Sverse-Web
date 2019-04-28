package sverseweb

import seguranca.Usuario

class Solicitacao {
    String tipo;
    String estado;
    Date dataSolicitacao;
    String containerId;
    static belongsTo = Usuario
    static hasMany = [usuariosSolicitados: Usuario]


    static constraints = {
        tipo(nullable: false,
                blank: false,
                unique:false,
                inList: ["Solicitação de Amizade",
                         "Solicitação de Participação"])
        estado(nullable: false,
                blank: false,
                unique:false,
                inList: ["Solicitado",
                         "Aceito",
                         "Rejeitado"])
        dataSolicitacao(nullable: false, blank: false, unique:false)
        containerId(nullable: true, blank: true, unique:false)
    }
}
