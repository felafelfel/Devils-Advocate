.class public Lcom/bumptech/glide/load/q/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/v;
.implements Lcom/bumptech/glide/load/o/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/o/v<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/bumptech/glide/load/o/r;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lcom/bumptech/glide/load/o/a0/e;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/o/a0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/t/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bumptech/glide/load/q/d/e;->b:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/t/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/o/a0/e;

    iput-object p1, p0, Lcom/bumptech/glide/load/q/d/e;->c:Lcom/bumptech/glide/load/o/a0/e;

    return-void
.end method

.method public static g(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/o/a0/e;)Lcom/bumptech/glide/load/q/d/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/q/d/e;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/q/d/e;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/o/a0/e;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/q/d/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/q/d/e;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/t/k;->g(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/q/d/e;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/q/d/e;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/q/d/e;->c:Lcom/bumptech/glide/load/o/a0/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/q/d/e;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/o/a0/e;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method
