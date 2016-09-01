package ${packageName};

import android.os.Bundle;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
/**
 * Created by junius.ang on ${DATE}.
 */
public class ${featureName}Activity extends BaseActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    <#if isOverrideDelegate>
    @Override
    protected void initDelegate(){
        <#if coreToolbar == 'use'>
        mCoreAppBarDelegate = CoreAppBarDelegate.createDefaultImpl(mCoreDelegateDependency, false);
        <#elseif coreToolbar == 'nouse'>
        mCoreAppBarDelegate = CoreAppBarDelegate.createNoToolbarImpl(mCoreDelegateDependency);
        <#elseif coreToolbar == 'collapsing'>
        mCoreAppBarDelegate = CoreAppBarDelegate.createDefaultImpl(mCoreDelegateDependency, true);
        </#if>
    }
    </#if>
}
