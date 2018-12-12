package sverseweb

import grails.gorm.services.Service

@Service(CicloDeEstudo)
interface CicloDeEstudoService {

    CicloDeEstudo get(Serializable id)

    List<CicloDeEstudo> list(Map args)

    Long count()

    void delete(Serializable id)

    CicloDeEstudo save(CicloDeEstudo cicloDeEstudo)

}