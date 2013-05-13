<div id="search">
  <g:form url='[controller: "profile", action: "search"]'
          id="searchableForm"
          name="searchableForm"
          method="get">
    <g:textField name="q" value="${params.q}" />
    
  </g:form>
</div>
