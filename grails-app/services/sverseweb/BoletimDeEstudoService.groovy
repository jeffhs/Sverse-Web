package sverseweb

import grails.gorm.services.Service

@Service(BoletimDeEstudo)
interface BoletimDeEstudoService {

    BoletimDeEstudo get(Serializable id)

    List<BoletimDeEstudo> list(Map args)

    Long count()

    void delete(Serializable id)

    BoletimDeEstudo save(BoletimDeEstudo boletimDeEstudo)

}