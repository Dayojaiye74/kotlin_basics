package com.dev_app.aboutme.databinding;
import com.dev_app.aboutme.R;
import com.dev_app.aboutme.BR;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import android.view.View;
@SuppressWarnings("unchecked")
public class ActivityMainCreatedBindingImpl extends ActivityMainCreatedBinding  {

    @Nullable
    private static final androidx.databinding.ViewDataBinding.IncludedLayouts sIncludes;
    @Nullable
    private static final android.util.SparseIntArray sViewsWithIds;
    static {
        sIncludes = null;
        sViewsWithIds = new android.util.SparseIntArray();
        sViewsWithIds.put(R.id.nickName_EditText, 3);
        sViewsWithIds.put(R.id.doneBtn, 4);
        sViewsWithIds.put(R.id.star_img, 5);
        sViewsWithIds.put(R.id.bioText, 6);
    }
    // views
    @NonNull
    private final android.widget.LinearLayout mboundView0;
    // variables
    // values
    // listeners
    // Inverse Binding Event Handlers
    private androidx.databinding.InverseBindingListener nicNameTextandroidTextAttrChanged = new androidx.databinding.InverseBindingListener() {
        @Override
        public void onChange() {
            // Inverse of myName.nickName
            //         is myName.setNickName((java.lang.String) callbackArg_0)
            java.lang.String callbackArg_0 = androidx.databinding.adapters.TextViewBindingAdapter.getTextString(nicNameText);
            // localize variables for thread safety
            // myName.nickName
            java.lang.String myNameNickName = null;
            // myName
            com.dev_app.aboutme.MyName myName = mMyName;
            // myName != null
            boolean myNameJavaLangObjectNull = false;



            myNameJavaLangObjectNull = (myName) != (null);
            if (myNameJavaLangObjectNull) {




                myName.setNickName(((java.lang.String) (callbackArg_0)));
            }
        }
    };
    private androidx.databinding.InverseBindingListener textViewandroidTextAttrChanged = new androidx.databinding.InverseBindingListener() {
        @Override
        public void onChange() {
            // Inverse of myName.name
            //         is myName.setName((java.lang.String) callbackArg_0)
            java.lang.String callbackArg_0 = androidx.databinding.adapters.TextViewBindingAdapter.getTextString(textView);
            // localize variables for thread safety
            // myName
            com.dev_app.aboutme.MyName myName = mMyName;
            // myName.name
            java.lang.String myNameName = null;
            // myName != null
            boolean myNameJavaLangObjectNull = false;



            myNameJavaLangObjectNull = (myName) != (null);
            if (myNameJavaLangObjectNull) {




                myName.setName(((java.lang.String) (callbackArg_0)));
            }
        }
    };

    public ActivityMainCreatedBindingImpl(@Nullable androidx.databinding.DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, mapBindings(bindingComponent, root, 7, sIncludes, sViewsWithIds));
    }
    private ActivityMainCreatedBindingImpl(androidx.databinding.DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0
            , (android.widget.TextView) bindings[6]
            , (android.widget.Button) bindings[4]
            , (android.widget.TextView) bindings[2]
            , (android.widget.EditText) bindings[3]
            , (android.widget.ImageView) bindings[5]
            , (android.widget.TextView) bindings[1]
            );
        this.mboundView0 = (android.widget.LinearLayout) bindings[0];
        this.mboundView0.setTag(null);
        this.nicNameText.setTag(null);
        this.textView.setTag(null);
        setRootTag(root);
        // listeners
        invalidateAll();
    }

    @Override
    public void invalidateAll() {
        synchronized(this) {
                mDirtyFlags = 0x2L;
        }
        requestRebind();
    }

    @Override
    public boolean hasPendingBindings() {
        synchronized(this) {
            if (mDirtyFlags != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean setVariable(int variableId, @Nullable Object variable)  {
        boolean variableSet = true;
        if (BR.myName == variableId) {
            setMyName((com.dev_app.aboutme.MyName) variable);
        }
        else {
            variableSet = false;
        }
            return variableSet;
    }

    public void setMyName(@Nullable com.dev_app.aboutme.MyName MyName) {
        this.mMyName = MyName;
        synchronized(this) {
            mDirtyFlags |= 0x1L;
        }
        notifyPropertyChanged(BR.myName);
        super.requestRebind();
    }

    @Override
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        switch (localFieldId) {
        }
        return false;
    }

    @Override
    protected void executeBindings() {
        long dirtyFlags = 0;
        synchronized(this) {
            dirtyFlags = mDirtyFlags;
            mDirtyFla