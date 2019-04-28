<section class="main-page content user-normal">
    <article class="post main-post user-profile-page">
        <g:if test="${usuario != null}">
            <g:each in="${usuario.posts}" var="post">
                ${post.dataDePublicacao}
            </g:each>
        </g:if><g:else>
        <h4 style="padding: 10px">${usuario.nome}, seja bem vindo ao Sverse Web</h4>
        <h6 style="padding: 10px">Atualmente você não tem nenhum post.</h6>
    </g:else>

    </article>
</section>