package p069c.p073b.p074a.p090b.p102u;

/* renamed from: c.b.a.b.u.a */
public final class C1432a {
    /* renamed from: a */
    public static float m7064a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot((double) (f3 - f), (double) (f4 - f2));
    }

    /* renamed from: b */
    public static float m7065b(float f, float f2, float f3, float f4, float f5, float f6) {
        return m7067d(m7064a(f, f2, f3, f4), m7064a(f, f2, f5, f4), m7064a(f, f2, f5, f6), m7064a(f, f2, f3, f6));
    }

    /* renamed from: c */
    public static float m7066c(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: d */
    private static float m7067d(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }
}
