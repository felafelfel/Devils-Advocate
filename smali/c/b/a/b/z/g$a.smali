.class Lc/b/a/b/z/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/z/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/b/z/g;-><init>(Lc/b/a/b/z/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/b/z/g;


# direct methods
.method constructor <init>(Lc/b/a/b/z/g;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/z/g$a;->a:Lc/b/a/b/z/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/z/m;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Lc/b/a/b/z/g$a;->a:Lc/b/a/b/z/g;

    invoke-static {v0}, Lc/b/a/b/z/g;->b(Lc/b/a/b/z/g;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lc/b/a/b/z/m;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lc/b/a/b/z/g$a;->a:Lc/b/a/b/z/g;

    invoke-static {v0}, Lc/b/a/b/z/g;->d(Lc/b/a/b/z/g;)[Lc/b/a/b/z/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lc/b/a/b/z/m;->f(Landroid/graphics/Matrix;)Lc/b/a/b/z/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lc/b/a/b/z/m;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Lc/b/a/b/z/g$a;->a:Lc/b/a/b/z/g;

    invoke-static {v0}, Lc/b/a/b/z/g;->b(Lc/b/a/b/z/g;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lc/b/a/b/z/m;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lc/b/a/b/z/g$a;->a:Lc/b/a/b/z/g;

    invoke-static {v0}, Lc/b/a/b/z/g;->c(Lc/b/a/b/z/g;)[Lc/b/a/b/z/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lc/b/a/b/z/m;->f(Landroid/graphics/Matrix;)Lc/b/a/b/z/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
