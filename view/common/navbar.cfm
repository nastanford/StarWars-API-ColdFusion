
<cfoutput>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary"">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="/StarWars-API-ColdFusion/">Star Wars API ColdFusion</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a href="/StarWars-API-ColdFusion/" role="button">    
            <button type="button" class="btn btn btn-primary position-relative">
              <i class="fa-duotone fa-house-chimney"></i> Home
              <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"></span>
            </button></a>
          <cfloop list="#request.swlist#" index="name">
            <a href="index.cfm?sw=#name#" role="button">    
            <button type="button" class="btn btn btn-primary position-relative">
              <i class="fa-duotone fa-house-chimney"></i> #reReplace(name,"(^[a-z]|\s+[a-z])","\U\1","ALL")#
              <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"></span>
            </button></a>
          </cfloop>
        </li>   
      </ul>
    </div>
  </div>
</nav>
</cfoutput>
