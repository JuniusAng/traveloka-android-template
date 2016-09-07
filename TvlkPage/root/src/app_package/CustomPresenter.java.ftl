package ${packNameNew};

/**
 * Created by template generator on ${DATE}.
 */
public class ${pClass} extends ${pBase}<${vmClass}> <#if isExtract>implements ${iClass}</#if>{

    @Override
    public void onCreate(Bundle presenterState) {
        super.onCreate(presenterState);
        //declare provider if needed
    }

    @Override
    public ${vmClass} onInitViewModel() {
        return new ${vmClass}();
    }

    //presenter method
    <#if (iMethod?length > 0)>
        <#assign methodList=iMethod?split(";")/>
        <#list methodList as attr>
            @Override
            public ${attr?trim}{
                <#--<#assign noReturn = attr?trim?starts_with("void")/>-->
                <#--if freemarker is updated to 2.3.23 change string('[true]', '[false]') statement to then('[true]','[false]')-->
                <#--${noReturn?string('', 'return null;')}-->
                <#if (attr?trim?starts_with("int") || attr?trim?starts_with("float") || attr?trim?starts_with("double"))>
                    return 0;
                <#elseif (attr?trim?starts_with("boolean"))>
                    return false;
                <#elseif (attr?trim?starts_with("void"))>
                    //add implementation here
                <#else>
                    return null;
                </#if>
            }
        </#list>
    </#if>
}
