package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TopicoDeEstudoController {

    TopicoDeEstudoService topicoDeEstudoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond topicoDeEstudoService.list(params), model:[topicoDeEstudoCount: topicoDeEstudoService.count()]
    }

    def show(Long id) {
        respond topicoDeEstudoService.get(id)
    }

    def create() {
        respond new TopicoDeEstudo(params)
    }

    def save(TopicoDeEstudo topicoDeEstudo) {
        if (topicoDeEstudo == null) {
            notFound()
            return
        }

        try {
            topicoDeEstudoService.save(topicoDeEstudo)
        } catch (ValidationException e) {
            respond topicoDeEstudo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'topicoDeEstudo.label', default: 'TopicoDeEstudo'), topicoDeEstudo.id])
                redirect topicoDeEstudo
            }
            '*' { respond topicoDeEstudo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond topicoDeEstudoService.get(id)
    }

    def update(TopicoDeEstudo topicoDeEstudo) {
        if (topicoDeEstudo == null) {
            notFound()
            return
        }

        try {
            topicoDeEstudoService.save(topicoDeEstudo)
        } catch (ValidationException e) {
            respond topicoDeEstudo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'topicoDeEstudo.label', default: 'TopicoDeEstudo'), topicoDeEstudo.id])
                redirect topicoDeEstudo
            }
            '*'{ respond topicoDeEstudo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        topicoDeEstudoService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'topicoDeEstudo.label', default: 'TopicoDeEstudo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'topicoDeEstudo.label', default: 'TopicoDeEstudo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
