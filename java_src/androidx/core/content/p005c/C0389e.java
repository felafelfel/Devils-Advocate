package androidx.core.content.p005c;

/* renamed from: androidx.core.content.c.e */
final class C0389e {
    /* renamed from: a */
    public static int[] m1920a(int[] iArr, int i, int i2) {
        if (i + 1 > iArr.length) {
            int[] iArr2 = new int[m1922c(i)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr = iArr2;
        }
        iArr[i] = i2;
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object[], java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* renamed from: b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T> T[] m1921b(T[] r2, int r3, T r4) {
        /*
            int r0 = r3 + 1
            int r1 = r2.length
            if (r0 <= r1) goto L_0x001c
            java.lang.Class r0 = r2.getClass()
            java.lang.Class r0 = r0.getComponentType()
            int r1 = m1922c(r3)
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r0, r1)
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            r1 = 0
            java.lang.System.arraycopy(r2, r1, r0, r1, r3)
            r2 = r0
        L_0x001c:
            r2[r3] = r4
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p005c.C0389e.m1921b(java.lang.Object[], int, java.lang.Object):java.lang.Object[]");
    }

    /* renamed from: c */
    public static int m1922c(int i) {
        if (i <= 4) {
            return 8;
        }
        return i * 2;
    }
}
