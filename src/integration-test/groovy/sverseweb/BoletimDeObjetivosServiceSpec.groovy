package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class BoletimDeObjetivosServiceSpec extends Specification {

    BoletimDeObjetivosService boletimDeObjetivosService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new BoletimDeObjetivos(...).save(flush: true, failOnError: true)
        //new BoletimDeObjetivos(...).save(flush: true, failOnError: true)
        //BoletimDeObjetivos boletimDeObjetivos = new BoletimDeObjetivos(...).save(flush: true, failOnError: true)
        //new BoletimDeObjetivos(...).save(flush: true, failOnError: true)
        //new BoletimDeObjetivos(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //boletimDeObjetivos.id
    }

    void "test get"() {
        setupData()

        expect:
        boletimDeObjetivosService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<BoletimDeObjetivos> boletimDeObjetivosList = boletimDeObjetivosService.list(max: 2, offset: 2)

        then:
        boletimDeObjetivosList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        boletimDeObjetivosService.count() == 5
    }

    void "test delete"() {
        Long boletimDeObjetivosId = setupData()

        expect:
        boletimDeObjetivosService.count() == 5

        when:
        boletimDeObjetivosService.delete(boletimDeObjetivosId)
        sessionFactory.currentSession.flush()

        then:
        boletimDeObjetivosService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        BoletimDeObjetivos boletimDeObjetivos = new BoletimDeObjetivos()
        boletimDeObjetivosService.save(boletimDeObjetivos)

        then:
        boletimDeObjetivos.id != null
    }
}
