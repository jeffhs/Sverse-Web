package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ItemLixeiraController {

    ItemLixeiraService itemLixeiraService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond itemLixeiraService.list(params), model:[itemLixeiraCount: itemLixeiraService.count()]
    }

    def show(Long id) {
        respond itemLixeiraService.get(id)
    }

    def create() {
        respond new ItemLixeira(params)
    }

    def save(ItemLixeira itemLixeira) {
        if (itemLixeira == null) {
            notFound()
            return
        }

        try {
            itemLixeiraService.save(itemLixeira)
        } catch (ValidationException e) {
            respond itemLixeira.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'itemLixeira.label', default: 'ItemLixeira'), itemLixeira.id])
                redirect itemLixeira
            }
            '*' { respond itemLixeira, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond itemLixeiraService.get(id)
    }

    def update(ItemLixeira itemLixeira) {
        if (itemLixeira == null) {
            notFound()
            return
        }

        try {
            itemLixeiraService.save(itemLixeira)
        } catch (ValidationException e) {
            respond itemLixeira.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'itemLixeira.label', default: 'ItemLixeira'), itemLixeira.id])
                redirect itemLixeira
            }
            '*'{ respond itemLixeira, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        itemLixeiraService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'itemLixeira.label', default: 'ItemLixeira'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemLixeira.label', default: 'ItemLixeira'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
