the films

<cfhttp url="https://swapi.dev/api/films/" result="myData">
<cfset record=deserializeJSON(myData.FileContent)>
<cfoutput>
  #record.count# <br>  
</cfoutput>
<cfdump  var="#record#">
