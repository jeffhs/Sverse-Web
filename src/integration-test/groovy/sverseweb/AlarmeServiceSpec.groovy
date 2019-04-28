package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AlarmeServiceSpec extends Specification {

    AlarmeService alarmeService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Alarme(...).save(flush: true, failOnError: true)
        //new Alarme(...).save(flush: true, failOnError: true)
        //Alarme alarme = new Alarme(...).save(flush: true, failOnError: true)
        //new Alarme(...).save(flush: true, failOnError: true)
        //new Alarme(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //alarme.id
    }

    void "test get"() {
        setupData()

        expect:
        alarmeService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Alarme> alarmeList = alarmeService.list(max: 2, offset: 2)

        then:
        alarmeList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        alarmeService.count() == 5
    }

    void "test delete"() {
        Long alarmeId = setupData()

        expect:
        alarmeService.count() == 5

        when:
        alarmeService.delete(alarmeId)
        sessionFactory.currentSession.flush()

        then:
        alarmeService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Alarme alarme = new Alarme()
        alarmeService.save(alarme)

        then:
        alarme.id != null
    }
}
