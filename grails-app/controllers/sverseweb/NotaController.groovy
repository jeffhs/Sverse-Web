package sverseweb

import grails.validation.ValidationException
import seguranca.Usuario

import static org.springframework.http.HttpStatus.*

class NotaController {

    NotaService notaService
    def springSecurityService;


    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def getCurrentUser(){
        Usuario usuario = springSecurityService.getCurrentUser();
        return usuario;
    }

    def index(){
        Usuario user = springSecurityService.getCurrentUser();
        def lista = user.notas.asList()
        lista.sort{it.id}
        render(view: "/nota/index", model: [usuario: getCurrentUser(), notas:lista])
    }

    def newNota(){
        Usuario user = springSecurityService.getCurrentUser();
        Nota nota = new Nota()
        nota.texto = params.texto
        nota.setDataCriacao(new Date())
        nota.setDataAtualizacao(new Date())
        nota.setUsuario(user)
        notaService.save(nota)
        redirect(view: "index")
    }

    def editNota(){
        Usuario user = springSecurityService.getCurrentUser();
        Nota nota = Nota.findById(params.idNotaEdit)
        nota.texto = params.texto
        nota.setDataAtualizacao(new Date())
        nota.setUsuario(user)
        notaService.save(nota)
        redirect(view: "index")
    }

    def edit(int id){
        Usuario user = springSecurityService.getCurrentUser();
        def lista = user.notas.asList()
        lista.sort{it.id}
        Nota nota = Nota.findById(id)
        render(view: "/nota/edit", model: [usuario: getCurrentUser(), notas:lista, nota: nota])
    }

    def excluirNota(){
        notaService.delete(params.idNotaEdit)
        redirect(action: "index")
    }
}
