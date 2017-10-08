<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'media.label', default: 'Media')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-media" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-media" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                <tr>
                    <th>Nom</th>
                    <th>Image</th>
                    <th>Date d'upload</th>

                </tr>
                </thead>
                <tbody>
                <g:each in="${mediaInstanceList}" var="MyMedia">
                    <tr>
                        <td><a href="/Media/show/${MyMedia.id}">${MyMedia.fileName}</a></td>
                        <td><img src="${createLink(controller: 'Media', action: 'DisplayImage', params: ['id': MyMedia.id])}"/></td>
                        <td><a href="/Media/show/${MyMedia.id}">${MyMedia.uploadDate}</a></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${mediaCount ?: 0}" />
            </div>
        </div>
    </body>
</html>