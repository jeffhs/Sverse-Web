<section style="height: auto; text-align: left; background-color: #90efa2" class="sidebar-card community-info sidebar-section user-canopy user-loggedin compose-enabled">
    <div style="padding: 20px;">
        <h4 style="color: black" class="user-name-truncate">Email: </h4><br>
        <span onclick="window.location = 'https://mail.google.com/mail/u/0/#inbox'" class="button">${usuario.perfil.email}</span><br><br>
        <h4 style="color: black" class="user-name-truncate">Trello: </h4><br>
        <span onclick="window.location = 'https://trello.com/${usuario.perfil.trello}'" class="button">${usuario.perfil.trello}</span><br><br>
        <h4 style="color: black" class="user-name-truncate">Github: </h4><br>
        <span onclick="window.location = 'https://github.com/${usuario.perfil.github}'" class="button">${usuario.perfil.github}</span><br><br>
        <h4 style="color: black" class="user-name-truncate">Contato: </h4><br>
        <span class="button">${usuario.perfil.contato}</span>
    </div>
</section>