package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class MetaController {

    MetaService metaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond metaService.list(params), model:[metaCount: metaService.count()]
    }

    def show(Long id) {
        respond metaService.get(id)
    }

    def create() {
        respond new Meta(params)
    }

    def save(Meta meta) {
        if (meta == null) {
            notFound()
            return
        }

        try {
            metaService.save(meta)
        } catch (ValidationException e) {
            respond meta.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'meta.label', default: 'Meta'), meta.id])
                redirect meta
            }
            '*' { respond meta, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond metaService.get(id)
    }

    def update(Meta meta) {
        if (meta == null) {
            notFound()
            return
        }

        try {
            metaService.save(meta)
        } catch (ValidationException e) {
            respond meta.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'meta.label', default: 'Meta'), meta.id])
                redirect meta
            }
            '*'{ respond meta, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        metaService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'meta.label', default: 'Meta'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'meta.label', default: 'Meta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
