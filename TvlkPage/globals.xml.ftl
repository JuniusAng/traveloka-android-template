<?xml version="1.0"?>
<globals>
    <!-- e.g. getSupportActionBar vs. getActionBar -->
    <#assign aDateTime = .now>
	<#assign aDate = aDateTime?date>
	<global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
	<global id="DATE" value="${aDate?string["MM/dd/yyyy"]}"/>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packName)}" />
    <global id="featureName" value="${nameFeature?cap_first}"/>
    <global id="pClass" value="${camelCaseToUnderscore(pClass)}" />
    <global id="vmClass" value="${camelCaseToUnderscore(vmClass)}" />
    <global id="isExtract" type="boolean" value="${iExtract?string}"/>
    <global id="isOverrideDelegate" type="boolean" value="${coreComponent?string}"/>
    <global id="pBase" value="BasePresenter" />
    <global id="layoutName" value="${pageType?string}_${missionTeam}_${camelCaseToUnderscore(nameFeature)}_${camelCaseToUnderscore(pageName)}"/>
    <global id="bindingName" value="${pageType?string?cap_first}${missionTeam?cap_first}${nameFeature?cap_first}${pageName}Binding"/>
</globals>
