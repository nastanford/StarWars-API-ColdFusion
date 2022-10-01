Planets
<cfhttp url="https://swapi.dev/api/planets/" result="myData">

<cfset record=deserializeJSON(myData.FileContent)>

<cfoutput>
  #record.count# <br>  
</cfoutput>
<cfdump  var="#record#">

