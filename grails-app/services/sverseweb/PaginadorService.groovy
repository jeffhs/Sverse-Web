package sverseweb

import grails.gorm.services.Service

@Service(Paginador)
interface PaginadorService {

    Paginador get(Serializable id)

    List<Paginador> list(Map args)

    Long count()

    void delete(Serializable id)

    Paginador save(Paginador paginador)

}