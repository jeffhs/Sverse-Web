package sverseweb

import grails.gorm.services.Service

@Service(Sala)
interface MateriaService {

    Sala get(Serializable id)

    List<Sala> list(Map args)

    Long count()

    void delete(Serializable id)

    Sala save(Sala materia)

}