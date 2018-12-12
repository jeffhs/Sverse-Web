package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TemaDeEstudoServiceSpec extends Specification {

    TemaDeEstudoService temaDeEstudoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TemaDeEstudo(...).save(flush: true, failOnError: true)
        //new TemaDeEstudo(...).save(flush: true, failOnError: true)
        //TemaDeEstudo temaDeEstudo = new TemaDeEstudo(...).save(flush: true, failOnError: true)
        //new TemaDeEstudo(...).save(flush: true, failOnError: true)
        //new TemaDeEstudo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //temaDeEstudo.id
    }

    void "test get"() {
        setupData()

        expect:
        temaDeEstudoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TemaDeEstudo> temaDeEstudoList = temaDeEstudoService.list(max: 2, offset: 2)

        then:
        temaDeEstudoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        temaDeEstudoService.count() == 5
    }

    void "test delete"() {
        Long temaDeEstudoId = setupData()

        expect:
        temaDeEstudoService.count() == 5

        when:
        temaDeEstudoService.delete(temaDeEstudoId)
        sessionFactory.currentSession.flush()

        then:
        temaDeEstudoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TemaDeEstudo temaDeEstudo = new TemaDeEstudo()
        temaDeEstudoService.save(temaDeEstudo)

        then:
        temaDeEstudo.id != null
    }
}
