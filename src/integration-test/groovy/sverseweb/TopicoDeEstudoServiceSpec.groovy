package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TopicoDeEstudoServiceSpec extends Specification {

    TopicoDeEstudoService topicoDeEstudoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TopicoDeEstudo(...).save(flush: true, failOnError: true)
        //new TopicoDeEstudo(...).save(flush: true, failOnError: true)
        //TopicoDeEstudo topicoDeEstudo = new TopicoDeEstudo(...).save(flush: true, failOnError: true)
        //new TopicoDeEstudo(...).save(flush: true, failOnError: true)
        //new TopicoDeEstudo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //topicoDeEstudo.id
    }

    void "test get"() {
        setupData()

        expect:
        topicoDeEstudoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TopicoDeEstudo> topicoDeEstudoList = topicoDeEstudoService.list(max: 2, offset: 2)

        then:
        topicoDeEstudoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        topicoDeEstudoService.count() == 5
    }

    void "test delete"() {
        Long topicoDeEstudoId = setupData()

        expect:
        topicoDeEstudoService.count() == 5

        when:
        topicoDeEstudoService.delete(topicoDeEstudoId)
        sessionFactory.currentSession.flush()

        then:
        topicoDeEstudoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TopicoDeEstudo topicoDeEstudo = new TopicoDeEstudo()
        topicoDeEstudoService.save(topicoDeEstudo)

        then:
        topicoDeEstudo.id != null
    }
}
