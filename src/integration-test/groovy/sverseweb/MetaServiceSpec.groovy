package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class MetaServiceSpec extends Specification {

    MetaService metaService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Meta(...).save(flush: true, failOnError: true)
        //new Meta(...).save(flush: true, failOnError: true)
        //Meta meta = new Meta(...).save(flush: true, failOnError: true)
        //new Meta(...).save(flush: true, failOnError: true)
        //new Meta(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //meta.id
    }

    void "test get"() {
        setupData()

        expect:
        metaService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Meta> metaList = metaService.list(max: 2, offset: 2)

        then:
        metaList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        metaService.count() == 5
    }

    void "test delete"() {
        Long metaId = setupData()

        expect:
        metaService.count() == 5

        when:
        metaService.delete(metaId)
        sessionFactory.currentSession.flush()

        then:
        metaService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Meta meta = new Meta()
        metaService.save(meta)

        then:
        meta.id != null
    }
}
