package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class BoletimDeObjetivosController {

    BoletimDeObjetivosService boletimDeObjetivosService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond boletimDeObjetivosService.list(params), model:[boletimDeObjetivosCount: boletimDeObjetivosService.count()]
    }

    def show(Long id) {
        respond boletimDeObjetivosService.get(id)
    }

    def create() {
        respond new BoletimDeObjetivos(params)
    }

    def save(BoletimDeObjetivos boletimDeObjetivos) {
        if (boletimDeObjetivos == null) {
            notFound()
            return
        }

        try {
            boletimDeObjetivosService.save(boletimDeObjetivos)
        } catch (ValidationException e) {
            respond boletimDeObjetivos.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'boletimDeObjetivos.label', default: 'BoletimDeObjetivos'), boletimDeObjetivos.id])
                redirect boletimDeObjetivos
            }
            '*' { respond boletimDeObjetivos, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond boletimDeObjetivosService.get(id)
    }

    def update(BoletimDeObjetivos boletimDeObjetivos) {
        if (boletimDeObjetivos == null) {
            notFound()
            return
        }

        try {
            boletimDeObjetivosService.save(boletimDeObjetivos)
        } catch (ValidationException e) {
            respond boletimDeObjetivos.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'boletimDeObjetivos.label', default: 'BoletimDeObjetivos'), boletimDeObjetivos.id])
                redirect boletimDeObjetivos
            }
            '*'{ respond boletimDeObjetivos, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        boletimDeObjetivosService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'boletimDeObjetivos.label', default: 'BoletimDeObjetivos'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'boletimDeObjetivos.label', default: 'BoletimDeObjetivos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
