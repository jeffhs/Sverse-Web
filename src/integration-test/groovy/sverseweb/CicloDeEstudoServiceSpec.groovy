package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CicloDeEstudoServiceSpec extends Specification {

    CicloDeEstudoService cicloDeEstudoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new CicloDeEstudo(...).save(flush: true, failOnError: true)
        //new CicloDeEstudo(...).save(flush: true, failOnError: true)
        //CicloDeEstudo cicloDeEstudo = new CicloDeEstudo(...).save(flush: true, failOnError: true)
        //new CicloDeEstudo(...).save(flush: true, failOnError: true)
        //new CicloDeEstudo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //cicloDeEstudo.id
    }

    void "test get"() {
        setupData()

        expect:
        cicloDeEstudoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<CicloDeEstudo> cicloDeEstudoList = cicloDeEstudoService.list(max: 2, offset: 2)

        then:
        cicloDeEstudoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        cicloDeEstudoService.count() == 5
    }

    void "test delete"() {
        Long cicloDeEstudoId = setupData()

        expect:
        cicloDeEstudoService.count() == 5

        when:
        cicloDeEstudoService.delete(cicloDeEstudoId)
        sessionFactory.currentSession.flush()

        then:
        cicloDeEstudoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        CicloDeEstudo cicloDeEstudo = new CicloDeEstudo()
        cicloDeEstudoService.save(cicloDeEstudo)

        then:
        cicloDeEstudo.id != null
    }
}
