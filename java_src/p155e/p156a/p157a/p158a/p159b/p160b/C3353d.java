package p155e.p156a.p157a.p158a.p159b.p160b;

import java.io.InputStream;
import java.io.RandomAccessFile;

/* access modifiers changed from: package-private */
/* renamed from: e.a.a.a.b.b.d */
public class C3353d extends InputStream {

    /* renamed from: b */
    private final RandomAccessFile f11301b;

    /* renamed from: c */
    private long f11302c;

    public C3353d(RandomAccessFile randomAccessFile, long j) {
        this.f11301b = randomAccessFile;
        this.f11302c = j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() {
    }

    @Override // java.io.InputStream
    public int read() {
        long j = this.f11302c;
        if (j <= 0) {
            return -1;
        }
        this.f11302c = j - 1;
        return this.f11301b.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        long j = this.f11302c;
        if (j == 0) {
            return -1;
        }
        if (((long) i2) > j) {
            i2 = (int) j;
        }
        int read = this.f11301b.read(bArr, i, i2);
        if (read >= 0) {
            this.f11302c -= (long) read;
        }
        return read;
    }
}
