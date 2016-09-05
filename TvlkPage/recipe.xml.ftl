<?xml version="1.0"?>
<recipe>
    <#if pageType?string == 'activity'>
        <instantiate from="src/app_package/CustomActivity.java.ftl"
               to="${escapeXmlAttribute(srcOut)}/${featureName}Activity.java" />  
        <open file="${escapeXmlAttribute(srcOut)}/${featureName}Activity.java"/>
        <merge from="AndroidManifest.xml.ftl"
               to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

        <instantiate from="res/layout/layout_activity.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}-${missionTeam}/layout/${layoutName}.xml" />

	    <instantiate from="src/app_package/CustomViewModel.java.ftl"
		       to="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />

		<open file="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />  

		<instantiate from="src/app_package/CustomPresenter.java.ftl"
		       to="${escapeXmlAttribute(srcOut)}/${pClass}.java" />
		 <#if isExtract>
		<instantiate from="src/app_package/CustomInterface.java.ftl"
		       to="${escapeXmlAttribute(srcOut)}/${iClass}.java" />
		</#if>
    <#elseif pageType?string == 'dialog'>
		<instantiate from="src/app_package/CustomDialogFull.java.ftl"
               to="${escapeXmlAttribute(srcOut)}/${featureName}Dialog.java" />  
        <open file="${escapeXmlAttribute(srcOut)}/${featureName}Dialog.java"/>

        <instantiate from="res/layout/layout_dialog_full.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}-${missionTeam}/layout/${layoutName}.xml" />

	    <instantiate from="src/app_package/CustomViewModel.java.ftl"
		       to="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />

		<open file="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />  

		<instantiate from="src/app_package/CustomPresenter.java.ftl"
		       to="${escapeXmlAttribute(srcOut)}/${pClass}.java" />
		 <#if isExtract>
		<instantiate from="src/app_package/CustomInterface.java.ftl"
		       to="${escapeXmlAttribute(srcOut)}/${iClass}.java" />
		</#if>
    <#elseif pageType?string == 'view'>
    <#elseif pageType?string == 'movethis'>
    </#if>
    
</recipe>
