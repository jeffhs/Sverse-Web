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
                    url: '/'
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

<div class="container">
    <div id='calendar' style="background-color: white"></div>
</div>