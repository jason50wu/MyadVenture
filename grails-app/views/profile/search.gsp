<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
     <link rel="stylesheet" href="${resource(dir: 'css', file: 'search.css')}" type="text/css">
    <title></title>
  </head>
  <body>
    <br/> <br/> <br/> <br/>
    <g:if test="${flash.message}">
      <div class="searchMessage">${flash.message}</div>
    </g:if>

    <div class="body">
      <div class="list">
	<table>
        <g:each in="${searchResults}" status="i" var="entry">
        <div class="${(i % 2) == 0 ? 'oddRow' : 'evenRow'}">
	  <tr>
	    <td>
	      <h3>
            <g:link action="page" controller="Profile"
          id="${entry.profileId}">
	  <g:if test="${profileInstance?.hasAvatar}">
	  <img src="${resource(dir: 'uploads', file:
         "${entry.handle}.jpg")}" class="img-polaroid thumbnail" width="110px" height="110px"/>
              </g:if>
              <g:else>
	  <img src="${resource(dir: 'uploads', file:
          'no-pic-avatar.jpg')}" class="img-polaroid thumbnail" width="110px" height="110px"/>
              </g:else>
	      ${entry.profile.firstName} ${entry.profile.lastName}
	      </h3>
	    </td>
	   <td class="skillEntry">
          ${entry} </g:link>
	  </td>
	  </tr>
        </div>
	
        </g:each>
	</table>
      </div>
    </div>
    <div class="paginateButtons">
      <g:paginate total="${resultCount}" params="${flash}"/>
    </div>
  </body>
</html>