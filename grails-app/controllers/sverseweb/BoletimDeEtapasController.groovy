package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class BoletimDeEtapasController {

    BoletimDeEtapasService boletimDeEtapasService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond boletimDeEtapasService.list(params), model:[boletimDeEtapasCount: boletimDeEtapasService.count()]
    }

    def show(Long id) {
        respond boletimDeEtapasService.get(id)
    }

    def create() {
        respond new BoletimDeEtapas(params)
    }

    def save(BoletimDeEtapas boletimDeEtapas) {
        if (boletimDeEtapas == null) {
            notFound()
            return
        }

        try {
            boletimDeEtapasService.save(boletimDeEtapas)
        } catch (ValidationException e) {
            respond boletimDeEtapas.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'boletimDeEtapas.label', default: 'BoletimDeEtapas'), boletimDeEtapas.id])
                redirect boletimDeEtapas
            }
            '*' { respond boletimDeEtapas, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond boletimDeEtapasService.get(id)
    }

    def update(BoletimDeEtapas boletimDeEtapas) {
        if (boletimDeEtapas == null) {
            notFound()
            return
        }

        try {
            boletimDeEtapasService.save(boletimDeEtapas)
        } catch (ValidationException e) {
            respond boletimDeEtapas.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'boletimDeEtapas.label', default: 'BoletimDeEtapas'), boletimDeEtapas.id])
                redirect boletimDeEtapas
            }
            '*'{ respond boletimDeEtapas, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        boletimDeEtapasService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'boletimDeEtapas.label', default: 'BoletimDeEtapas'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'boletimDeEtapas.label', default: 'BoletimDeEtapas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
