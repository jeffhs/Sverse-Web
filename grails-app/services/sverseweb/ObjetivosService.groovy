package sverseweb

import grails.gorm.services.Service

@Service(Objetivos)
interface ObjetivosService {

    Objetivos get(Serializable id)

    List<Objetivos> list(Map args)

    Long count()

    void delete(Serializable id)

    Objetivos save(Objetivos objetivos)

}