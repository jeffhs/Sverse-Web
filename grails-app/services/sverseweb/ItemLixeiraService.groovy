package sverseweb

import grails.gorm.services.Service

@Service(ItemLixeira)
interface ItemLixeiraService {

    ItemLixeira get(Serializable id)

    List<ItemLixeira> list(Map args)

    Long count()

    void delete(Serializable id)

    ItemLixeira save(ItemLixeira itemLixeira)

}