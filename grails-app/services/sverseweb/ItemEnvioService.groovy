package sverseweb

import grails.gorm.services.Service

@Service(ItemEnvio)
interface ItemEnvioService {

    ItemEnvio get(Serializable id)

    List<ItemEnvio> list(Map args)

    Long count()

    void delete(Serializable id)

    ItemEnvio save(ItemEnvio itemEnvio)

}