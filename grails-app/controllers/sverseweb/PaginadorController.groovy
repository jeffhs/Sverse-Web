package sverseweb

import grails.validation.ValidationException
import seguranca.Usuario

import static org.springframework.http.HttpStatus.*

class PaginadorController {

    PaginadorService paginadorService
    def springSecurityService;

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def getCurrentUser(){
        Usuario usuario = springSecurityService.getCurrentUser();
        return usuario;
    }

    def muralAcademico() {
        render(view:"muralAcademico", model:[usuario:getCurrentUser()])
    }

    def ajuda() {
        render(view:"ajuda", model:[usuario:getCurrentUser()])
    }

    def baixarApp() {
        render(view:"baixarApp", model:[usuario:getCurrentUser()])
    }
}
