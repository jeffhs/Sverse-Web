package sverseweb

import grails.gorm.services.Service

@Service(BoletimDeObjetivos)
interface BoletimDeObjetivosService {

    BoletimDeObjetivos get(Serializable id)

    List<BoletimDeObjetivos> list(Map args)

    Long count()

    void delete(Serializable id)

    BoletimDeObjetivos save(BoletimDeObjetivos boletimDeObjetivos)

}