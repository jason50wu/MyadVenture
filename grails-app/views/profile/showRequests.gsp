  
<script type="text/javascript">
$(document).ready(function () {
 
});
</script>

<g:if test="${flash.message}">
  <div class="message" role="status">${flash.message}</div>
</g:if>

<div id="request-table">
  <table class="table table-hover">
    <tbody>
      <tr>
        <td><img src="..." class="img-rounded"></td>
        <td>Mark Otto</td>
        <td>
          <button class="btn btn-mini btn-primary" type="button">Accept</button>
          <button class="btn btn-mini btn-danger" type="button">Decline</button>
        </td>
      </tr>
      <tr>
        <td><img src="..." class="img-rounded"></td>
        <td>Jacob Thornton</td>
        <td>
          <button class="btn btn-mini btn-primary" type="button">Accept</button>
          <button class="btn btn-mini btn-danger" type="button">Decline</button>
        </td>
      </tr>
      <tr>
        <td><img src="..." class="img-rounded"></td>
        <td>Larry the Bird</td>
        <td>
          <button class="btn btn-mini btn-primary" type="button">Accept</button>
          <button class="btn btn-mini btn-danger" type="button">Decline</button>
        </td>
      </tr>
    </tbody>
  </table>
</div>