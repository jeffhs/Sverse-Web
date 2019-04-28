<div class="wrapper" style="grid-auto-rows: 300px;">
    <g:form style="width: auto; margin-left: 10px; margin-right: 10px; text-align: left;" name="FormCadastro" url="[controller:'perfil', action:'atualizarPerfil']">
        <div class="input-group form-group">
            <label>Email</label><br>
            <input style="width: 240px; margin-bottom: 6px;" type="text" name="email" class="form-control" value="${usuario.perfil.email}">
        </div>
        <div class="input-group form-group">
            <label>Trello</label><br>
            <input style="width: 240px; margin-bottom: 6px;" type="text" name="trello" class="form-control" value="${usuario.perfil.trello}">
        </div>
        <div class="input-group form-group">
            <label>Github</label><br>
            <input style="width: 240px; margin-bottom: 6px;" type="text" name="github" class="form-control" value="${usuario.perfil.github}">
        </div>
        <div class="input-group form-group">
            <label>Contato</label><br>
            <input style="width: 240px; margin-bottom: 6px;" type="text" name="contato" class="form-control" value="${usuario.perfil.contato}">
        </div>
        <div style="margin-top: 10px;" class="form-group">
            <input type="submit" value="Atualizar Perfil" class="btn float-right login_btn"/>
        </div>
    </g:form>

    <g:form style="margin-left: 10px; margin-right: 10px; text-align: left" name="FormCadastro" url="[controller:'perfil', action:'atualizarUsuario']">
        <div class="input-group form-group">
            <label>Nome</label><br>
            <input style="width: 240px; margin-bottom: 6px;" type="text" name="nome" id="Nome" class="form-control" value="${usuario.nome}">
        </div>
        <div class="input-group form-group">
            <label>Login</label><br>
            <input style="width: 240px; margin-bottom: 6px;" type="text" name="username" id="userNameCadastro" class="form-control" value="${usuario.username}">
        </div>
        <div class="input-group form-group">
            <label>Senha</label><br>
            <input style="width: 240px; margin-bottom: 6px;" type="password" name="password" id="passwordCadastro" class="form-control" value="${usuario.password}">
        </div>
        <div style="margin-top: 10px;" class="form-group">
            <input type="submit" value="Atualizar Usuário" class="btn float-right login_btn"/>
        </div>
    </g:form>
</div>