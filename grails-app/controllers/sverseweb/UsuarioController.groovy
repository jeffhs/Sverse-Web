package sverseweb


import seguranca.Permissao
import seguranca.Usuario
import seguranca.UsuarioPermissao
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class UsuarioController {

    UsuarioService usuarioService
    def springSecurityService;

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def amigos() {
        String username = springSecurityService.principal.username
        Usuario usuario = Usuario.findByUsername(username)
        def lista = usuario.getAmigos()
        render(view: "/usuario/amigos", model: [usuarios: lista])
    }

    def muralAcademico() {
        String username = springSecurityService.principal.username
        Usuario user = Usuario.findByUsername(username)
        def posts = []
        def idUserPost = [:]
        def idContainerPost = [:]
        if (Post.findAllByUsuarioId(user.id) != null && Post.findAllByUsuarioId(user.id).size() > 0) {
            posts = Post.findAllByUsuarioId(user.id)
        }
        if (Post.all?.publicoIds.size() > 0) {
            Post.all.each {
                it.publicoIds.each { id ->
                    if (id == user.id) {
                        posts.add(it)
                        if (it.usuarioId) {
                            idUserPost[it.usuarioId] = Usuario.findById(it.usuarioId)
                        }
                    }
                }
            }
        }
        posts.containerId.each {
            if(it){
                idContainerPost[it] = Container.findById(it)
            }
        }

        render(view: "/usuario/muralAcademico",
                model: [usuario        : user,
                        posts          : posts,
                        idUserPost     : idUserPost,
                        idContainerPost: idContainerPost])
    }

    def calendarioAcademico() {
        String username = springSecurityService.principal.username
        Usuario usuario = Usuario.findByUsername(username)
        render(view: "/usuario/calendarioAcademico", model: [usuario: usuario])
    }

    def show(Long id) {
        respond usuarioService.get(id)
    }

    def edit(Long id) {
        respond usuarioService.get(id)
    }
}
