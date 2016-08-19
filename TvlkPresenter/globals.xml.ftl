<?xml version="1.0"?>
<globals>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="pClass" value="${camelCaseToUnderscore(pClass)}" />
    <global id="vm" value="${camelCaseToUnderscore(vm)}" />
    <global id="isExtract" type="boolean" value="${iExtract?string}"/>
    <global id="iMethod" value="${iMethod}"/>
    <global id="iClass" value="${iClass}"/>
    <global id="pBase" value="${camelCaseToUnderscore(pBase)}" />
</globals>
