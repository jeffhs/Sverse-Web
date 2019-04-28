<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="layout-secundario"/>
    <g:set var="entityName" value="${message(code: 'paginador.label', default: 'Paginador')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div style="width: 100vw;height: 88vh;background: #6C7A89;display: flex;flex-direction: row;justify-content: center;align-items: center">
    <div class="docs-demo columns">
        <div class="column col-12">
            <div class="accordion">
                <input id="accordion-1" type="radio" name="accordion-radio" hidden="" checked="">
                <label class="accordion-header c-hand" for="accordion-1"><i class="icon icon-link mr-1"></i><h3>Elements</h3></label>
                <div class="accordion-body">
                    <ul class="menu menu-nav">
                        <li class="menu-item"><a href="#accordions">Element 1</a></li>
                        <li class="menu-item"><a href="#accordions">Element 2</a></li>
                    </ul>
                </div>
            </div>
            <div class="accordion">
                <input id="accordion-2" type="radio" name="accordion-radio" hidden="">
                <label class="accordion-header c-hand" for="accordion-2"><i class="icon icon-bookmark mr-1"></i><h3>Layout</h3></label>
                <div class="accordion-body">
                    <ul class="menu menu-nav">
                        <li class="menu-item"><a href="#accordions">Layout 1</a></li>
                        <li class="menu-item"><a href="#accordions">Layout 2</a></li>
                    </ul>
                </div>
            </div>
            <div class="accordion">
                <input id="accordion-3" type="radio" name="accordion-radio" hidden="">
                <label class="accordion-header c-hand" for="accordion-3"><i class="icon icon-delete mr-1"></i><h3>Components</h3></label>
                <div class="accordion-body">
                    <ul class="menu menu-nav">
                        <li class="menu-item"><a href="#accordions">Component 1</a></li>
                        <li class="menu-item"><a href="#accordions">Component 2</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>