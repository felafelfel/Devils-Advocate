.class public Lcom/google/android/gms/common/internal/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/util/SparseIntArray;

.field private b:Lc/b/a/a/b/e;


# direct methods
.method public constructor <init>(Lc/b/a/a/b/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j;->a:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->h(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/j;->b:Lc/b/a/a/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/common/api/a$f;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/common/api/a$f;->q()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->a:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/common/internal/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-le v4, p2, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/common/internal/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->b:Lc/b/a/a/b/e;

    invoke-virtual {v0, p1, p2}, Lc/b/a/a/b/e;->f(Landroid/content/Context;I)I

    move-result v1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/common/internal/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1
.end method
