<style>
.contentNavGlobal {
    border-radius: 0;
    background: #00b961;
}

.btn-group button {
    background-color: #4CAF50; /* Green background */
    border: 1px solid green; /* Green border */
    color: white; /* White text */
    padding: 10px 24px; /* Some padding */
    cursor: pointer; /* Pointer/hand icon */
    float: left; /* Float the buttons side by side */
}

.btn-group button:not(:last-child) {
    border-right: none; /* Prevent double borders */
}

/* Clear floats (clearfix hack) */
.btn-group:after {
    content: "";
    clear: both;
    display: table;
}

/* Add a background color on hover */
.btn-group button:hover {
    background-color: #3e8e41;
}

/* Style The Dropdown Button */
.dropbtn {
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    width: 100px;
    position: relative;
    border-radius: 0 0 0 14px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    background-color: white;
    margin-top: 3px;
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a{
    color: black;
    height: 40px;
    text-align: center;
    text-decoration: none;
    padding: 0 32px 0 32px;
    display: block;
    transition: font-weight 0s, color 400ms;
}

.dropdown-content a:hover {
    font-weight: bold;
    color: #00b961;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content{
    display: block;
}
</style>

<nav class="global-nav">
    <ul class="home-section-nav content">
        <li class="nav-item">
            <a class="amino-logo" href="/usuario/muralAcademico" data-refer-type="site_navbar_amino_logo">
                <asset:image class="logo" style="height: 40px" src="logoweb.png"/>
            </a>
        </li>
        <li class="nav-item">
            <a style="margin-top: 6px; margin-right: 270px;" class="home-nav-home community-color" href="/usuario/muralAcademico"
               data-refer-type="community_nav_home"><i class="amino-icon amino-icon-home"></i></a>
        </li>
        <li class="nav-item nav-user dropdown">
            <a class="nav-link block dropbtn">
                <img class="user-icon"
                     src="https://randomuser.me/api/portraits/lego/${usuario.perfil.imgPerfil}.jpg"
                     alt="Oseias Pereira">
            </a>
            <div class="dropdown-content">
                <a href="#" onclick="window.location.href = '/perfil'">Perfil</a>
                <a href="#" onclick="window.location.href = '/logoff'">Sair</a>
            </div>
        </li>
    </ul>
</nav>