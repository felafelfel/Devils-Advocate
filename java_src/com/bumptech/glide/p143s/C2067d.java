package com.bumptech.glide.p143s;

import com.bumptech.glide.load.AbstractC1643g;
import com.bumptech.glide.p144t.C2081j;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.s.d */
public final class C2067d implements AbstractC1643g {

    /* renamed from: b */
    private final Object f7582b;

    public C2067d(Object obj) {
        this.f7582b = C2081j.m9432d(obj);
    }

    @Override // com.bumptech.glide.load.AbstractC1643g
    /* renamed from: a */
    public void mo7075a(MessageDigest messageDigest) {
        messageDigest.update(this.f7582b.toString().getBytes(AbstractC1643g.f6656a));
    }

    @Override // com.bumptech.glide.load.AbstractC1643g
    public boolean equals(Object obj) {
        if (obj instanceof C2067d) {
            return this.f7582b.equals(((C2067d) obj).f7582b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC1643g
    public int hashCode() {
        return this.f7582b.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f7582b + '}';
    }
}
