package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class EnvioServiceSpec extends Specification {

    EnvioService envioService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Envio(...).save(flush: true, failOnError: true)
        //new Envio(...).save(flush: true, failOnError: true)
        //Envio envio = new Envio(...).save(flush: true, failOnError: true)
        //new Envio(...).save(flush: true, failOnError: true)
        //new Envio(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //envio.id
    }

    void "test get"() {
        setupData()

        expect:
        envioService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Envio> envioList = envioService.list(max: 2, offset: 2)

        then:
        envioList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        envioService.count() == 5
    }

    void "test delete"() {
        Long envioId = setupData()

        expect:
        envioService.count() == 5

        when:
        envioService.delete(envioId)
        sessionFactory.currentSession.flush()

        then:
        envioService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Envio envio = new Envio()
        envioService.save(envio)

        then:
        envio.id != null
    }
}
