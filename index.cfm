<cfsetting showDebugOutput=false>

<!---   This is the home page  --->
<cfset request.PageName="Home">
<cfinclude template="view/common/header.cfm">
<cfinclude template="view/common/navbar.cfm">

<cfif StructKeyExists(url, "sw")>
  <cfif ListContains(request.swlist,url.sw)>
    <cfinclude template="view/#url.sw#.cfm">
  </cfif>
<cfelse>
  Home Page  
</cfif>


<cfinclude template="view/common/footer.cfm">


