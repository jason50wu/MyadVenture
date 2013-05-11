<html>
  <head>
    <meta name="layout" content="main">
    <title>Connections</title>
  </head>
  <body>
    <div>
      <div class="message" name="message" id="message" role="status"><g:if test="${flash.message}">${flash.message}</g:if></div>
      <table id="connectionsTable" class="table">
        <thead>
          <tr>
            <th>Name</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Jason Wu</td>
            <td>jason</td>
          </tr>
          <tr>
            <td>house</td>
            <td>pen</td>
          </tr>
          <tr>
            <td>printer</td>
            <td>chair</td>
          </tr>
          <tr>
            <td>computer</td>
            <td>speaker</td>
          </tr>
          <tr>
            <td>me</td>
            <td>myself</td>
          </tr>
        </tbody>
      </table>  
    </div> 
  </body>
</html>

<g:javascript>
  $(document).ready(function() {
     $("#connectionsTable").dataTable({
      'iDisplayLength': 100
     });
  });
</g:javascript>