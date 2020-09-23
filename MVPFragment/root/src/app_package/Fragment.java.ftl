package ${packageName}.${fragmentPackage};

import ${superClassFqcn};
import android.os.Bundle;
import androidx.annotation.Nullable;
import ${packageName}.ui.base.BaseFragmentX;
import ${packageName}.${presenterPackage}.${presenterClass};
import ${packageName}.${viewPackage}.${viewClass};

/**
 * package: ${packageName}.${fragmentPackage}.${fragmentClass}
 * author: gyc
 * description: 
 * time: create at ${.now?date} ${.now?time}
 */
@CreatePresenter(${presenterClass}.class)
public class ${fragmentClass} extends BaseFragmentX<${presenterClass}> implements ${viewClass} {

    public static ${fragmentClass} newInstance() {
        Bundle args = new Bundle();
        ${fragmentClass} fragment = new ${fragmentClass}();
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    protected View bindLayout(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        mRootView = inflater.inflate(R.layout.${fragmentLayout}, container, false);
        return mRootView;
    }

    @Override
    protected void initView() {

    }

    @Override
    protected void initData() {

    }
}
