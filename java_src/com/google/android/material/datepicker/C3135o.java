package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.o */
public class C3135o {

    /* renamed from: a */
    private static final C3135o f10466a = new C3135o(null, null);

    /* renamed from: b */
    private final Long f10467b;

    /* renamed from: c */
    private final TimeZone f10468c;

    private C3135o(Long l, TimeZone timeZone) {
        this.f10467b = l;
        this.f10468c = timeZone;
    }

    /* renamed from: c */
    static C3135o m13068c() {
        return f10466a;
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public Calendar mo10468a() {
        return mo10469b(this.f10468c);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: b */
    public Calendar mo10469b(TimeZone timeZone) {
        Calendar instance = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.f10467b;
        if (l != null) {
            instance.setTimeInMillis(l.longValue());
        }
        return instance;
    }
}
