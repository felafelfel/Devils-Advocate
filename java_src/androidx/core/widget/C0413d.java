package androidx.core.widget;

import android.os.Build;
import android.widget.EdgeEffect;

/* renamed from: androidx.core.widget.d */
public final class C0413d {
    /* renamed from: a */
    public static void m2081a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }
}
