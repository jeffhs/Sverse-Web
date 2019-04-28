<g:if test="${posts != null && posts.size() > 0}">
    <g:each in="${posts}" var="post">
        <div style="height: 180px; box-shadow: gainsboro 1px 1px 8px; text-align: center; margin: 18px; background-color: #bee1da; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px;
        border-top-left-radius: 4px; border-top-right-radius: 4px; padding: 20px;">
            <g:if test="${post.tipo == ""}">

            </g:if><g:elseif test="">

            </g:elseif><g:elseif test="">

            </g:elseif>

            <h6>${post.dataDePublicacao}</h6>
        </div>
    </g:each>
</g:if>
<g:else>
    <h4 style="padding: 10px">${usuario?.nome}, seja bem vindo ao Sverse Web</h4>
    <h6 style="padding: 200px">Atualmente você não tem nenhum post.</h6>
</g:else>