.class Lcom/google/android/material/floatingactionbutton/b$c;
.super Lc/b/a/b/l/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/b;->h(Lc/b/a/b/l/h;FFF)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/material/floatingactionbutton/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$c;->d:Lcom/google/android/material/floatingactionbutton/b;

    invoke-direct {p0}, Lc/b/a/b/l/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$c;->d:Lcom/google/android/material/floatingactionbutton/b;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->c(Lcom/google/android/material/floatingactionbutton/b;F)F

    invoke-super {p0, p1, p2, p3}, Lc/b/a/b/l/g;->a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/b$c;->a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
