package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class LixeiraServiceSpec extends Specification {

    LixeiraService lixeiraService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Lixeira(...).save(flush: true, failOnError: true)
        //new Lixeira(...).save(flush: true, failOnError: true)
        //Lixeira lixeira = new Lixeira(...).save(flush: true, failOnError: true)
        //new Lixeira(...).save(flush: true, failOnError: true)
        //new Lixeira(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //lixeira.id
    }

    void "test get"() {
        setupData()

        expect:
        lixeiraService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Lixeira> lixeiraList = lixeiraService.list(max: 2, offset: 2)

        then:
        lixeiraList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        lixeiraService.count() == 5
    }

    void "test delete"() {
        Long lixeiraId = setupData()

        expect:
        lixeiraService.count() == 5

        when:
        lixeiraService.delete(lixeiraId)
        sessionFactory.currentSession.flush()

        then:
        lixeiraService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Lixeira lixeira = new Lixeira()
        lixeiraService.save(lixeira)

        then:
        lixeira.id != null
    }
}
