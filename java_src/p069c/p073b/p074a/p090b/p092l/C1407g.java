package p069c.p073b.p074a.p090b.p092l;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* renamed from: c.b.a.b.l.g */
public class C1407g implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    private final float[] f6024a = new float[9];

    /* renamed from: b */
    private final float[] f6025b = new float[9];

    /* renamed from: c */
    private final Matrix f6026c = new Matrix();

    /* renamed from: a */
    public Matrix mo6462a(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f6024a);
        matrix2.getValues(this.f6025b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f6025b;
            float f2 = fArr[i];
            float[] fArr2 = this.f6024a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f6026c.setValues(this.f6025b);
        return this.f6026c;
    }
}
