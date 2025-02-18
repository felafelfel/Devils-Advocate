package com.bumptech.glide.load.p120n;

import com.bumptech.glide.load.p122o.p123a0.AbstractC1690b;
import java.io.OutputStream;

/* renamed from: com.bumptech.glide.load.n.c */
public final class C1654c extends OutputStream {

    /* renamed from: b */
    private final OutputStream f6669b;

    /* renamed from: c */
    private byte[] f6670c;

    /* renamed from: d */
    private AbstractC1690b f6671d;

    /* renamed from: e */
    private int f6672e;

    public C1654c(OutputStream outputStream, AbstractC1690b bVar) {
        this(outputStream, bVar, 65536);
    }

    C1654c(OutputStream outputStream, AbstractC1690b bVar, int i) {
        this.f6669b = outputStream;
        this.f6671d = bVar;
        this.f6670c = (byte[]) bVar.mo7162e(i, byte[].class);
    }

    /* renamed from: a */
    private void m7897a() {
        int i = this.f6672e;
        if (i > 0) {
            this.f6669b.write(this.f6670c, 0, i);
            this.f6672e = 0;
        }
    }

    /* renamed from: b */
    private void m7898b() {
        if (this.f6672e == this.f6670c.length) {
            m7897a();
        }
    }

    /* renamed from: c */
    private void m7899c() {
        byte[] bArr = this.f6670c;
        if (bArr != null) {
            this.f6671d.mo7161d(bArr);
            this.f6670c = null;
        }
    }

    /* JADX INFO: finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            flush();
            this.f6669b.close();
            m7899c();
        } catch (Throwable th) {
            this.f6669b.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        m7897a();
        this.f6669b.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.f6670c;
        int i2 = this.f6672e;
        this.f6672e = i2 + 1;
        bArr[i2] = (byte) i;
        m7898b();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.f6672e;
            if (i6 != 0 || i4 < this.f6670c.length) {
                int min = Math.min(i4, this.f6670c.length - i6);
                System.arraycopy(bArr, i5, this.f6670c, this.f6672e, min);
                this.f6672e += min;
                i3 += min;
                m7898b();
            } else {
                this.f6669b.write(bArr, i5, i4);
                return;
            }
        } while (i3 < i2);
    }
}
