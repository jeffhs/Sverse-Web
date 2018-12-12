package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class GrupoDeEstudoServiceSpec extends Specification {

    GrupoDeEstudoService grupoDeEstudoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new GrupoDeEstudo(...).save(flush: true, failOnError: true)
        //new GrupoDeEstudo(...).save(flush: true, failOnError: true)
        //GrupoDeEstudo grupoDeEstudo = new GrupoDeEstudo(...).save(flush: true, failOnError: true)
        //new GrupoDeEstudo(...).save(flush: true, failOnError: true)
        //new GrupoDeEstudo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //grupoDeEstudo.id
    }

    void "test get"() {
        setupData()

        expect:
        grupoDeEstudoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<GrupoDeEstudo> grupoDeEstudoList = grupoDeEstudoService.list(max: 2, offset: 2)

        then:
        grupoDeEstudoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        grupoDeEstudoService.count() == 5
    }

    void "test delete"() {
        Long grupoDeEstudoId = setupData()

        expect:
        grupoDeEstudoService.count() == 5

        when:
        grupoDeEstudoService.delete(grupoDeEstudoId)
        sessionFactory.currentSession.flush()

        then:
        grupoDeEstudoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        GrupoDeEstudo grupoDeEstudo = new GrupoDeEstudo()
        grupoDeEstudoService.save(grupoDeEstudo)

        then:
        grupoDeEstudo.id != null
    }
}
