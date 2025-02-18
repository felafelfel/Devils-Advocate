package com.digdroid.alman.dig;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Bundle;
import androidx.appcompat.app.ActivityC0070c;
import com.digdroid.alman.dig.C2187b0;
import java.io.File;
import java.util.concurrent.Callable;

/* renamed from: com.digdroid.alman.dig.t */
public class ActivityC2725t extends ActivityC0070c implements C2187b0.AbstractC2203l {

    /* renamed from: A */
    C2749t1 f9268A;

    /* renamed from: B */
    long f9269B;

    /* renamed from: C */
    long f9270C;

    /* renamed from: D */
    String f9271D;

    /* renamed from: E */
    boolean f9272E;

    /* renamed from: u */
    C2775u f9273u = null;

    /* renamed from: v */
    C2886z1 f9274v = null;

    /* renamed from: w */
    C2219c3 f9275w;

    /* renamed from: x */
    C2512o0 f9276x;

    /* renamed from: y */
    C2375h3 f9277y;

    /* renamed from: z */
    C2187b0 f9278z;

    /* access modifiers changed from: package-private */
    /* renamed from: com.digdroid.alman.dig.t$a */
    public class AsyncTaskC2726a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        Callable f9279a;

        /* renamed from: b */
        Callable f9280b;

        public AsyncTaskC2726a(Callable callable, Callable callable2) {
            this.f9279a = callable;
            this.f9280b = callable2;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            ActivityC2725t.this.mo9233V0();
            try {
                Callable callable = this.f9279a;
                if (callable == null) {
                    return null;
                }
                callable.call();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Void r1) {
            try {
                Callable callable = this.f9280b;
                if (callable != null) {
                    callable.call();
                }
            } catch (Exception unused) {
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: com.digdroid.alman.dig.t$b */
    public class AsyncTaskC2727b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        boolean f9282a;

        /* renamed from: b */
        boolean f9283b;

        /* renamed from: c */
        boolean f9284c;

        public AsyncTaskC2727b(boolean z, boolean z2, boolean z3) {
            this.f9284c = z;
            this.f9283b = z2;
            this.f9282a = z3;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            ImageService.m9513c(ActivityC2725t.this.getApplicationContext());
            if (!this.f9283b || ActivityC2725t.this.f9275w.mo8182e()) {
                DatabaseService.m9478v(ActivityC2725t.this.getApplicationContext(), "scan_dirs");
            } else {
                if (this.f9284c) {
                    ActivityC2725t.this.f9277y.mo8556e(this.f9282a);
                }
                DatabaseService.m9478v(ActivityC2725t.this.getApplicationContext(), "find_dirs");
                DatabaseService.m9478v(ActivityC2725t.this.getApplicationContext(), "scan_dirs");
                ServerService.m9575t(ActivityC2725t.this.getApplicationContext(), "com.digdroid.alman.dig.action.SYNC");
                ImageService.m9511a(ActivityC2725t.this.getBaseContext());
            }
            DatabaseService.m9478v(ActivityC2725t.this.getApplicationContext(), "kill_orphans");
            DatabaseService.m9478v(ActivityC2725t.this.getApplicationContext(), "merge_games");
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: V0 */
    public void mo9233V0() {
        this.f9275w = C2219c3.m9805k(getApplicationContext());
        this.f9273u = C2775u.m11726e(getApplicationContext());
        C2375h3 r = C2375h3.m10306r(getApplicationContext(), this.f9273u);
        this.f9277y = r;
        r.mo8557f();
        this.f9276x = C2512o0.m10833g(getApplicationContext(), this.f9273u);
        C2187b0 o = C2187b0.m9701o(getApplicationContext(), this.f9277y, this.f9276x);
        this.f9278z = o;
        o.mo8044A(this);
        this.f9273u.mo9329h();
        this.f9276x.mo8850o();
        this.f9277y.mo8543C();
        this.f9268A = C2749t1.m11663p(getApplicationContext());
    }

    /* access modifiers changed from: package-private */
    /* renamed from: W0 */
    public boolean mo9234W0() {
        File externalFilesDir;
        int l = this.f9275w.mo8188l("data_version", 0);
        if (l < 463) {
            this.f9268A.mo9264A();
        }
        C2886z1 b = C2886z1.m11967b(getApplicationContext());
        this.f9274v = b;
        if (!b.mo9516c()) {
            return false;
        }
        if (l < 272) {
            String q = this.f9275w.mo8193q("sdcard_path", "");
            if (!q.equals("")) {
                this.f9275w.mo8200x("num_storage_dirs", 1);
                this.f9275w.mo8202z("storage_dir0", q);
            }
        }
        if (l < 357) {
            C2219c3 c3Var = this.f9275w;
            c3Var.mo8155D("game_block_size", c3Var.mo8183f("games_block_size", 170.0f));
        }
        if (l < 359 && (externalFilesDir = getExternalFilesDir(null)) != null) {
            String str = externalFilesDir.getAbsolutePath() + "/Icons/Home/";
            for (int i = 1; i <= 7; i++) {
                File file = new File(str + i + ".png");
                if (file.exists()) {
                    try {
                        file.renameTo(new File(str + C2712s1.m11517G3(i) + ".png"));
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (l < 429) {
            this.f9273u.mo9325c().execSQL("UPDATE roms SET cover_status=cover_status|20480 WHERE (cover_status&8192)=0");
        }
        if (l < 428) {
            this.f9273u.mo9325c().execSQL("UPDATE roms SET age_rating=NULL");
        }
        if (l < 447) {
            this.f9273u.mo9325c().execSQL("UPDATE roms SET age_rating=NULL WHERE youtube IS NULL");
        }
        if (l < 463) {
            SQLiteDatabase c = this.f9273u.mo9325c();
            Cursor rawQuery = this.f9274v.mo9515a().rawQuery("SELECT _id,youtube FROM games WHERE videoversion>" + l, null);
            if (rawQuery.moveToFirst()) {
                do {
                    if (!rawQuery.isNull(1)) {
                        long j = rawQuery.getLong(0);
                        long j2 = rawQuery.getLong(1);
                        ContentValues contentValues = new ContentValues();
                        if (j2 != 0) {
                            try {
                                contentValues.put("youtube", C2185a4.m9688r(j2));
                            } catch (Exception unused2) {
                            }
                            c.update("roms", contentValues, "mdbid=" + j + " AND youtube IS NULL", null);
                        }
                        contentValues.put("youtube", (String) null);
                        c.update("roms", contentValues, "mdbid=" + j + " AND youtube IS NULL", null);
                    }
                } while (rawQuery.moveToNext());
            }
            rawQuery.close();
        }
        this.f9275w.mo8156E("data_version", 463);
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.ActivityC0447d, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0361e, androidx.appcompat.app.ActivityC0070c
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        if (bundle == null) {
            this.f9270C = -1;
            this.f9269B = 0;
            this.f9271D = null;
            z = false;
        } else {
            this.f9270C = bundle.getLong("game_launched");
            this.f9269B = bundle.getLong("game_launch_time");
            this.f9271D = bundle.getString("system_launched");
            z = bundle.getBoolean("is_retroarch");
        }
        this.f9272E = z;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.ActivityC0447d, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0361e, androidx.appcompat.app.ActivityC0070c
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putLong("game_launched", this.f9270C);
        bundle.putLong("game_launch_time", this.f9269B);
        bundle.putString("system_launched", this.f9271D);
        bundle.putBoolean("is_retroarch", this.f9272E);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.digdroid.alman.dig.C2187b0.AbstractC2203l
    /* renamed from: s0 */
    public void mo8090s0(long j, long j2, String str, boolean z) {
        this.f9270C = j;
        this.f9269B = j2;
        this.f9271D = this.f9277y.mo8569t(str);
        this.f9272E = z;
    }

    /* renamed from: t0 */
    public void mo9235t0(boolean z, boolean z2, boolean z3) {
        DatabaseService.m9478v(getApplicationContext(), "update_masterbase");
        new AsyncTaskC2727b(z, z2, z3).execute(new Void[0]);
    }
}
