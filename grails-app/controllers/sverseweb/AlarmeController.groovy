package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AlarmeController {

    AlarmeService alarmeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond alarmeService.list(params), model:[alarmeCount: alarmeService.count()]
    }

    def show(Long id) {
        respond alarmeService.get(id)
    }

    def create() {
        respond new Alarme(params)
    }

    def save(Alarme alarme) {
        if (alarme == null) {
            notFound()
            return
        }

        try {
            alarmeService.save(alarme)
        } catch (ValidationException e) {
            respond alarme.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'alarme.label', default: 'Alarme'), alarme.id])
                redirect alarme
            }
            '*' { respond alarme, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond alarmeService.get(id)
    }

    def update(Alarme alarme) {
        if (alarme == null) {
            notFound()
            return
        }

        try {
            alarmeService.save(alarme)
        } catch (ValidationException e) {
            respond alarme.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'alarme.label', default: 'Alarme'), alarme.id])
                redirect alarme
            }
            '*'{ respond alarme, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        alarmeService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'alarme.label', default: 'Alarme'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'alarme.label', default: 'Alarme'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
