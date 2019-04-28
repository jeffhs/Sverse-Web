package sverseweb

import java.time.DayOfWeek
import java.time.format.TextStyle

class Estudo {
    String nome
    String tipo
    String imgItem
    Integer nPomodoros
    Integer intervalo
    DayOfWeek dia
    Integer hora
    Integer minuto
    Integer idDinamico

    static constraints = {
        nome(nullable: false, blank: false, maxSize: 100, unique:false)
        tipo(nullable: false, blank: false, maxoSize: 100, unique:false)
        imgItem(nullable: false, blank: false, maxSize: 100, unique:false)
        nPomodoros(nullable: false, blank: false, maxSize: 100, unique:false)
        intervalo(nullable: false, blank: false, maxSize: 100, unique:false)
        dia(nullable: false, blank: false, maxSize: 100, unique:false)
        hora(nullable: false, blank: false, maxSize: 100, unique:false, size: 1..12)
        minuto(nullable: false, blank: false, maxSize: 100, unique:false, size: 1..59)
        idDinamico(nullable: false, blank: false, maxSize: 100, unique:false)
    }
}
