<cfparam name="URL.output" default="extjs">

<cfscript>
 testSuite = createObject("component","mxunit.framework.TestSuite").TestSuite();
 testSuite.addAll("tests.CommitsTest");
 results = testSuite.run();
</cfscript>

<cfinclude template="_suiteoutput.cfm" />