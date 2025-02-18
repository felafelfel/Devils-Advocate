package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C3027r;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p147v.AbstractC3031a;
import com.google.android.gms.common.internal.p147v.C3034c;
import com.google.android.gms.common.util.AbstractC3041c;
import com.google.android.gms.common.util.C3042d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class GoogleSignInAccount extends AbstractC3031a implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new C2893b();

    /* renamed from: b */
    private static AbstractC3041c f9732b = C3042d.m12436b();

    /* renamed from: c */
    private final int f9733c;

    /* renamed from: d */
    private String f9734d;

    /* renamed from: e */
    private String f9735e;

    /* renamed from: f */
    private String f9736f;

    /* renamed from: g */
    private String f9737g;

    /* renamed from: h */
    private Uri f9738h;

    /* renamed from: i */
    private String f9739i;

    /* renamed from: j */
    private long f9740j;

    /* renamed from: k */
    private String f9741k;

    /* renamed from: l */
    private List<Scope> f9742l;

    /* renamed from: m */
    private String f9743m;

    /* renamed from: n */
    private String f9744n;

    /* renamed from: o */
    private Set<Scope> f9745o = new HashSet();

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f9733c = i;
        this.f9734d = str;
        this.f9735e = str2;
        this.f9736f = str3;
        this.f9737g = str4;
        this.f9738h = uri;
        this.f9739i = str5;
        this.f9740j = j;
        this.f9741k = str6;
        this.f9742l = list;
        this.f9743m = str7;
        this.f9744n = str8;
    }

    /* renamed from: r */
    public static GoogleSignInAccount m11982r(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        GoogleSignInAccount s = m11983s(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        s.f9739i = jSONObject.optString("serverAuthCode", null);
        return s;
    }

    /* renamed from: s */
    private static GoogleSignInAccount m11983s(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, (l == null ? Long.valueOf(f9732b.mo9817a() / 1000) : l).longValue(), C3027r.m12373e(str7), new ArrayList((Collection) C3027r.m12376h(set)), str5, str6);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f9741k.equals(this.f9741k) && googleSignInAccount.mo9537p().equals(mo9537p());
    }

    /* renamed from: h */
    public Account mo9528h() {
        if (this.f9736f == null) {
            return null;
        }
        return new Account(this.f9736f, "com.google");
    }

    public int hashCode() {
        return ((this.f9741k.hashCode() + 527) * 31) + mo9537p().hashCode();
    }

    /* renamed from: i */
    public String mo9530i() {
        return this.f9737g;
    }

    /* renamed from: j */
    public String mo9531j() {
        return this.f9736f;
    }

    /* renamed from: k */
    public String mo9532k() {
        return this.f9744n;
    }

    /* renamed from: l */
    public String mo9533l() {
        return this.f9743m;
    }

    /* renamed from: m */
    public String mo9534m() {
        return this.f9734d;
    }

    /* renamed from: n */
    public String mo9535n() {
        return this.f9735e;
    }

    /* renamed from: o */
    public Uri mo9536o() {
        return this.f9738h;
    }

    /* renamed from: p */
    public Set<Scope> mo9537p() {
        HashSet hashSet = new HashSet(this.f9742l);
        hashSet.addAll(this.f9745o);
        return hashSet;
    }

    /* renamed from: q */
    public String mo9538q() {
        return this.f9739i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = C3034c.m12411a(parcel);
        C3034c.m12417g(parcel, 1, this.f9733c);
        C3034c.m12420j(parcel, 2, mo9534m(), false);
        C3034c.m12420j(parcel, 3, mo9535n(), false);
        C3034c.m12420j(parcel, 4, mo9531j(), false);
        C3034c.m12420j(parcel, 5, mo9530i(), false);
        C3034c.m12419i(parcel, 6, mo9536o(), i, false);
        C3034c.m12420j(parcel, 7, mo9538q(), false);
        C3034c.m12418h(parcel, 8, this.f9740j);
        C3034c.m12420j(parcel, 9, this.f9741k, false);
        C3034c.m12423m(parcel, 10, this.f9742l, false);
        C3034c.m12420j(parcel, 11, mo9533l(), false);
        C3034c.m12420j(parcel, 12, mo9532k(), false);
        C3034c.m12412b(parcel, a);
    }
}
