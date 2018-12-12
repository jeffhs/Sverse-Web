package sverseweb

import grails.gorm.services.Service

@Service(Meta)
interface MetaService {

    Meta get(Serializable id)

    List<Meta> list(Map args)

    Long count()

    void delete(Serializable id)

    Meta save(Meta meta)

}