package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class BoletimDeEstudoController {

    BoletimDeEstudoService boletimDeEstudoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond boletimDeEstudoService.list(params), model:[boletimDeEstudoCount: boletimDeEstudoService.count()]
    }

    def show(Long id) {
        respond boletimDeEstudoService.get(id)
    }

    def create() {
        respond new BoletimDeEstudo(params)
    }

    def save(BoletimDeEstudo boletimDeEstudo) {
        if (boletimDeEstudo == null) {
            notFound()
            return
        }

        try {
            boletimDeEstudoService.save(boletimDeEstudo)
        } catch (ValidationException e) {
            respond boletimDeEstudo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'boletimDeEstudo.label', default: 'BoletimDeEstudo'), boletimDeEstudo.id])
                redirect boletimDeEstudo
            }
            '*' { respond boletimDeEstudo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond boletimDeEstudoService.get(id)
    }

    def update(BoletimDeEstudo boletimDeEstudo) {
        if (boletimDeEstudo == null) {
            notFound()
            return
        }

        try {
            boletimDeEstudoService.save(boletimDeEstudo)
        } catch (ValidationException e) {
            respond boletimDeEstudo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'boletimDeEstudo.label', default: 'BoletimDeEstudo'), boletimDeEstudo.id])
                redirect boletimDeEstudo
            }
            '*'{ respond boletimDeEstudo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        boletimDeEstudoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'boletimDeEstudo.label', default: 'BoletimDeEstudo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'boletimDeEstudo.label', default: 'BoletimDeEstudo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
