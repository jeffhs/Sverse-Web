package sverseweb

import grails.gorm.services.Service

@Service(GrupoDeEstudo)
interface GrupoDeEstudoService {

    GrupoDeEstudo get(Serializable id)

    List<GrupoDeEstudo> list(Map args)

    Long count()

    void delete(Serializable id)

    GrupoDeEstudo save(GrupoDeEstudo grupoDeEstudo)

}