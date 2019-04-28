package sverseweb

import grails.validation.ValidationException
import seguranca.Usuario
import static org.springframework.http.HttpStatus.*

class ContainerController {

    ContainerService containerService
    UsuarioService usuarioService
    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def getCurrentUser(){
        Usuario usuario = springSecurityService.getCurrentUser();
        return usuario;
    }

    def index(){
        def lista = containerService.list();
        render(view: "/container/index", model: [usuario:getCurrentUser(), containers:lista])
    }

    def edit(int id){
        def lista = containerService.list();
        def container = Container.findById(id)
        render(view: "/container/edit", model: [usuario:getCurrentUser(), containers:lista, container:container])
    }

    def newContainer(){
        //criando containers e associando ao usuario
        Usuario user = Usuario.findById(springSecurityService.getCurrentUserId())
        Container container = new Container()
        container.nome = params.nome
        container.descricao = params.descricao
        container.tipo = params.tipo
        container.imgContainer = "default"
        container.dificuldade = params.dificuldade
        container.importancia = params.importancia
        container.privacidade = params.privacidade
        container.nNotificacoes = 0
        container.imgBackground = "default"
        container.dataCriacao = new Date()
        container.dataAtualizacao = new Date()

        //adicionando participantes, administradores e salvando
        container.addToParticipantes(user)
        container.addToAdmins(user)
        user.addToContainers(container)
        user.addToContainersAdmin(container)
        containerService.save(container)

        //criando publicaçao de container publico e salvando
        Post post = new Post()
        post.tipo = container.privacidade
        post.containerId = container.id
        post.usuarioId = user.id

        if(post.tipo == "Container Publico" && user.amigos && !user.amigos.empty){
            post.publicoIds = user?.amigos?.id
        }
        post.dataDePublicacao = new Date()
        post.validate()
        if(!post.errors || post.errors.errorCount == 0){
            post.save(flash:true)
        }
        redirect(action: "index")
    }

    def editContainer(){
        //criando containers e associando ao usuario
        Usuario user = Usuario.findById(springSecurityService.getCurrentUserId())
        Container container = Container.findById(params.idEditContainer)
        container.nome = params.nome
        container.descricao = params.descricao
        container.tipo = params.tipo
        container.imgContainer = "default"
        container.dificuldade = params.dificuldade
        container.importancia = params.importancia
        container.privacidade = params.privacidade
        container.nNotificacoes = 0
        container.imgBackground = "default"
        container.dataAtualizacao = new Date()
        containerService.save(container)
        redirect(action: "index")
    }

    def excluirContainer(){
        containerService.delete(params.idEditContainer)
        redirect(action: "index")
    }

    def area(){

    }
}
