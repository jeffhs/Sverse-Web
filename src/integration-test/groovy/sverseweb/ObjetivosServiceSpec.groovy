package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ObjetivosServiceSpec extends Specification {

    ObjetivosService objetivosService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Objetivos(...).save(flush: true, failOnError: true)
        //new Objetivos(...).save(flush: true, failOnError: true)
        //Objetivos objetivos = new Objetivos(...).save(flush: true, failOnError: true)
        //new Objetivos(...).save(flush: true, failOnError: true)
        //new Objetivos(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //objetivos.id
    }

    void "test get"() {
        setupData()

        expect:
        objetivosService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Objetivos> objetivosList = objetivosService.list(max: 2, offset: 2)

        then:
        objetivosList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        objetivosService.count() == 5
    }

    void "test delete"() {
        Long objetivosId = setupData()

        expect:
        objetivosService.count() == 5

        when:
        objetivosService.delete(objetivosId)
        sessionFactory.currentSession.flush()

        then:
        objetivosService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Objetivos objetivos = new Objetivos()
        objetivosService.save(objetivos)

        then:
        objetivos.id != null
    }
}
