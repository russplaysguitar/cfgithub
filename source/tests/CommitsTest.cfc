<!--- 
 CommitsTest.cfc
 @author johncblandii and russplaysguitar
 @description Tests commit GitHub calls
 --->
<cfcomponent extends="tests.TestCore">
	<cfset this.testCFC = "githubcommits" />
	
	<cffunction name="listCommitsOnBranch" access="public" returntype="void">
		<cfset var result = this.github.listCommitsOnBranch('master') />
		<cfset debug(result) />
		<cfset assertTrue(isStruct(result)) />
	</cffunction>
	
	<cffunction name="getCommit" access="public" returntype="void" hint="This fails unless you pass a valid commit id">
		<cfset var result = this.github.getCommit('dc5c9ac886160ff010e7') />
		<cfset debug(result) />
		<cfset assertTrue(isStruct(result)) />
	</cffunction>
</cfcomponent>