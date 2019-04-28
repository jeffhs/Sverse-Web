package sverseweb

import grails.gorm.services.Service

@Service(Envio)
interface EnvioService {

    Envio get(Serializable id)

    List<Envio> list(Map args)

    Long count()

    void delete(Serializable id)

    Envio save(Envio envio)

}