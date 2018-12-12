package sverseweb

import grails.gorm.services.Service

@Service(Metas)
interface MetasService {

    Metas get(Serializable id)

    List<Metas> list(Map args)

    Long count()

    void delete(Serializable id)

    Metas save(Metas metas)

}