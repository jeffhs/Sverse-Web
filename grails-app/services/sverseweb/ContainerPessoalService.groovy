package sverseweb

import grails.gorm.services.Service

@Service(ContainerPessoal)
interface ContainerPessoalService {

    ContainerPessoal get(Serializable id)

    List<ContainerPessoal> list(Map args)

    Long count()

    void delete(Serializable id)

    ContainerPessoal save(ContainerPessoal containerPessoal)

}