.class public final Lcom/bumptech/glide/load/p/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/p/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/p/e$c;,
        Lcom/bumptech/glide/load/p/e$b;,
        Lcom/bumptech/glide/load/p/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/p/n<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/p/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/p/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/p/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/p/e$a<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/e;->a:Lcom/bumptech/glide/load/p/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/p/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/p/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lcom/bumptech/glide/load/p/n$a;

    new-instance p3, Lcom/bumptech/glide/s/d;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/s/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/p/e$b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e;->a:Lcom/bumptech/glide/load/p/e$a;

    invoke-direct {p4, p1, v0}, Lcom/bumptech/glide/load/p/e$b;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/p/e$a;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/p/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
