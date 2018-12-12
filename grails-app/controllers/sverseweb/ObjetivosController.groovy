package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ObjetivosController {

    ObjetivosService objetivosService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond objetivosService.list(params), model:[objetivosCount: objetivosService.count()]
    }

    def show(Long id) {
        respond objetivosService.get(id)
    }

    def create() {
        respond new Objetivos(params)
    }

    def save(Objetivos objetivos) {
        if (objetivos == null) {
            notFound()
            return
        }

        try {
            objetivosService.save(objetivos)
        } catch (ValidationException e) {
            respond objetivos.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'objetivos.label', default: 'Objetivos'), objetivos.id])
                redirect objetivos
            }
            '*' { respond objetivos, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond objetivosService.get(id)
    }

    def update(Objetivos objetivos) {
        if (objetivos == null) {
            notFound()
            return
        }

        try {
            objetivosService.save(objetivos)
        } catch (ValidationException e) {
            respond objetivos.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'objetivos.label', default: 'Objetivos'), objetivos.id])
                redirect objetivos
            }
            '*'{ respond objetivos, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        objetivosService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'objetivos.label', default: 'Objetivos'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'objetivos.label', default: 'Objetivos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
