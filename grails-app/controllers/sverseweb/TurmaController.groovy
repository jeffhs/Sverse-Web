package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TurmaController {

    TurmaService turmaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond turmaService.list(params), model:[turmaCount: turmaService.count()]
    }

    def show(Long id) {
        respond turmaService.get(id)
    }

    def create() {
        respond new Turma(params)
    }

    def save(Turma turma) {
        if (turma == null) {
            notFound()
            return
        }

        try {
            turmaService.save(turma)
        } catch (ValidationException e) {
            respond turma.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'turma.label', default: 'Turma'), turma.id])
                redirect turma
            }
            '*' { respond turma, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond turmaService.get(id)
    }

    def update(Turma turma) {
        if (turma == null) {
            notFound()
            return
        }

        try {
            turmaService.save(turma)
        } catch (ValidationException e) {
            respond turma.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'turma.label', default: 'Turma'), turma.id])
                redirect turma
            }
            '*'{ respond turma, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        turmaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'turma.label', default: 'Turma'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'turma.label', default: 'Turma'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
