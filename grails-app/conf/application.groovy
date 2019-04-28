

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'seguranca.Usuario'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'seguranca.UsuarioPermissao'
grails.plugin.springsecurity.authority.className = 'seguranca.Permissao'

grails.plugin.springsecurity.auth.loginFormUrl = '/isolamento/login'
grails.plugin.springsecurity.logout.afterLogoutUrl = '/isolamento/logout'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/usuario/muralAcademico'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl = '/isolamento/error'
grails.plugin.springsecurity.successHandler.alwaysUseDefault = false
grails.plugin.springsecurity.dao.hideUserNotFoundExceptions = false
grails.plugin.springsecurity.adh.errorPage="/j_spring_security_logout"

grails.plugin.springsecurity.securityConfigType = "InterceptUrlMap"

grails.plugin.springsecurity.interceptUrlMap = [
        [pattern: '/isolamento/**/', access: ['IS_AUTHENTICATED_ANONYMOUSLY']],
		[pattern: '/**', access: ['ROLE_ADMIN']]
]

grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

