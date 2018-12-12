package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class MetasServiceSpec extends Specification {

    MetasService metasService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Metas(...).save(flush: true, failOnError: true)
        //new Metas(...).save(flush: true, failOnError: true)
        //Metas metas = new Metas(...).save(flush: true, failOnError: true)
        //new Metas(...).save(flush: true, failOnError: true)
        //new Metas(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //metas.id
    }

    void "test get"() {
        setupData()

        expect:
        metasService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Metas> metasList = metasService.list(max: 2, offset: 2)

        then:
        metasList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        metasService.count() == 5
    }

    void "test delete"() {
        Long metasId = setupData()

        expect:
        metasService.count() == 5

        when:
        metasService.delete(metasId)
        sessionFactory.currentSession.flush()

        then:
        metasService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Metas metas = new Metas()
        metasService.save(metas)

        then:
        metas.id != null
    }
}
