.class final Lb/t/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/t/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lb/t/a/b$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/t/a/b$f;Lb/t/a/b$f;)I
    .locals 0

    iget p1, p1, Lb/t/a/b$f;->b:I

    iget p2, p2, Lb/t/a/b$f;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/t/a/b$f;

    check-cast p2, Lb/t/a/b$f;

    invoke-virtual {p0, p1, p2}, Lb/t/a/b$a;->a(Lb/t/a/b$f;Lb/t/a/b$f;)I

    move-result p1

    return p1
.end method
