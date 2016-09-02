<?xml version="1.0"?>
<recipe>
    <#if pageType?string == 'activity'>
        <instantiate from="src/app_package/CustomActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName}Activity.java" />  
       <open file="${escapeXmlAttribute(srcOut)}/${featureName}Activity.java"/>
    <#elseif pageType?string == 'dialog'>

    <#elseif pageType?string == 'view'>
    <#elseif pageType?string == 'movethis'>
    	<instantiate from="src/app_package/CustomViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />

        <open file="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />  

    	<instantiate from="src/app_package/CustomPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pClass}.java" />
   		 <#if isExtract>
		<instantiate from="src/app_package/CustomInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${iClass}.java" />
	</#if>
    </#if>
    
</recipe>
