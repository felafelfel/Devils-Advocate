package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.ComponentCallbacks2C2922b;

/* access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.p */
public final class C2952p implements ComponentCallbacks2C2922b.AbstractC2923a {

    /* renamed from: a */
    private final /* synthetic */ C2927d f9873a;

    C2952p(C2927d dVar) {
        this.f9873a = dVar;
    }

    @Override // com.google.android.gms.common.api.internal.ComponentCallbacks2C2922b.AbstractC2923a
    /* renamed from: a */
    public final void mo9620a(boolean z) {
        this.f9873a.f9827q.sendMessage(this.f9873a.f9827q.obtainMessage(1, Boolean.valueOf(z)));
    }
}
