<?xml version="1.0"?>
<recipe>
    <#if pageType?string == 'activity'>
        <instantiate from="src/app_package/CustomActivity.java.ftl"
               to="${escapeXmlAttribute(srcNew)}/${featureName}Activity.java" />  
        <open file="${escapeXmlAttribute(srcNew)}/${featureName}Activity.java"/>
        <merge from="AndroidManifest.xml.ftl"
               to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

        <instantiate from="res/layout/layout_activity.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}-${missionTeam}/layout/${layoutName}.xml" />

	    <instantiate from="src/app_package/CustomViewModel.java.ftl"
		       to="${escapeXmlAttribute(srcNew)}/${vmClass}.java" />

		<open file="${escapeXmlAttribute(srcNew)}/${vmClass}.java" />  

		<instantiate from="src/app_package/CustomPresenter.java.ftl"
		       to="${escapeXmlAttribute(srcNew)}/${pClass}.java" />
		 <#if isExtract>
		<instantiate from="src/app_package/CustomInterface.java.ftl"
		       to="${escapeXmlAttribute(srcNew)}/${iClass}.java" />
		</#if>
    <#elseif pageType?string == 'dialog'>
		<instantiate from="src/app_package/CustomDialogFull.java.ftl"
               to="${escapeXmlAttribute(srcNew)}/${featureName}Dialog.java" />  
        <open file="${escapeXmlAttribute(srcNew)}/${featureName}Dialog.java"/>

        <instantiate from="res/layout/layout_dialog_full.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}-${missionTeam}/layout/${layoutName}.xml" />

	    <instantiate from="src/app_package/CustomViewModel.java.ftl"
		       to="${escapeXmlAttribute(srcNew)}/${vmClass}.java" />

		<open file="${escapeXmlAttribute(srcNew)}/${vmClass}.java" />  

		<instantiate from="src/app_package/CustomPresenter.java.ftl"
		       to="${escapeXmlAttribute(srcNew)}/${pClass}.java" />
		 <#if isExtract>
		<instantiate from="src/app_package/CustomInterface.java.ftl"
		       to="${escapeXmlAttribute(srcNew)}/${iClass}.java" />
		</#if>
    <#elseif pageType?string == 'view'>
    <#elseif pageType?string == 'movethis'>
    </#if>
    
</recipe>
