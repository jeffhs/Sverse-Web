package sverseweb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class NotificacaoController {

    NotificacaoService notificacaoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond notificacaoService.list(params), model:[notificacaoCount: notificacaoService.count()]
    }

    def show(Long id) {
        respond notificacaoService.get(id)
    }

    def create() {
        respond new Notificacao(params)
    }

    def save(Notificacao notificacao) {
        if (notificacao == null) {
            notFound()
            return
        }

        try {
            notificacaoService.save(notificacao)
        } catch (ValidationException e) {
            respond notificacao.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'notificacao.label', default: 'Notificacao'), notificacao.id])
                redirect notificacao
            }
            '*' { respond notificacao, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond notificacaoService.get(id)
    }

    def update(Notificacao notificacao) {
        if (notificacao == null) {
            notFound()
            return
        }

        try {
            notificacaoService.save(notificacao)
        } catch (ValidationException e) {
            respond notificacao.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.updated.message', args: [message(code: 'notificacao.label', default: 'Notificacao'), notificacao.id])
                redirect notificacao
            }
            '*'{ respond notificacao, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        notificacaoService.delete(id)

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.deleted.message', args: [message(code: 'notificacao.label', default: 'Notificacao'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.not.found.message', args: [message(code: 'notificacao.label', default: 'Notificacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
