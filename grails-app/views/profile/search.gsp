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
	<table id="searchTableId"class="table">
	  <thead>
	    <tr>
	      <th> Name </th>
	      <th> Skill </th>
	      <th> Proficiency </th>
	    </tr>
	  </thead>
	    
	  <tbody>
        <g:each in="${searchResults}" status="i" var="entry">
	  <tr class="${(i % 2) == 0 ? 'oddRow' : 'evenRow'}">
	    <td>
	      <g:link action="page" controller="Profile"
          id="${entry.profileId}">
	      <h3>
	  <g:if test="${profileInstance?.hasAvatar}">
	  <img src="${resource(dir: 'uploads', file:
         "${entry.handle}.jpg")}" class="img-polaroid thumbnail" width="80px" height="80px"/>
              </g:if>
              <g:else>
	  <img src="${resource(dir: 'uploads', file:
          'no-pic-avatar.jpg')}" class="img-polaroid thumbnail" width="80px" height="80px"/>
              </g:else>
	      ${entry.profile.firstName} ${entry.profile.lastName}
	      </h3>
	    </td>
	   <td>
	     ${entry.name}
	   </td>
	   <td>
	     ${entry.proficiency} 
	   </td>
	  </tr>
	   </g:link>
        </div>
	
        </g:each>
	</tbody>
	</table>
    </div>
    <div class="paginateButtons">
      <g:paginate total="${resultCount}" params="${flash}"/>
    </div>
  </body>
</html>

<g:javascript>
  $(document).ready(function() {
     $("#searchTableId").dataTable({
      'iDisplayLength': 100
     });
  });
</g:javascript>