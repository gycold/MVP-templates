package ${packageName}.${activityPackage};

import ${superClassFqcn};
import android.os.Bundle;
import ${packageName}.ui.base.BaseActivity;
import ${packageName}.${presenterPackage}.${presenterClass};
import ${packageName}.${viewPackage}.${viewClass};

/**
 * package: ${packageName}.${activityPackage}.${activityClass}
 * author: gyc
 * description: 
 * time: create at ${.now?date} ${.now?time}
 */
@CreatePresenter(${presenterClass}.class)
public class ${activityClass} extends BaseActivity<${presenterClass}> implements ${viewClass} {

    @Override
    protected void setUpContentView(Bundle savedInstanceState) {
    setContentView(R.layout.${activityLayout});
    }

    @Override
    protected void setUpView() {
    }

    @Override
    protected void setUpData() {
    }
}
