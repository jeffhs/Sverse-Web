package sverseweb

import grails.validation.ValidationException
import seguranca.Usuario

import static org.springframework.http.HttpStatus.*

class PerfilController {

    PerfilService perfilService
    UsuarioService usuarioService
    def springSecurityService;

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def usuariosEncontrados = null;

    def index(Integer max) {
        Usuario user = (Usuario) springSecurityService.getCurrentUser();
        def containers = Container.all;
        def usuarios = Usuario.all;
        render(view:"index", model:[usuario:user, containers:containers, usuarios:usuarios, usuariosEncontrados:usuariosEncontrados])
    }

    def atualizarPerfil(){
        Usuario user = (Usuario) springSecurityService.getCurrentUser();
        Perfil p = user.perfil;
        p.setEmail(params.email)
        p.setTrello(params.trello)
        p.setGithub(params.github)
        p.setContato(params.contato)
        perfilService.save(p)
        redirect(view:"index")
    }

    def atualizarUsuario(){
        Usuario user = (Usuario) springSecurityService.getCurrentUser();
        user.nome = params.nome
        user.username = params.username
        user.password = params.password
        usuarioService.save(user)
        redirect(view:"index")
    }

    def pesquisarPorUsuarios(){
        String pesquisa = params.q;
        if(pesquisa){
            usuariosEncontrados = Usuario.findByNomeIlikeAndNomeBetween(pesquisa, pesquisa.toLowerCase(), pesquisa.toUpperCase())
        }
        redirect(action: "index")
    }

    def timeline(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond perfilService.list(params), model:[perfilCount: perfilService.count()]
    }

    def show(Long id) {
        respond perfilService.get(id)
    }

    def create() {
        respond new Perfil(params)
    }

    def save(Perfil perfil) {
        if (perfil == null) {
            notFound()
            return
        }

        try {
            perfilService.save(perfil)
        } catch (ValidationException e) {
            respond perfil.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'perfil.label', default: 'Perfil'), perfil.id])
                redirect perfil
            }
            '*' { respond perfil, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond perfilService.get(id)
    }

    def update(Perfil perfil) {
        if (perfil == null) {
            notFound()
            return
        }

        try {
            perfilService.save(perfil)
        } catch (ValidationException e) {
            respond perfil.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'perfil.label', default: 'Perfil'), perfil.id])
                redirect perfil
            }
            '*'{ respond perfil, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        perfilService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'perfil.label', default: 'Perfil'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'perfil.label', default: 'Perfil'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
