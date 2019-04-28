package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class GrupoDeEstudoController {

    GrupoDeEstudoService grupoDeEstudoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond grupoDeEstudoService.list(params), model:[grupoDeEstudoCount: grupoDeEstudoService.count()]
    }

    def show(Long id) {
        respond grupoDeEstudoService.get(id)
    }

    def create() {
        respond new GrupoDeEstudo(params)
    }

    def save(GrupoDeEstudo grupoDeEstudo) {
        if (grupoDeEstudo == null) {
            notFound()
            return
        }

        try {
            grupoDeEstudoService.save(grupoDeEstudo)
        } catch (ValidationException e) {
            respond grupoDeEstudo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'grupoDeEstudo.label', default: 'GrupoDeEstudo'), grupoDeEstudo.id])
                redirect grupoDeEstudo
            }
            '*' { respond grupoDeEstudo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond grupoDeEstudoService.get(id)
    }

    def update(GrupoDeEstudo grupoDeEstudo) {
        if (grupoDeEstudo == null) {
            notFound()
            return
        }

        try {
            grupoDeEstudoService.save(grupoDeEstudo)
        } catch (ValidationException e) {
            respond grupoDeEstudo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'grupoDeEstudo.label', default: 'GrupoDeEstudo'), grupoDeEstudo.id])
                redirect grupoDeEstudo
            }
            '*'{ respond grupoDeEstudo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        grupoDeEstudoService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'grupoDeEstudo.label', default: 'GrupoDeEstudo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoDeEstudo.label', default: 'GrupoDeEstudo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
