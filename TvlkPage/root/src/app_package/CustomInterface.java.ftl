package ${packNameNew};

/**
 * Created by template generator on ${DATE}.
 */
public interface ${iClass}{
    //presenter method
    <#assign methodList=iMethod?split(";")/>

    <#list methodList as attr>
        ${attr?trim};
    </#list>
}
