package sverseweb

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ItemLixeiraServiceSpec extends Specification {

    ItemLixeiraService itemLixeiraService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ItemLixeira(...).save(flush: true, failOnError: true)
        //new ItemLixeira(...).save(flush: true, failOnError: true)
        //ItemLixeira itemLixeira = new ItemLixeira(...).save(flush: true, failOnError: true)
        //new ItemLixeira(...).save(flush: true, failOnError: true)
        //new ItemLixeira(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //itemLixeira.id
    }

    void "test get"() {
        setupData()

        expect:
        itemLixeiraService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ItemLixeira> itemLixeiraList = itemLixeiraService.list(max: 2, offset: 2)

        then:
        itemLixeiraList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        itemLixeiraService.count() == 5
    }

    void "test delete"() {
        Long itemLixeiraId = setupData()

        expect:
        itemLixeiraService.count() == 5

        when:
        itemLixeiraService.delete(itemLixeiraId)
        sessionFactory.currentSession.flush()

        then:
        itemLixeiraService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ItemLixeira itemLixeira = new ItemLixeira()
        itemLixeiraService.save(itemLixeira)

        then:
        itemLixeira.id != null
    }
}
