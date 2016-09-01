<?xml version="1.0"?>
<globals>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="pClass" value="${camelCaseToUnderscore(pClass)}" />
    <global id="vmClass" value="${camelCaseToUnderscore(vmClass)}" />
    <global id="isExtract" type="boolean" value="${iExtract?string}"/>
    <global id="pBase" value="BasePresenter" />
</globals>
