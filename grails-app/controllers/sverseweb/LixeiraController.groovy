package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class LixeiraController {

    LixeiraService lixeiraService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond lixeiraService.list(params), model:[lixeiraCount: lixeiraService.count()]
    }

    def show(Long id) {
        respond lixeiraService.get(id)
    }

    def create() {
        respond new Lixeira(params)
    }

    def save(Lixeira lixeira) {
        if (lixeira == null) {
            notFound()
            return
        }

        try {
            lixeiraService.save(lixeira)
        } catch (ValidationException e) {
            respond lixeira.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'lixeira.label', default: 'Lixeira'), lixeira.id])
                redirect lixeira
            }
            '*' { respond lixeira, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond lixeiraService.get(id)
    }

    def update(Lixeira lixeira) {
        if (lixeira == null) {
            notFound()
            return
        }

        try {
            lixeiraService.save(lixeira)
        } catch (ValidationException e) {
            respond lixeira.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'lixeira.label', default: 'Lixeira'), lixeira.id])
                redirect lixeira
            }
            '*'{ respond lixeira, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        lixeiraService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'lixeira.label', default: 'Lixeira'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'lixeira.label', default: 'Lixeira'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
