<cfcomponent rest="true" restpath="/projects">

<cffunction name="tasks" access="remote" returntype="any" 
  restpath="tasks" httpmethod="get">

  <cfargument name="id" type="any" required="false" default="1" restargsource="path">

  <cfquery name="tasks" datasource="projects">
      select id, name, title
      from tasks
      where id = #id#
  </cfquery>

  <cfreturn tasks>

</cffunction>

</cfcomponent>