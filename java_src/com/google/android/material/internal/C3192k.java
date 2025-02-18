package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import p006b.p030g.p039k.AbstractC1010p;
import p006b.p030g.p039k.C0964a0;
import p006b.p030g.p039k.C1013s;
import p069c.p073b.p074a.p090b.C1399j;
import p069c.p073b.p074a.p090b.C1400k;

/* renamed from: com.google.android.material.internal.k */
public class C3192k extends FrameLayout {

    /* renamed from: b */
    Drawable f10689b;

    /* renamed from: c */
    Rect f10690c;

    /* renamed from: d */
    private Rect f10691d;

    /* renamed from: e */
    private boolean f10692e;

    /* renamed from: f */
    private boolean f10693f;

    /* renamed from: com.google.android.material.internal.k$a */
    class C3193a implements AbstractC1010p {
        C3193a() {
        }

        @Override // p006b.p030g.p039k.AbstractC1010p
        /* renamed from: a */
        public C0964a0 mo340a(View view, C0964a0 a0Var) {
            C3192k kVar = C3192k.this;
            if (kVar.f10690c == null) {
                kVar.f10690c = new Rect();
            }
            C3192k.this.f10690c.set(a0Var.mo5416f(), a0Var.mo5418h(), a0Var.mo5417g(), a0Var.mo5414e());
            C3192k.this.mo10775a(a0Var);
            C3192k.this.setWillNotDraw(!a0Var.mo5421j() || C3192k.this.f10689b == null);
            C1013s.m5748Z(C3192k.this);
            return a0Var.mo5412c();
        }
    }

    public C3192k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C3192k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10691d = new Rect();
        this.f10692e = true;
        this.f10693f = true;
        TypedArray h = C3202o.m13430h(context, attributeSet, C1400k.f5844a3, i, C1399j.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f10689b = h.getDrawable(C1400k.f5851b3);
        h.recycle();
        setWillNotDraw(true);
        C1013s.m5790u0(this, new C3193a());
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void mo10775a(C0964a0 a0Var) {
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f10690c != null && this.f10689b != null) {
            int save = canvas.save();
            canvas.translate((float) getScrollX(), (float) getScrollY());
            if (this.f10692e) {
                this.f10691d.set(0, 0, width, this.f10690c.top);
                this.f10689b.setBounds(this.f10691d);
                this.f10689b.draw(canvas);
            }
            if (this.f10693f) {
                this.f10691d.set(0, height - this.f10690c.bottom, width, height);
                this.f10689b.setBounds(this.f10691d);
                this.f10689b.draw(canvas);
            }
            Rect rect = this.f10691d;
            Rect rect2 = this.f10690c;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f10689b.setBounds(this.f10691d);
            this.f10689b.draw(canvas);
            Rect rect3 = this.f10691d;
            Rect rect4 = this.f10690c;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.f10689b.setBounds(this.f10691d);
            this.f10689b.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f10689b;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f10689b;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.f10693f = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f10692e = z;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f10689b = drawable;
    }
}
