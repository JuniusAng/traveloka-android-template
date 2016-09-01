<?xml version="1.0"?>
<globals>
    <global id="manifestOut" value="${manifestDir}" />
    <global id="appCompat" type="boolean" value="${(minApiLevel lt 14)?string}" />
    <!-- e.g. getSupportActionBar vs. getActionBar -->
    <global id="Support" value="${(minApiLevel lt 14)?string('Support','')}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packName)}" />
    <global id="resOut" value="${resDir}" />
    <!-- <global id="menuName" value="${classToResource(activityClass)}" /> -->
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packName}</#if>" />

    <global id="missionTeam" value="${missionTeam}"/>
    <global id="packName" value="${packName}"/>
    <global id="featureType" value="${featureType}"/>
    <global id="featureName" value="${featureName}"/>
</globals>
