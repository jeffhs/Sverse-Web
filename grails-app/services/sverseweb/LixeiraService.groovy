package sverseweb

import grails.gorm.services.Service

@Service(Lixeira)
interface LixeiraService {

    Lixeira get(Serializable id)

    List<Lixeira> list(Map args)

    Long count()

    void delete(Serializable id)

    Lixeira save(Lixeira lixeira)

}