package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TrabalhoEmGrupoServiceSpec extends Specification {

    TrabalhoEmGrupoService trabalhoEmGrupoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TrabalhoEmGrupo(...).save(flush: true, failOnError: true)
        //new TrabalhoEmGrupo(...).save(flush: true, failOnError: true)
        //TrabalhoEmGrupo trabalhoEmGrupo = new TrabalhoEmGrupo(...).save(flush: true, failOnError: true)
        //new TrabalhoEmGrupo(...).save(flush: true, failOnError: true)
        //new TrabalhoEmGrupo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //trabalhoEmGrupo.id
    }

    void "test get"() {
        setupData()

        expect:
        trabalhoEmGrupoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TrabalhoEmGrupo> trabalhoEmGrupoList = trabalhoEmGrupoService.list(max: 2, offset: 2)

        then:
        trabalhoEmGrupoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        trabalhoEmGrupoService.count() == 5
    }

    void "test delete"() {
        Long trabalhoEmGrupoId = setupData()

        expect:
        trabalhoEmGrupoService.count() == 5

        when:
        trabalhoEmGrupoService.delete(trabalhoEmGrupoId)
        sessionFactory.currentSession.flush()

        then:
        trabalhoEmGrupoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TrabalhoEmGrupo trabalhoEmGrupo = new TrabalhoEmGrupo()
        trabalhoEmGrupoService.save(trabalhoEmGrupo)

        then:
        trabalhoEmGrupo.id != null
    }
}
