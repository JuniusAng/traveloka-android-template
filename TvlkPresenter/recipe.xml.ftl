<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/CustomPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pClass}Presenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${pClass}.java" />

    <#if isExtract>
		<instantiate from="src/app_package/CustomInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${iClass}.java" />

    	<open file="${escapeXmlAttribute(srcOut)}/${iClass}.java" />    	
	</#if>
</recipe>
