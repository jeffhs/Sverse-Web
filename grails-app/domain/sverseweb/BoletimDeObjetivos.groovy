package sverseweb

import seguranca.Usuario

class BoletimDeObjetivos {
    Integer desempenho

    static belongsTo = [usuario : Usuario]

    static hasOne = [meta : Meta]

}
