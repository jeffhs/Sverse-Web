<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="layout-secundario" />
        <g:set var="entityName" value="${message(code: 'container.label', default: 'Container')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

        <link href=${resource(dir: 'css', file: 'sidebar.css')} rel="stylesheet">
        <link href=${resource(dir: 'css', file: 'pagina-modelo.css')} rel="stylesheet">

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.min.css')}" type="text/css">
        <asset:javascript src="fullcalendar.min.js"/>

        <script>

            document.addEventListener('DOMContentLoaded', function() {
                var calendarEl = document.getElementById('calendar');

                var calendar = new FullCalendar.Calendar(calendarEl, {
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay,listWeek'
                    },
                    defaultDate: '2019-01-12',
                    navLinks: true, // can click day/week names to navigate views
                    editable: true,
                    eventLimit: true, // allow "more" link when too many events
                    events: [
                        {
                            groupId: 999,
                            title: 'All Day Event 1',
                            start: '2019-01-09',
                            end: '2019-01-10',
                            url: 'http://google.com/'
                        },
                        {
                            groupId: 999,
                            title: 'All Day Event 2',
                            start: '2019-01-01',
                            end: '2019-01-10',
                            url: 'http://google.com/'
                        },
                        {
                            groupId: 999,
                            title: 'All Day Event 3',
                            start: '2019-01-01',
                            end: '2019-01-10',
                            url: 'http://google.com/'
                        },
                        {
                            groupId: 999,
                            title: 'All Day Event 4',
                            start: '2019-01-01',
                            end: '2019-01-10',
                            url: 'http://google.com/'
                        },
                        {
                            groupId: 999,
                            title: 'All Day Event 5',
                            start: '2019-01-01',
                            end: '2019-01-10',
                            url: 'http://google.com/'
                        }
                    ]
                });

                calendar.render();
            });

        </script>

        <style>

        body {
            margin: 40px 10px;
            padding: 0;
            font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
            font-size: 14px;
        }

        #calendar {
            max-width: 900px;
            margin: 0 auto;
        }

        </style>
    </head>
    <body>

    <div class="container">
        <div class="columns">
            <div class="col-3" style="border-style: solid; border: 1px">
                <g:render template="../templates/_sidebar"/>
            </div>

            <div class="col-9">
                <div class="mdiv" style="background-color: rgba(0, 0, 0, 0.4);">
                    <div class="modeloheader">
                        <h6>Calendário Academico </h6>
                    </div>

                    <div class="conteudo">
                        <g:render template="calendario" model="usuario:usuario"></g:render>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>