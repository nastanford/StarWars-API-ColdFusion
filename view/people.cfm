the people

<cfhttp url="https://swapi.dev/api/people/" result="myData">
<cfset record=deserializeJSON(myData.FileContent)>
<cfoutput>
  #record.count# <br>  
</cfoutput>
<cfdump  var="#record#">
