package seguranca

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic
import sverseweb.BoletimDeEstudo
import sverseweb.BoletimDeEtapas
import sverseweb.BoletimDeObjetivos
import sverseweb.CicloDeEstudo
import sverseweb.Container
import sverseweb.Envio
import sverseweb.Estudo
import sverseweb.Lixeira
import sverseweb.Nota
import sverseweb.Perfil
import sverseweb.Post
import sverseweb.Solicitacao
import sverseweb.TrabalhoEmGrupo

@GrailsCompileStatic
@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class Usuario implements Serializable {

    private static final long serialVersionUID = 1

    String nome
    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    String sexo;
    String tipo
    Integer nNotificacoes
    Lixeira lixeira

    static hasOne = [perfil: Perfil]

    Set<Permissao> getAuthorities() {
        (UsuarioPermissao.findAllByUsuario(this) as List<UsuarioPermissao>)*.permissao as Set<Permissao>
    }

    static hasMany = [boletinsDeEstudo     : BoletimDeEstudo,
                      boletinsDeEtapas     : BoletimDeEtapas,
                      boletinsDeObjetivo   : BoletimDeObjetivos,
                      notas                : Nota,
                      containers           : Container,
                      containersAdmin      : Container,
                      ciclosDeEstudo       : CicloDeEstudo,
                      envios               : Envio,
                      recibos              : Envio,
                      trabalhosEmGrupo     : TrabalhoEmGrupo,
                      amigos               : Usuario,
                      solicitacoesEnviadas : Solicitacao,
                      solicitacoesRecebidas: Solicitacao,
                      estudos              : Estudo]

    static constraints = {
        username nullable: false, minSize: 8, blank: false, unique: true
        password nullable: false, minSize: 8, blank: false, password: true
        nome(nullable: false, blank: false, size: 3..44, unique: false)
        tipo(nullable: false, blank: false, unique: false, inList: ["Aluno", "Professor", "Administrador"])
        sexo(nullable: true, blank: true, unique: false, inList: ["Masculino", "Feminino"])
        nNotificacoes(nullable: false, blank: false, maxSize: 100, unique: false)
        lixeira(nullable: true, unique: true)
    }

    static mapping = {
        password column: '`password`'
    }
}
