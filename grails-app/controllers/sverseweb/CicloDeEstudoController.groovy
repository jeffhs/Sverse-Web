package sverseweb

import grails.validation.ValidationException
import seguranca.Usuario

import java.time.DayOfWeek
import java.time.format.TextStyle

import static org.springframework.http.HttpStatus.*

class CicloDeEstudoController {

    CicloDeEstudoService cicloDeEstudoService
    EstudoService estudoService
    def springSecurityService
    Random random = new Random()

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def getCurrentUser(){
        Usuario usuario = springSecurityService.getCurrentUser();
        return usuario;
    }

    def index(Integer max) {
        def estudos = estudoService.list();
        estudos.removeAll(estudos);
        estudoService.list().each {
            if(it.idDinamico == getCurrentUser().id){
                estudos.add(it);
            }
        }
        estudos = ordenarEstudos(estudos)
        render(view: "index", model:[usuario: getCurrentUser(), estudos:estudos])
    }

    def newItem(){
        //criando Estudo e associando
        Estudo estudo = new Estudo()
        estudo.nome = params.nome
        estudo.tipo = params.tipo
        estudo.imgItem = random.nextInt(7).toString()
        estudo.nPomodoros = Integer.parseInt (params.nPomodoros)
        estudo.intervalo = Integer.parseInt (params.intervalo)
        estudo.dia = retornInDayOfWeek(params.dia)
        estudo.hora = Integer.parseInt(params.hora)
        estudo.minuto = Integer.parseInt(params.minuto)
        estudo.imgItem = params.imgItem + random.nextInt(1029)
        estudo.idDinamico = getCurrentUser().id
        estudoService.save(estudo)
        redirect(action: "index")
    }

    def editItem(){
        //criando Estudo e associando
        Estudo estudo = Estudo.findById(params.idEditItem)
        estudo.nome = params.nome
        estudo.tipo = params.tipo
        estudo.imgItem = random.nextInt(7).toString()
        estudo.nPomodoros = Integer.parseInt (params.nPomodoros)
        estudo.intervalo = Integer.parseInt (params.intervalo)
        estudo.dia = retornInDayOfWeek(params.dia)
        estudo.hora = Integer.parseInt(params.hora)
        estudo.minuto = Integer.parseInt(params.minuto)
        estudo.imgItem = params.imgItem + random.nextInt(1029)
        estudo.idDinamico = getCurrentUser().id
        estudoService.save(estudo)
        redirect(action: "index")
    }

    def retornInDayOfWeek(String dia){
        int nDia = 1;
        switch (dia){
                case "Domingo":
                    nDia = 7
                    break;
                case "Segunda":
                    nDia = 1
                    break;
                case "Terca":
                    nDia = 2
                    break;
                case "Quarta":
                    nDia = 3
                    break;
                case "Quinta":
                    nDia = 4
                    break;
                case "Sexta":
                    nDia = 5
                    break;
                case "Sabado":
                    nDia = 6
                    break;
        }
        return DayOfWeek.of(nDia)
    }

    def ordenarEstudos(def estudos){
        estudos.sort{it.minuto}
        estudos.sort{it.hora}
        estudos.sort{it.dia.value}
        return estudos
    }

    def edit(int id) {
        def estudos = estudoService.list();
        estudos.removeAll(estudos);
        estudoService.list().each {
            if(it.idDinamico == getCurrentUser().id){
                estudos.add(it);
            }
        }
        estudos = ordenarEstudos(estudos)
        Estudo estudoEdit = Estudo.findById(id);

        def diaDaSemana = ["Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado", "Domingo"]

        render(view: "edit", model:[usuario: getCurrentUser(), estudos:estudos, estudoEdit:estudoEdit, diaDaSemana: diaDaSemana])
    }

    def excluirItem(){
        estudoService.delete(params.idEditItem)
        redirect(action: "index")
    }
}
