package sverseweb

import seguranca.Usuario

class BoletimDeEstudo {
    Integer desempenho

    static belongsTo = [usuario : Usuario]
    static hasOne = [topico : TopicoDeEstudo]
}
