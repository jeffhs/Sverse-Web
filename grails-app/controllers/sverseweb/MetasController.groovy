package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class MetasController {

    MetasService metasService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond metasService.list(params), model:[metasCount: metasService.count()]
    }

    def show(Long id) {
        respond metasService.get(id)
    }

    def create() {
        respond new Metas(params)
    }

    def save(Metas metas) {
        if (metas == null) {
            notFound()
            return
        }

        try {
            metasService.save(metas)
        } catch (ValidationException e) {
            respond metas.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'metas.label', default: 'Metas'), metas.id])
                redirect metas
            }
            '*' { respond metas, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond metasService.get(id)
    }

    def update(Metas metas) {
        if (metas == null) {
            notFound()
            return
        }

        try {
            metasService.save(metas)
        } catch (ValidationException e) {
            respond metas.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'metas.label', default: 'Metas'), metas.id])
                redirect metas
            }
            '*'{ respond metas, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        metasService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'metas.label', default: 'Metas'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'metas.label', default: 'Metas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
