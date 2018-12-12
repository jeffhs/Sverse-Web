package sverseweb

import grails.gorm.services.Service

@Service(TemaDeEstudo)
interface TemaDeEstudoService {

    TemaDeEstudo get(Serializable id)

    List<TemaDeEstudo> list(Map args)

    Long count()

    void delete(Serializable id)

    TemaDeEstudo save(TemaDeEstudo temaDeEstudo)

}