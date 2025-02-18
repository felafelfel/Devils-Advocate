package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.AbstractC0147n;
import androidx.appcompat.view.menu.C0134i;
import androidx.appcompat.widget.C0230h0;
import androidx.appcompat.widget.C0303y0;
import androidx.core.content.p005c.C0390f;
import androidx.core.graphics.drawable.C0398a;
import androidx.core.widget.C0418i;
import p006b.p007a.C0754a;
import p006b.p030g.p039k.C0962a;
import p006b.p030g.p039k.C1013s;
import p006b.p030g.p039k.p040b0.C0979c;
import p069c.p073b.p074a.p090b.C1393d;
import p069c.p073b.p074a.p090b.C1394e;
import p069c.p073b.p074a.p090b.C1395f;
import p069c.p073b.p074a.p090b.C1397h;

public class NavigationMenuItemView extends C3173e implements AbstractC0147n.AbstractC0148a {

    /* renamed from: w */
    private static final int[] f10579w = {16842912};

    /* renamed from: A */
    private final CheckedTextView f10580A;

    /* renamed from: B */
    private FrameLayout f10581B;

    /* renamed from: C */
    private C0134i f10582C;

    /* renamed from: D */
    private ColorStateList f10583D;

    /* renamed from: E */
    private boolean f10584E;

    /* renamed from: F */
    private Drawable f10585F;

    /* renamed from: G */
    private final C0962a f10586G;

    /* renamed from: x */
    private int f10587x;

    /* renamed from: y */
    private boolean f10588y;

    /* renamed from: z */
    boolean f10589z;

    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$a */
    class C3167a extends C0962a {
        C3167a() {
        }

        @Override // p006b.p030g.p039k.C0962a
        /* renamed from: g */
        public void mo2362g(View view, C0979c cVar) {
            super.mo2362g(view, cVar);
            cVar.mo5467Y(NavigationMenuItemView.this.f10589z);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C3167a aVar = new C3167a();
        this.f10586G = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(C1397h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C1393d.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(C1395f.design_menu_item_text);
        this.f10580A = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        C1013s.m5766i0(checkedTextView, aVar);
    }

    /* renamed from: B */
    private void m13259B() {
        int i;
        C0230h0.C0231a aVar;
        if (m13261E()) {
            this.f10580A.setVisibility(8);
            FrameLayout frameLayout = this.f10581B;
            if (frameLayout != null) {
                aVar = (C0230h0.C0231a) frameLayout.getLayoutParams();
                i = -1;
            } else {
                return;
            }
        } else {
            this.f10580A.setVisibility(0);
            FrameLayout frameLayout2 = this.f10581B;
            if (frameLayout2 != null) {
                aVar = (C0230h0.C0231a) frameLayout2.getLayoutParams();
                i = -2;
            } else {
                return;
            }
        }
        ((ViewGroup.MarginLayoutParams) aVar).width = i;
        this.f10581B.setLayoutParams(aVar);
    }

    /* renamed from: C */
    private StateListDrawable m13260C() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(C0754a.f3571v, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f10579w, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* renamed from: E */
    private boolean m13261E() {
        return this.f10582C.getTitle() == null && this.f10582C.getIcon() == null && this.f10582C.getActionView() != null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f10581B == null) {
                this.f10581B = (FrameLayout) ((ViewStub) findViewById(C1395f.design_menu_item_action_area_stub)).inflate();
            }
            this.f10581B.removeAllViews();
            this.f10581B.addView(view);
        }
    }

    /* renamed from: D */
    public void mo10667D() {
        FrameLayout frameLayout = this.f10581B;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f10580A.setCompoundDrawables(null, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0147n.AbstractC0148a
    /* renamed from: d */
    public boolean mo449d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0147n.AbstractC0148a
    /* renamed from: e */
    public void mo450e(C0134i iVar, int i) {
        this.f10582C = iVar;
        if (iVar.getItemId() > 0) {
            setId(iVar.getItemId());
        }
        setVisibility(iVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            C1013s.m5772l0(this, m13260C());
        }
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setTitle(iVar.getTitle());
        setIcon(iVar.getIcon());
        setActionView(iVar.getActionView());
        setContentDescription(iVar.getContentDescription());
        C0303y0.m1525a(this, iVar.getTooltipText());
        m13259B();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0147n.AbstractC0148a
    public C0134i getItemData() {
        return this.f10582C;
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0134i iVar = this.f10582C;
        if (iVar != null && iVar.isCheckable() && this.f10582C.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f10579w);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f10589z != z) {
            this.f10589z = z;
            this.f10586G.mo4456l(this.f10580A, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f10580A.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f10584E) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = C0398a.m1981r(drawable).mutate();
                C0398a.m1978o(drawable, this.f10583D);
            }
            int i = this.f10587x;
            drawable.setBounds(0, 0, i, i);
        } else if (this.f10588y) {
            if (this.f10585F == null) {
                Drawable a = C0390f.m1923a(getResources(), C1394e.navigation_empty_icon, getContext().getTheme());
                this.f10585F = a;
                if (a != null) {
                    int i2 = this.f10587x;
                    a.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f10585F;
        }
        C0418i.m2101i(this.f10580A, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f10580A.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f10587x = i;
    }

    /* access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.f10583D = colorStateList;
        this.f10584E = colorStateList != null;
        C0134i iVar = this.f10582C;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f10580A.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f10588y = z;
    }

    public void setTextAppearance(int i) {
        C0418i.m2106n(this.f10580A, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f10580A.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f10580A.setText(charSequence);
    }
}
