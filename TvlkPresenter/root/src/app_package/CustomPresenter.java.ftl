package ${packageName};

import android.databinding.Bindable;
import org.greenfroyo.androidmvp_bind.app._core.BaseViewModel;


public class ${vmClass} extends ${pBase}<${vm}>{

    @Override
    public void onCreate(Bundle presenterState) {
        super.onCreate(presenterState);
        mUserProvider = new UserProvider(App.context());
    }

    @Override
    public ${vm} onInitViewModel() {
        return new ${vm}();
    }

    //presenter method
}
