package sverseweb

import grails.gorm.services.Service

@Service(TopicoDeEstudo)
interface TopicoDeEstudoService {

    TopicoDeEstudo get(Serializable id)

    List<TopicoDeEstudo> list(Map args)

    Long count()

    void delete(Serializable id)

    TopicoDeEstudo save(TopicoDeEstudo topicoDeEstudo)

}