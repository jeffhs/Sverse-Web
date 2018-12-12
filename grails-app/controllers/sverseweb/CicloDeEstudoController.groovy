package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CicloDeEstudoController {

    CicloDeEstudoService cicloDeEstudoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond cicloDeEstudoService.list(params), model:[cicloDeEstudoCount: cicloDeEstudoService.count()]
    }

    def show(Long id) {
        respond cicloDeEstudoService.get(id)
    }

    def create() {
        respond new CicloDeEstudo(params)
    }

    def save(CicloDeEstudo cicloDeEstudo) {
        if (cicloDeEstudo == null) {
            notFound()
            return
        }

        try {
            cicloDeEstudoService.save(cicloDeEstudo)
        } catch (ValidationException e) {
            respond cicloDeEstudo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cicloDeEstudo.label', default: 'CicloDeEstudo'), cicloDeEstudo.id])
                redirect cicloDeEstudo
            }
            '*' { respond cicloDeEstudo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond cicloDeEstudoService.get(id)
    }

    def update(CicloDeEstudo cicloDeEstudo) {
        if (cicloDeEstudo == null) {
            notFound()
            return
        }

        try {
            cicloDeEstudoService.save(cicloDeEstudo)
        } catch (ValidationException e) {
            respond cicloDeEstudo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'cicloDeEstudo.label', default: 'CicloDeEstudo'), cicloDeEstudo.id])
                redirect cicloDeEstudo
            }
            '*'{ respond cicloDeEstudo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        cicloDeEstudoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'cicloDeEstudo.label', default: 'CicloDeEstudo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cicloDeEstudo.label', default: 'CicloDeEstudo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
