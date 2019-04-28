package sverseweb

import seguranca.Usuario

class Container {
    String nome
    String descricao
    String tipo
    String imgContainer
    String dificuldade
    String importancia
    String privacidade
    Integer nNotificacoes
    String imgBackground
    Date dataCriacao
    Date dataAtualizacao


    static hasMany = [temasDeEstudo : TemaDeEstudo,
                      objetivos : Objetivo,
                      participantes : Usuario,
                      admins : Usuario]




    static constraints = {
        nome(nullable: false, blank: false, maxSize: 100, unique:false)
        descricao(nullable: false, blank: false, unique:false)
        tipo(nullable: false, blank: false,inList: ["Pessoal", "Grupo", "Turma", "Sala"], unique:false)
        imgContainer(nullable: false, blank: false, unique:false)
        dificuldade(nullable: false, blank: false, inList: ["Muito Difícil", "Difícil", "Razoável", "Fácil"], unique:false)
        importancia(nullable: false, blank: false, inList: ["Muito importante", "Importante", "Razoável", "Não muito importante"], unique:false)
        privacidade(nullable: false, blank: false, inList: ["Container Secreto", "Container Publico"], unique:false)
        nNotificacoes(nullable: false, blank: false, unique:false)
        imgBackground(nullable: false, blank: false, unique:false)
        dataCriacao(nullable: false, blank: false, unique:false)
        dataAtualizacao(nullable: false, blank: false, unique:false)
    }
}
