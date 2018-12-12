package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class BoletimDeEstudoServiceSpec extends Specification {

    BoletimDeEstudoService boletimDeEstudoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new BoletimDeEstudo(...).save(flush: true, failOnError: true)
        //new BoletimDeEstudo(...).save(flush: true, failOnError: true)
        //BoletimDeEstudo boletimDeEstudo = new BoletimDeEstudo(...).save(flush: true, failOnError: true)
        //new BoletimDeEstudo(...).save(flush: true, failOnError: true)
        //new BoletimDeEstudo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //boletimDeEstudo.id
    }

    void "test get"() {
        setupData()

        expect:
        boletimDeEstudoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<BoletimDeEstudo> boletimDeEstudoList = boletimDeEstudoService.list(max: 2, offset: 2)

        then:
        boletimDeEstudoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        boletimDeEstudoService.count() == 5
    }

    void "test delete"() {
        Long boletimDeEstudoId = setupData()

        expect:
        boletimDeEstudoService.count() == 5

        when:
        boletimDeEstudoService.delete(boletimDeEstudoId)
        sessionFactory.currentSession.flush()

        then:
        boletimDeEstudoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        BoletimDeEstudo boletimDeEstudo = new BoletimDeEstudo()
        boletimDeEstudoService.save(boletimDeEstudo)

        then:
        boletimDeEstudo.id != null
    }
}
