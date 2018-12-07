package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PaginadorServiceSpec extends Specification {

    PaginadorService paginadorService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Paginador(...).save(flush: true, failOnError: true)
        //new Paginador(...).save(flush: true, failOnError: true)
        //Paginador paginador = new Paginador(...).save(flush: true, failOnError: true)
        //new Paginador(...).save(flush: true, failOnError: true)
        //new Paginador(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //paginador.id
    }

    void "test get"() {
        setupData()

        expect:
        paginadorService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Paginador> paginadorList = paginadorService.list(max: 2, offset: 2)

        then:
        paginadorList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        paginadorService.count() == 5
    }

    void "test delete"() {
        Long paginadorId = setupData()

        expect:
        paginadorService.count() == 5

        when:
        paginadorService.delete(paginadorId)
        sessionFactory.currentSession.flush()

        then:
        paginadorService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Paginador paginador = new Paginador()
        paginadorService.save(paginador)

        then:
        paginador.id != null
    }
}
