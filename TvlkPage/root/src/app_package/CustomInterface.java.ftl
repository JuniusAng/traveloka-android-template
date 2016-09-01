package ${packageName};

public interface ${iClass}{
    //presenter method
    <#assign methodList=iMethod?split(";")/>

    <#list methodList as attr>
        ${attr?trim};
    </#list>
}
