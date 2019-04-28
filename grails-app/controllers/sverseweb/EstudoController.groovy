package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class EstudoController {

    EstudoService estudoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def save(Estudo estudo) {
        if (estudo == null) {
            notFound()
            return
        }

        try {
            estudoService.save(estudo)
        } catch (ValidationException e) {
            respond estudo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'estudo.label', default: 'Estudo'), estudo.id])
                redirect estudo
            }
            '*' { respond estudo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond estudoService.get(id)
    }
}
