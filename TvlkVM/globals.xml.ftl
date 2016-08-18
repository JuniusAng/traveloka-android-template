<?xml version="1.0"?>
<globals>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="view_class" value="${camelCaseToUnderscore(vmClass)}" />
    <global id="attr_bindable" value="${camelCaseToUnderscore(vmBindableAttr)}" />
    <global id="attr_non_bindable" value="${camelCaseToUnderscore(vmNonBindableAttr)}" />
</globals>
