.class public Lcom/android/billingclient/api/Purchase$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/android/billingclient/api/h;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/h;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/Purchase$a;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/billingclient/api/Purchase$a;->b:Lcom/android/billingclient/api/h;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/h;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/Purchase$a;->b:Lcom/android/billingclient/api/h;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/Purchase$a;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase$a;->a()Lcom/android/billingclient/api/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->c()I

    move-result v0

    return v0
.end method
