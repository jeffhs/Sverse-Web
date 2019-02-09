<nav class="global-nav ">
    <ul class="home-section-nav content">
        <li class="nav-item">
            <a class="amino-logo" href="/" data-refer-type="site_navbar_amino_logo">
                <asset:image class="logo" style="height: 40px" src="logoweb.png"/>
            </a>
        </li>
        <li class="nav-item">
            <a style="margin-top: 6px; margin-right: 270px;" class="home-nav-home community-color" href="/" data-refer-type="community_nav_home"><i class="amino-icon amino-icon-home"></i></a>
        </li>
        <li class="nav-item nav-download">
            <a class="btn btn-download community-color" href="/"
               data-event-category="NavBar Get App">Baixe o App</a>
        </li>
        <li class="nav-item nav-user">
            <a class="nav-link block" onclick="alternarMenuConta()">
                <img class="user-icon" src="//pm1.narvii.com/7096/00a1604abd6c36e13e1913ab8a7b3e12779f6980r1-96-96v2_68.jpg" alt="Oseias Pereira">
            </a>
        </li>
    </ul>

    <div id="menuOption" class="btn-group" style="display: none; position: fixed; width: 180px; margin-left: 50%; margin-top: 0;">
        <button onclick="window.location.href = '/perfil'"
                style="font-size: 8pt; width: 50%; padding: 4px; border-bottom-left-radius: 10px; border-top-left-radius: 10px;">Perfil</button>
        <button onclick="window.location.href = '/isolamento/logout'"
                style="font-size: 8pt; width: 50%; padding: 4px; border-bottom-right-radius: 10px; border-top-right-radius: 10px;">Sair</button>
    </div>

    <script>
        function alternarMenuConta() {
            var div = document.getElementById("menuOption");
            if(div.style.display == "none"){
                div.style.display = "block"
            } else{
                div.style.display = "none";
            }

        }
    </script>
</nav>