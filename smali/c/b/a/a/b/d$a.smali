.class final Lc/b/a/a/b/d$a;
.super Lc/b/a/a/d/a/d;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final synthetic b:Lc/b/a/a/b/d;


# direct methods
.method public constructor <init>(Lc/b/a/a/b/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a/b/d$a;->b:Lc/b/a/a/b/d;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lc/b/a/a/d/a/d;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a/b/d$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle this message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiAvailability"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/b/a/a/b/d$a;->b:Lc/b/a/a/b/d;

    iget-object v0, p0, Lc/b/a/a/b/d$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lc/b/a/a/b/d;->e(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lc/b/a/a/b/d$a;->b:Lc/b/a/a/b/d;

    invoke-virtual {v0, p1}, Lc/b/a/a/b/d;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/b/a/a/b/d$a;->b:Lc/b/a/a/b/d;

    iget-object v1, p0, Lc/b/a/a/b/d$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lc/b/a/a/b/d;->m(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method
