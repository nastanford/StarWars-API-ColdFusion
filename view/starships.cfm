Starships

<cfhttp url="https://swapi.dev/api/starships/" result="myData">
<cfset record=deserializeJSON(myData.FileContent)>

<cfoutput>
  #record.count# <br>  
</cfoutput>
<cfdump  var="#record#">
