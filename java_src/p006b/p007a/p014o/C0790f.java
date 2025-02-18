package p006b.p007a.p014o;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuC0149o;
import androidx.appcompat.view.menu.MenuItemC0136j;
import java.util.ArrayList;
import p006b.p007a.p014o.AbstractC0785b;
import p006b.p021d.C0838i;
import p006b.p030g.p032e.p033a.AbstractMenuC0917a;
import p006b.p030g.p032e.p033a.AbstractMenuItemC0918b;

/* renamed from: b.a.o.f */
public class C0790f extends ActionMode {

    /* renamed from: a */
    final Context f3947a;

    /* renamed from: b */
    final AbstractC0785b f3948b;

    /* renamed from: b.a.o.f$a */
    public static class C0791a implements AbstractC0785b.AbstractC0786a {

        /* renamed from: a */
        final ActionMode.Callback f3949a;

        /* renamed from: b */
        final Context f3950b;

        /* renamed from: c */
        final ArrayList<C0790f> f3951c = new ArrayList<>();

        /* renamed from: d */
        final C0838i<Menu, Menu> f3952d = new C0838i<>();

        public C0791a(Context context, ActionMode.Callback callback) {
            this.f3950b = context;
            this.f3949a = callback;
        }

        /* renamed from: f */
        private Menu m4654f(Menu menu) {
            Menu menu2 = this.f3952d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            MenuC0149o oVar = new MenuC0149o(this.f3950b, (AbstractMenuC0917a) menu);
            this.f3952d.put(menu, oVar);
            return oVar;
        }

        @Override // p006b.p007a.p014o.AbstractC0785b.AbstractC0786a
        /* renamed from: a */
        public boolean mo349a(AbstractC0785b bVar, Menu menu) {
            return this.f3949a.onPrepareActionMode(mo4714e(bVar), m4654f(menu));
        }

        @Override // p006b.p007a.p014o.AbstractC0785b.AbstractC0786a
        /* renamed from: b */
        public boolean mo350b(AbstractC0785b bVar, MenuItem menuItem) {
            return this.f3949a.onActionItemClicked(mo4714e(bVar), new MenuItemC0136j(this.f3950b, (AbstractMenuItemC0918b) menuItem));
        }

        @Override // p006b.p007a.p014o.AbstractC0785b.AbstractC0786a
        /* renamed from: c */
        public boolean mo351c(AbstractC0785b bVar, Menu menu) {
            return this.f3949a.onCreateActionMode(mo4714e(bVar), m4654f(menu));
        }

        @Override // p006b.p007a.p014o.AbstractC0785b.AbstractC0786a
        /* renamed from: d */
        public void mo352d(AbstractC0785b bVar) {
            this.f3949a.onDestroyActionMode(mo4714e(bVar));
        }

        /* renamed from: e */
        public ActionMode mo4714e(AbstractC0785b bVar) {
            int size = this.f3951c.size();
            for (int i = 0; i < size; i++) {
                C0790f fVar = this.f3951c.get(i);
                if (fVar != null && fVar.f3948b == bVar) {
                    return fVar;
                }
            }
            C0790f fVar2 = new C0790f(this.f3950b, bVar);
            this.f3951c.add(fVar2);
            return fVar2;
        }
    }

    public C0790f(Context context, AbstractC0785b bVar) {
        this.f3947a = context;
        this.f3948b = bVar;
    }

    public void finish() {
        this.f3948b.mo432c();
    }

    public View getCustomView() {
        return this.f3948b.mo433d();
    }

    public Menu getMenu() {
        return new MenuC0149o(this.f3947a, (AbstractMenuC0917a) this.f3948b.mo434e());
    }

    public MenuInflater getMenuInflater() {
        return this.f3948b.mo435f();
    }

    public CharSequence getSubtitle() {
        return this.f3948b.mo436g();
    }

    public Object getTag() {
        return this.f3948b.mo4685h();
    }

    public CharSequence getTitle() {
        return this.f3948b.mo437i();
    }

    public boolean getTitleOptionalHint() {
        return this.f3948b.mo4686j();
    }

    public void invalidate() {
        this.f3948b.mo438k();
    }

    public boolean isTitleOptional() {
        return this.f3948b.mo439l();
    }

    public void setCustomView(View view) {
        this.f3948b.mo440m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f3948b.mo441n(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f3948b.mo442o(charSequence);
    }

    public void setTag(Object obj) {
        this.f3948b.mo4687p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f3948b.mo443q(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f3948b.mo444r(charSequence);
    }

    public void setTitleOptionalHint(boolean z) {
        this.f3948b.mo445s(z);
    }
}
