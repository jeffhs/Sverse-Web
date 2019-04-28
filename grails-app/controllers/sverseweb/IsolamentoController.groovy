package sverseweb

import seguranca.Permissao
import seguranca.Usuario
import seguranca.UsuarioPermissao

class IsolamentoController {
    def springSecurityService;
    Random random = new Random()

    def login() {
        render(view: "/isolamento/login")
    }

    def logout() {
        render(view: "/isolamento/login")
    }

    def error() {
        render(view: "/isolamento/error")
    }

    def save() {
        Usuario user = new Usuario()
        user.nome = params.nome
        user.username = params.username
        user.password = params.password
        user.sexo = params.sexo;
        user.tipo = "Aluno";
        user.nNotificacoes = 0;
        user.enabled = true
        user.accountExpired = false
        user.accountLocked = false
        user.passwordExpired = false

        user.setPerfil(new Perfil(
                imgPerfil: "${random.nextInt(7)}",
                email: "SeuEmail@gmail.com",
                trello: "UserName",
                github: "UserName",
                contato: "(DDD)99999-9999",
                biografia: "Escreva sua biografia.",
                curso: "Seu Curso",
                hobbie: "Seu Hobbie",
                nFollowing: "0",
                nFollowers: "0",
                usuario: user
        ));

        user.validate()
        def mErrors = user.errors.getAllErrors()
        if (user.errors.getAllErrors().isEmpty()) {
            user.save(flash: true)
            Permissao admin = Permissao.findByAuthority("ROLE_ADMIN")
            UsuarioPermissao.create(user, admin, true)
            user.save(flash: true)
        } else {
            user = null;
        }

        render(view: "confirmacao-singup", model: [user: user, mErrors: mErrors])
    }

    def listarUsuarios() {
        def users = Usuario.getAll();
        render(view: "lista-users", model: [users: users])
    }

    def baixarApp() {
    }
}
