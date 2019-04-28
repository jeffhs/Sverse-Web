events: [
<g:each in="eventos" var="evento" status="i">
    {
    <g:if test="" >
    title: 'All Day Event',
    start: '2019-01-01'
</g:if>

<g:if test="" >
    title: 'Long Event',
    start: '2019-01-07',
    end: '2019-01-10'
</g:if>

<g:if test="" >
    groupId: 999,
    title: 'Repeating Event',
    start: '2019-01-09T16:00:00'
</g:if>

<g:if test="" >
    title: 'Click for Google',
    url: 'http://google.com/',
    start: '2019-01-28'
</g:if>
<g:if test="${i != eventos.size()}">
    ,
    </g:if>
}
</g:each>
]