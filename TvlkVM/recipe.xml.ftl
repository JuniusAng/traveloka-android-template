<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/CustomViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${vmClass}.java" />
</recipe>
