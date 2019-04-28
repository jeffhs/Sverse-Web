package sverseweb

import grails.gorm.services.Service

@Service(BoletimDeEtapas)
interface BoletimDeEtapasService {

    BoletimDeEtapas get(Serializable id)

    List<BoletimDeEtapas> list(Map args)

    Long count()

    void delete(Serializable id)

    BoletimDeEtapas save(BoletimDeEtapas boletimDeEtapas)

}