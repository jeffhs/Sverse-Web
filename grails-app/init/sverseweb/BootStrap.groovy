package sverseweb

import seguranca.Permissao
import seguranca.Usuario
import seguranca.UsuarioPermissao

class BootStrap {
    Random random = new Random()
    def init = { servletContext ->

        //procura pela permissão hole, se ela não existir, cria e salva;
        Permissao admin = Permissao.findByAuthority("ROLE_ADMIN")
        if (admin == null){
            admin = new Permissao(authority: "ROLE_ADMIN")
            admin.save(flush:true)
        }

        //procura pelos usuarios
        Usuario jeff = Usuario.findByUsername("jefferson")
        Usuario os = Usuario.findByUsername("oseiaspereira88")
        Usuario ro = Usuario.findByUsername("roberthlima0")

        //caso não exista, cria os usuarios
        if (jeff == null || os == null || ro == null){
            jeff = new Usuario(
                    username: "jefferson", password: "1234ate8", nome: "Jefferson Igor",
                    tipo: "Aluno", sexo: "Masculino", nNotificacoes: 0,
                    enabled: true, accountExpired: false, accountLocked: false,
                    passwordExpired: false)
            Perfil perfil1 = new Perfil(
                    imgPerfil: "${random.nextInt(7)}",
                    email: "jeff88@gmail.com",
                    trello: "jeffsz88",
                    github: "Jeff88",
                    contato: "(84)99443299",
                    biografia: "My name is Garfanhoto and i am the flash man on live.",
                    curso: "Técnico em Informática",
                    hobbie: "Design",
                    nFollowing: "0",
                    nFollowers: "0",
                    usuario: jeff
            )

            os = new Usuario(
                    username: "oseiaspereira88", password: "1234ate8", nome: "Oséias Pereira",
                    tipo: "Aluno", sexo: "Masculino", nNotificacoes: 0,
                    enabled: true, accountExpired: false, accountLocked: false,
                    passwordExpired: false)
            Perfil perfil2 = new Perfil(
                    imgPerfil: "${random.nextInt(7)}",
                    email: "oseiaspereira88@gmail.com",
                    trello: "oseiaspereira88",
                    github: "oseiaspereira88",
                    contato: "(84)99442299",
                    biografia: "My name is Barry Alan and i am the flash man on live.",
                    curso: "Engenharia Mecatrônica",
                    hobbie: "Game Developer & Mobile Developer (Programador por Natureza)",
                    nFollowing: "0",
                    nFollowers: "0",
                    usuario: os
            )

            ro = new Usuario(
                    username: "roberthlima0", password: "1234ate8", nome: "Roberth",
                    tipo: "Aluno", sexo: "Masculino", nNotificacoes: 0,
                    enabled: true, accountExpired: false, accountLocked: false,
                    passwordExpired: false)
            Perfil perfil3 = new Perfil(
                    imgPerfil: "${random.nextInt(7)}",
                    email: "roberthlima0@gmail.com",
                    trello: "roberth088",
                    github: "roberthlima0",
                    contato: "(84)99442299",
                    biografia: "My name is Barry Alan and i am the flash man on live.",
                    curso: "Engenharia Elétrica",
                    hobbie: "Animes",
                    nFollowing: "0",
                    nFollowers: "0",
                    usuario: ro
            )

            //adicionando perfis
            jeff.setPerfil(perfil1)
            os.setPerfil(perfil2)
            ro.setPerfil(perfil3)

            //adicionando amigos
            os.addToAmigos(jeff)
            os.addToAmigos(ro)
            jeff.addToAmigos(os)
            jeff.addToAmigos(ro)
            ro.addToAmigos(jeff)
            ro.addToAmigos(os)

            //salvando usuários
            jeff.save(flash:true)
            os.save(flash:true)
            ro.save(flash:true)
        }

        if (UsuarioPermissao.findByUsuarioAndPermissao(jeff,admin) == null)
        {
            UsuarioPermissao.create(jeff, admin, true)
        }

        if (UsuarioPermissao.findByUsuarioAndPermissao(os,admin) == null)
        {
            UsuarioPermissao.create(os, admin, true)
        }

        if (UsuarioPermissao.findByUsuarioAndPermissao(ro,admin) == null)
        {
            UsuarioPermissao.create(ro, admin, true)
        }
    }
    def destroy = {

    }
}
