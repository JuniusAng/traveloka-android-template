package ${packNameNew};
import android.os.Bundle;
import android.view.View;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
/**
 * Created by template generator on ${DATE}.
 */
 public class ${pageName?cap_first}Activity extends BaseActivity<${pClass}, ${vmClass}> implements View.OnClickListener{
    private ${bindingName} mBinding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }
    <#if isOverrideDelegate>

        @Override
        protected void initDelegate(){
            //vToolbar delegate, try different builder for more complete implementation or leave as default
            //you can use setTitle from this delegate (also get vToolbar)
        <#if coreToolbar == 'use'>
            mCoreAppBarDelegate = CoreAppBarDelegate.createDefaultImpl(mCoreDelegateDependency, false);
        <#elseif coreToolbar == 'nouse'>
            mCoreAppBarDelegate = CoreAppBarDelegate.createNoToolbarImpl(mCoreDelegateDependency);
        <#elseif coreToolbar == 'collapsing'>
            mCoreAppBarDelegate = CoreAppBarDelegate.createDefaultImpl(mCoreDelegateDependency, true);
        </#if>
        
        <#if coreFAB != 'nouse'>
            //FAB delegate, try different builder for more complete implementation or leave as default
        </#if>
        <#if coreFAB == 'use'>
            mCoreFABDelegate = CoreFABDelegate.createDefaultImpl(mCoreDelegateDependency);
        <#elseif coreFAB == 'nouse'>
            //initialize coreFABDelegate here if needed
        <#elseif coreFAB == 'appbar'>
            mCoreFABDelegate = CoreFABDelegate.createAnchorAppBarFABImpl(mCoreDelegateDependency, -1);
        </#if>

        <#if coreTab == 'use'>
            //FAB delegate, try different builder for more complete implementation or leave as default
            mCoreTabDelegate = CoreTabDelegate.createDefaultImpl(mCoreDelegateDependency);
            //don't forget to set the viewpager with mCoreTabDelegate.setViewPager(ViewPager viewpager)
        <#elseif coreTab == 'nouse'>
            //initialize CoreTabDelegate here if needed
        </#if>
        }
    <#else>

        @Override
        protected void initDelegate(){
            //Appbar delegate, try different builder for more complete implementation or leave as default
            //you can use setTitle from this delegate (also get vToolbar)
            mCoreAppBarDelegate = CoreAppBarDelegate.createDefaultImpl(mCoreDelegateDependency, false);
        }
    </#if>

    @Override
    public void createPresenter(){
        return new ${pClass}();
    }

    @Override
    protected ViewDataBinding onInitView(${vmClass} viewModel) {
        mBinding = addBoundedView(R.layout.${layoutName});
        mBinding.setViewModel(viewModel);
        //don't forget to add onclick listener from binder
        //ex : mBinding.btnSend.setOnClickListener(this);
        return mBinding;
    }

    @Override
    public void onClick(View v) {

    }
}
