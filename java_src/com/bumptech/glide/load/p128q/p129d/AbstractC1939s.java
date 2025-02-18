package com.bumptech.glide.load.p128q.p129d;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C1635f;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.p120n.C1668k;
import com.bumptech.glide.load.p120n.C1671m;
import com.bumptech.glide.load.p122o.p123a0.AbstractC1690b;
import com.bumptech.glide.p144t.C2081j;
import java.io.InputStream;
import java.util.List;

/* access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.q.d.s */
public interface AbstractC1939s {

    /* renamed from: com.bumptech.glide.load.q.d.s$a */
    public static final class C1940a implements AbstractC1939s {

        /* renamed from: a */
        private final C1668k f7237a;

        /* renamed from: b */
        private final AbstractC1690b f7238b;

        /* renamed from: c */
        private final List<ImageHeaderParser> f7239c;

        C1940a(InputStream inputStream, List<ImageHeaderParser> list, AbstractC1690b bVar) {
            this.f7238b = (AbstractC1690b) C2081j.m9432d(bVar);
            this.f7239c = (List) C2081j.m9432d(list);
            this.f7237a = new C1668k(inputStream, bVar);
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: a */
        public Bitmap mo7527a(BitmapFactory.Options options) {
            return BitmapFactory.decodeStream(this.f7237a.mo7110a(), null, options);
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: b */
        public ImageHeaderParser.ImageType mo7528b() {
            return C1635f.m7858e(this.f7239c, this.f7237a.mo7110a(), this.f7238b);
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: c */
        public void mo7529c() {
            this.f7237a.mo7127c();
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: d */
        public int mo7530d() {
            return C1635f.m7855b(this.f7239c, this.f7237a.mo7110a(), this.f7238b);
        }
    }

    /* renamed from: com.bumptech.glide.load.q.d.s$b */
    public static final class C1941b implements AbstractC1939s {

        /* renamed from: a */
        private final AbstractC1690b f7240a;

        /* renamed from: b */
        private final List<ImageHeaderParser> f7241b;

        /* renamed from: c */
        private final C1671m f7242c;

        C1941b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, AbstractC1690b bVar) {
            this.f7240a = (AbstractC1690b) C2081j.m9432d(bVar);
            this.f7241b = (List) C2081j.m9432d(list);
            this.f7242c = new C1671m(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: a */
        public Bitmap mo7527a(BitmapFactory.Options options) {
            return BitmapFactory.decodeFileDescriptor(this.f7242c.mo7110a().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: b */
        public ImageHeaderParser.ImageType mo7528b() {
            return C1635f.m7857d(this.f7241b, this.f7242c, this.f7240a);
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: c */
        public void mo7529c() {
        }

        @Override // com.bumptech.glide.load.p128q.p129d.AbstractC1939s
        /* renamed from: d */
        public int mo7530d() {
            return C1635f.m7854a(this.f7241b, this.f7242c, this.f7240a);
        }
    }

    /* renamed from: a */
    Bitmap mo7527a(BitmapFactory.Options options);

    /* renamed from: b */
    ImageHeaderParser.ImageType mo7528b();

    /* renamed from: c */
    void mo7529c();

    /* renamed from: d */
    int mo7530d();
}
