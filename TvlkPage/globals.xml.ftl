<?xml version="1.0"?>
<globals>
    <!-- e.g. getSupportActionBar vs. getActionBar -->
    <#assign aDateTime = .now>
	<#assign aDate = aDateTime?date>

	<global id="DATE" value="${aDate?iso_utc}"/>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packName)}" />
    <global id="pageType" value="${pageType}"/>
    <global id="pageName" value="${pageName}"/> 
    <global id="featureName" value="${nameFeature?cap_first}"/>
    <global id="pClass" value="${camelCaseToUnderscore(pClass)}" />
    <global id="vmClass" value="${camelCaseToUnderscore(vmClass)}" />
    <global id="isExtract" type="boolean" value="${iExtract?string}"/>
    <global id="isOverrideDelegate" type="boolean" value="${coreComponent?string}"/>
    <global id="pBase" value="BasePresenter" />
</globals>
