package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ContainerPessoalController {

    ContainerPessoalService containerPessoalService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond containerPessoalService.list(params), model:[containerPessoalCount: containerPessoalService.count()]
    }

    def show(Long id) {
        respond containerPessoalService.get(id)
    }

    def create() {
        respond new ContainerPessoal(params)
    }

    def save(ContainerPessoal containerPessoal) {
        if (containerPessoal == null) {
            notFound()
            return
        }

        try {
            containerPessoalService.save(containerPessoal)
        } catch (ValidationException e) {
            respond containerPessoal.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'containerPessoal.label', default: 'ContainerPessoal'), containerPessoal.id])
                redirect containerPessoal
            }
            '*' { respond containerPessoal, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond containerPessoalService.get(id)
    }

    def update(ContainerPessoal containerPessoal) {
        if (containerPessoal == null) {
            notFound()
            return
        }

        try {
            containerPessoalService.save(containerPessoal)
        } catch (ValidationException e) {
            respond containerPessoal.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'containerPessoal.label', default: 'ContainerPessoal'), containerPessoal.id])
                redirect containerPessoal
            }
            '*'{ respond containerPessoal, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        containerPessoalService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'containerPessoal.label', default: 'ContainerPessoal'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'containerPessoal.label', default: 'ContainerPessoal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
