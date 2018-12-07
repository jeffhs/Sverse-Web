package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PaginadorController {

    PaginadorService paginadorService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def userProfile(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def login(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def logou(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def cadastrar(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def configs(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def containersDeEstudo(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def blocoDeNotas(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def ajuda(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paginadorService.list(params), model:[paginadorCount: paginadorService.count()]
    }

    def show(Long id) {
        respond paginadorService.get(id)
    }

    def create() {
        respond new Paginador(params)
    }

    def save(Paginador paginador) {
        if (paginador == null) {
            notFound()
            return
        }

        try {
            paginadorService.save(paginador)
        } catch (ValidationException e) {
            respond paginador.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'paginador.label', default: 'Paginador'), paginador.id])
                redirect paginador
            }
            '*' { respond paginador, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond paginadorService.get(id)
    }

    def update(Paginador paginador) {
        if (paginador == null) {
            notFound()
            return
        }

        try {
            paginadorService.save(paginador)
        } catch (ValidationException e) {
            respond paginador.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'paginador.label', default: 'Paginador'), paginador.id])
                redirect paginador
            }
            '*'{ respond paginador, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        paginadorService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'paginador.label', default: 'Paginador'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'paginador.label', default: 'Paginador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
