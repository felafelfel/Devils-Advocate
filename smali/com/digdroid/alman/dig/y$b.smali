.class Lcom/digdroid/alman/dig/y$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digdroid/alman/dig/y;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b<",
        "Lcom/digdroid/alman/dig/y$m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/digdroid/alman/dig/y;


# direct methods
.method constructor <init>(Lcom/digdroid/alman/dig/y;)V
    .locals 0

    iput-object p1, p0, Lcom/digdroid/alman/dig/y$b;->a:Lcom/digdroid/alman/dig/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/digdroid/alman/dig/y$m;

    invoke-virtual {p0, p1}, Lcom/digdroid/alman/dig/y$b;->b(Lcom/digdroid/alman/dig/y$m;)V

    return-void
.end method

.method public b(Lcom/digdroid/alman/dig/y$m;)V
    .locals 0

    invoke-interface {p1}, Lcom/digdroid/alman/dig/y$m;->a()V

    return-void
.end method
