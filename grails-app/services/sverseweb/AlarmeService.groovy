package sverseweb

import grails.gorm.services.Service

@Service(Alarme)
interface AlarmeService {

    Alarme get(Serializable id)

    List<Alarme> list(Map args)

    Long count()

    void delete(Serializable id)

    Alarme save(Alarme alarme)

}