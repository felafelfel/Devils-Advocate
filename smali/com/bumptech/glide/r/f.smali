.class public Lcom/bumptech/glide/r/f;
.super Lcom/bumptech/glide/r/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/r/a<",
        "Lcom/bumptech/glide/r/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/r/a;-><init>()V

    return-void
.end method

.method public static e0(Ljava/lang/Class;)Lcom/bumptech/glide/r/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/r/f;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/r/f;

    invoke-direct {v0}, Lcom/bumptech/glide/r/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/r/a;->d(Ljava/lang/Class;)Lcom/bumptech/glide/r/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/r/f;

    return-object p0
.end method

.method public static f0(Lcom/bumptech/glide/load/o/j;)Lcom/bumptech/glide/r/f;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/r/f;

    invoke-direct {v0}, Lcom/bumptech/glide/r/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/r/a;->e(Lcom/bumptech/glide/load/o/j;)Lcom/bumptech/glide/r/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/r/f;

    return-object p0
.end method

.method public static g0(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/r/f;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/r/f;

    invoke-direct {v0}, Lcom/bumptech/glide/r/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/r/a;->W(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/r/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/r/f;

    return-object p0
.end method
