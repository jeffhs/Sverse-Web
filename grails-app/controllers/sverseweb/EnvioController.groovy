package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class EnvioController {

    EnvioService envioService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond envioService.list(params), model:[envioCount: envioService.count()]
    }

    def compartilhamento(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond envioService.list(params), model:[envioCount: envioService.count()]
    }

    def show(Long id) {
        respond envioService.get(id)
    }

    def create() {
        respond new Envio(params)
    }

    def save(Envio envio) {
        if (envio == null) {
            notFound()
            return
        }

        try {
            envioService.save(envio)
        } catch (ValidationException e) {
            respond envio.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'envio.label', default: 'Envio'), envio.id])
                redirect envio
            }
            '*' { respond envio, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond envioService.get(id)
    }

    def update(Envio envio) {
        if (envio == null) {
            notFound()
            return
        }

        try {
            envioService.save(envio)
        } catch (ValidationException e) {
            respond envio.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'envio.label', default: 'Envio'), envio.id])
                redirect envio
            }
            '*'{ respond envio, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        envioService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'envio.label', default: 'Envio'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'envio.label', default: 'Envio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
