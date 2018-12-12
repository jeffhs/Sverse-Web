package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ContainerPessoalServiceSpec extends Specification {

    ContainerPessoalService containerPessoalService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ContainerPessoal(...).save(flush: true, failOnError: true)
        //new ContainerPessoal(...).save(flush: true, failOnError: true)
        //ContainerPessoal containerPessoal = new ContainerPessoal(...).save(flush: true, failOnError: true)
        //new ContainerPessoal(...).save(flush: true, failOnError: true)
        //new ContainerPessoal(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //containerPessoal.id
    }

    void "test get"() {
        setupData()

        expect:
        containerPessoalService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ContainerPessoal> containerPessoalList = containerPessoalService.list(max: 2, offset: 2)

        then:
        containerPessoalList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        containerPessoalService.count() == 5
    }

    void "test delete"() {
        Long containerPessoalId = setupData()

        expect:
        containerPessoalService.count() == 5

        when:
        containerPessoalService.delete(containerPessoalId)
        sessionFactory.currentSession.flush()

        then:
        containerPessoalService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ContainerPessoal containerPessoal = new ContainerPessoal()
        containerPessoalService.save(containerPessoal)

        then:
        containerPessoal.id != null
    }
}
