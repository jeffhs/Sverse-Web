package sverseweb

import grails.gorm.services.Service

@Service(TrabalhoEmGrupo)
interface TrabalhoEmGrupoService {

    TrabalhoEmGrupo get(Serializable id)

    List<TrabalhoEmGrupo> list(Map args)

    Long count()

    void delete(Serializable id)

    TrabalhoEmGrupo save(TrabalhoEmGrupo trabalhoEmGrupo)

}