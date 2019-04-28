package sverseweb

import grails.validation.ValidationException
import seguranca.Usuario

import static org.springframework.http.HttpStatus.*

class TrabalhoEmGrupoController {

    TrabalhoEmGrupoService trabalhoEmGrupoService
    UsuarioService usuarioService
    def springSecurityService;

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def getCurrentUser(){
        Usuario usuario = springSecurityService.getCurrentUser();
        return usuario;
    }

    def index() {
        Usuario user = getCurrentUser()
        def lista = trabalhoEmGrupoService.list();
        def aux = lista;
        //aux.removeAll(lista)
        for(int i = 0; i < lista.size(); i++) {
            boolean isParticipante = false;
            for(int x = 0; x < lista.get(i).getParticipantes().size(); i++){
                if(lista.get(i).getParticipantes()[x].username == user.username){
                    isParticipante=true;
                }
            }
            if(isParticipante){
                aux.add(lista.get(i))
            }
        }

        render(view: "/trabalhoEmGrupo/index", model: [usuario:getCurrentUser(), trabalhos:aux])
    }

    def edit(int id) {
        Usuario user = getCurrentUser()
        def lista = trabalhoEmGrupoService.list();
        def aux = lista;
        //aux.removeAll(lista)
        for(int i = 0; i < lista.size(); i++) {
            boolean isParticipante = false;
            for(int x = 0; x < lista.get(i).getParticipantes().size(); i++){
                if(lista.get(i).getParticipantes()[x].username == user.username){
                    isParticipante=true;
                }
            }
            if(isParticipante){
                aux.add(lista.get(i))
            }
        }
        TrabalhoEmGrupo trabalhoEdit = TrabalhoEmGrupo.findById(id)
        render(view: "/trabalhoEmGrupo/edit", model: [usuario:getCurrentUser(), trabalhos:aux, trabalhoEdit: trabalhoEdit])
    }

    def newTrabalho(){
        Usuario user = springSecurityService.getCurrentUser()
        TrabalhoEmGrupo trabalho = new TrabalhoEmGrupo()
        trabalho.nome = params.nome
        trabalho.andamento = 0
        trabalho.descricao = params.descricao
        trabalho.dataCriacao = new Date()
        trabalho.dataTermino = new Date()
        String data = params.dataTermino;
        def dataPart = data.split("-")
        trabalho.dataTermino.setYear(Integer.parseInt(dataPart[0]))
        trabalho.dataTermino.setMonth(Integer.parseInt(dataPart[1]))
        trabalho.dataTermino.setDate(Integer.parseInt(dataPart[2]))

        trabalho.addToParticipantes(user)
        user.addToTrabalhosEmGrupo(trabalho)
        trabalhoEmGrupoService.save(trabalho)
        usuarioService.save(user)
        redirect(action: "index")
    }

    def editTrabalho(){
        Usuario user = springSecurityService.getCurrentUser()
        TrabalhoEmGrupo trabalho = TrabalhoEmGrupo.findById(params.index)
        trabalho.nome = params.nome
        trabalho.andamento = 0
        trabalho.descricao = params.descricao
        trabalho.dataCriacao = new Date()
        trabalho.dataTermino = new Date()
        String data = params.dataTermino;
        def dataPart = data.split("-")
        trabalho.dataTermino.setYear(Integer.parseInt(dataPart[0]))
        trabalho.dataTermino.setMonth(Integer.parseInt(dataPart[1]))
        trabalho.dataTermino.setDate(Integer.parseInt(dataPart[2]))

        trabalho.addToParticipantes(user)
        user.addToTrabalhosEmGrupo(trabalho)
        trabalhoEmGrupoService.save(trabalho)
        usuarioService.save(user)
        redirect(action: "index")
    }

    def excluirTrabalho(){
        trabalhoEmGrupoService.delete(params.index)
        redirect(action: "index")
    }

    def area(int trabalhoId) {
        def lista = trabalhoEmGrupoService.list()
        if(lista){
            def trabalho = lista.get(trabalhoId)
            render(view: "/trabalhoEmGrupo/area", model: [usuario: getCurrentUser(),trabalho:trabalho])
        }

    }
}
