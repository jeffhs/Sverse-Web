package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TrabalhoEmGrupoController {

    TrabalhoEmGrupoService trabalhoEmGrupoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond trabalhoEmGrupoService.list(params), model:[trabalhoEmGrupoCount: trabalhoEmGrupoService.count()]
    }

    def show(Long id) {
        respond trabalhoEmGrupoService.get(id)
    }

    def create() {
        respond new TrabalhoEmGrupo(params)
    }

    def save(TrabalhoEmGrupo trabalhoEmGrupo) {
        if (trabalhoEmGrupo == null) {
            notFound()
            return
        }

        try {
            trabalhoEmGrupoService.save(trabalhoEmGrupo)
        } catch (ValidationException e) {
            respond trabalhoEmGrupo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trabalhoEmGrupo.label', default: 'TrabalhoEmGrupo'), trabalhoEmGrupo.id])
                redirect trabalhoEmGrupo
            }
            '*' { respond trabalhoEmGrupo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond trabalhoEmGrupoService.get(id)
    }

    def update(TrabalhoEmGrupo trabalhoEmGrupo) {
        if (trabalhoEmGrupo == null) {
            notFound()
            return
        }

        try {
            trabalhoEmGrupoService.save(trabalhoEmGrupo)
        } catch (ValidationException e) {
            respond trabalhoEmGrupo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'trabalhoEmGrupo.label', default: 'TrabalhoEmGrupo'), trabalhoEmGrupo.id])
                redirect trabalhoEmGrupo
            }
            '*'{ respond trabalhoEmGrupo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        trabalhoEmGrupoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'trabalhoEmGrupo.label', default: 'TrabalhoEmGrupo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trabalhoEmGrupo.label', default: 'TrabalhoEmGrupo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
