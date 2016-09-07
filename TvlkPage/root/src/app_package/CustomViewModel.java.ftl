package ${packNameNew};

import android.databinding.Bindable;
import org.greenfroyo.androidmvp_bind.app._core.BaseViewModel;
<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.BR;
</#if>

 /**
 * Created by template generator on ${DATE}.
 */
public class ${vmClass} extends BaseViewModel{
    <#assign bindAttr=vmBindableAttr?split(";")/>
    <#assign nonBindAttr=vmNonBindableAttr?split(";")/>
    
    <#list bindAttr as attr>
        protected ${attr?trim};
    </#list>

    <#list nonBindAttr as attr>
        protected ${attr?trim};
    </#list>

    public void copyFrom(${vmClass} objectToCopy){
        <#list bindAttr as attr>
            <#assign attrTrimmed=attr?trim/>
            <#assign attrBlankIndex=attrTrimmed?index_of(' ')/>
            <#assign attrType=attrTrimmed?substring(0, attrBlankIndex)/>
            <#assign attrName=attrTrimmed?substring(attrBlankIndex+1, attrTrimmed?length)/>
            <#assign attrNameCaps=attrName?cap_first/>
            this.${attrName} = objectToCopy.get${attrNameCaps}();
        </#list>
        <#list nonBindAttr as attr>
            <#assign attrTrimmed=attr?trim/>
            <#assign attrBlankIndex=attrTrimmed?index_of(' ')/>
            <#assign attrType=attrTrimmed?substring(0, attrBlankIndex)/>
            <#assign attrName=attrTrimmed?substring(attrBlankIndex+1, attrTrimmed?length)/>
            <#assign attrNameCaps=attrName?cap_first/>
            this.${attrName} = objectToCopy.get${attrNameCaps}();
        </#list>
    }
    //setter-getter
    <#list bindAttr as attr>
        <#assign attrTrimmed=attr?trim/>
        <#assign attrBlankIndex=attrTrimmed?index_of(' ')/>
        <#assign attrType=attrTrimmed?substring(0, attrBlankIndex)/>
        <#assign attrName=attrTrimmed?substring(attrBlankIndex+1, attrTrimmed?length)/>
        <#assign attrNameCaps=attrName?cap_first/>
        public void set${attrNameCaps}(${attrType} ${attrName}){
            this.${attrName} = ${attrName};
            notifyPropertyChanged(BR.${attrName});
        }

        @Bindable
        public ${attrType} get${attrNameCaps}(){
            return ${attrName};
        }

    </#list>
    <#list nonBindAttr as attr>
        <#assign attrTrimmed=attr?trim/>
        <#assign attrBlankIndex=attrTrimmed?index_of(' ')/>
        <#assign attrType=attrTrimmed?substring(0, attrBlankIndex)/>
        <#assign attrName=attrTrimmed?substring(attrBlankIndex+1, attrTrimmed?length)/>
        <#assign attrNameCaps=attrName?cap_first/>
        public void set${attrNameCaps}(${attrType} ${attrName}){
            this.${attrName} = ${attrName};
        }

        public ${attrType} get${attrNameCaps}(){
            return ${attrName};
        }

    </#list>
}
