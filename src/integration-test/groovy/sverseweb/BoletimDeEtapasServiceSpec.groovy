package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class BoletimDeEtapasServiceSpec extends Specification {

    BoletimDeEtapasService boletimDeEtapasService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new BoletimDeEtapas(...).save(flush: true, failOnError: true)
        //new BoletimDeEtapas(...).save(flush: true, failOnError: true)
        //BoletimDeEtapas boletimDeEtapas = new BoletimDeEtapas(...).save(flush: true, failOnError: true)
        //new BoletimDeEtapas(...).save(flush: true, failOnError: true)
        //new BoletimDeEtapas(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //boletimDeEtapas.id
    }

    void "test get"() {
        setupData()

        expect:
        boletimDeEtapasService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<BoletimDeEtapas> boletimDeEtapasList = boletimDeEtapasService.list(max: 2, offset: 2)

        then:
        boletimDeEtapasList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        boletimDeEtapasService.count() == 5
    }

    void "test delete"() {
        Long boletimDeEtapasId = setupData()

        expect:
        boletimDeEtapasService.count() == 5

        when:
        boletimDeEtapasService.delete(boletimDeEtapasId)
        sessionFactory.currentSession.flush()

        then:
        boletimDeEtapasService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        BoletimDeEtapas boletimDeEtapas = new BoletimDeEtapas()
        boletimDeEtapasService.save(boletimDeEtapas)

        then:
        boletimDeEtapas.id != null
    }
}
