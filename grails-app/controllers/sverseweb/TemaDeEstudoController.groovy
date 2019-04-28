package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TemaDeEstudoController {

    TemaDeEstudoService temaDeEstudoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond temaDeEstudoService.list(params), model:[temaDeEstudoCount: temaDeEstudoService.count()]
    }

    def show(Long id) {
        respond temaDeEstudoService.get(id)
    }

    def create() {
        respond new TemaDeEstudo(params)
    }

    def save(TemaDeEstudo temaDeEstudo) {
        if (temaDeEstudo == null) {
            notFound()
            return
        }

        try {
            temaDeEstudoService.save(temaDeEstudo)
        } catch (ValidationException e) {
            respond temaDeEstudo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'temaDeEstudo.label', default: 'TemaDeEstudo'), temaDeEstudo.id])
                redirect temaDeEstudo
            }
            '*' { respond temaDeEstudo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond temaDeEstudoService.get(id)
    }

    def update(TemaDeEstudo temaDeEstudo) {
        if (temaDeEstudo == null) {
            notFound()
            return
        }

        try {
            temaDeEstudoService.save(temaDeEstudo)
        } catch (ValidationException e) {
            respond temaDeEstudo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'temaDeEstudo.label', default: 'TemaDeEstudo'), temaDeEstudo.id])
                redirect temaDeEstudo
            }
            '*'{ respond temaDeEstudo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        temaDeEstudoService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'temaDeEstudo.label', default: 'TemaDeEstudo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'temaDeEstudo.label', default: 'TemaDeEstudo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
