<?xml version="1.0"?>
<recipe folder="root://traveloka-project/TvlkPresenter">
    <instantiate from="src/app_package/CustomPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pClass}Presenter.java" />
    <#if isExtract>
		<instantiate from="src/app_package/CustomInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${iClass}.java" />
	</#if>
</recipe>
