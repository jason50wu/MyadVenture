  
<script type="text/javascript">
$(document).ready(function () {
 
});
</script>

<g:if test="${flash.message}">
  <div class="message" role="status">${flash.message}</div>
</g:if>

<div id="request-table">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Mark</td>
        <td>Otto</td>
        <td>
          <button class="btn btn-mini btn-primary" type="button">Accept</button>
          <button class="btn btn-mini btn-danger" type="button">Decline</button>
        </td>
      </tr>
      <tr>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>
          <button class="btn btn-mini btn-primary" type="button">Accept</button>
          <button class="btn btn-mini btn-danger" type="button">Decline</button>
        </td>
      </tr>
      <tr>
        <td>Larry</td>
        <td>the Bird</td>
        <td>
          <button class="btn btn-mini btn-primary" type="button">Accept</button>
          <button class="btn btn-mini btn-danger" type="button">Decline</button>
        </td>
      </tr>
    </tbody>
  </table>
</div>