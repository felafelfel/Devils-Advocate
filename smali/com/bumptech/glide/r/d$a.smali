.class public final enum Lcom/bumptech/glide/r/d$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/r/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/r/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bumptech/glide/r/d$a;

.field public static final enum c:Lcom/bumptech/glide/r/d$a;

.field public static final enum d:Lcom/bumptech/glide/r/d$a;

.field public static final enum e:Lcom/bumptech/glide/r/d$a;

.field public static final enum f:Lcom/bumptech/glide/r/d$a;

.field private static final synthetic g:[Lcom/bumptech/glide/r/d$a;


# instance fields
.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/bumptech/glide/r/d$a;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bumptech/glide/r/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/r/d$a;->b:Lcom/bumptech/glide/r/d$a;

    new-instance v1, Lcom/bumptech/glide/r/d$a;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/bumptech/glide/r/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/bumptech/glide/r/d$a;->c:Lcom/bumptech/glide/r/d$a;

    new-instance v3, Lcom/bumptech/glide/r/d$a;

    const-string v5, "CLEARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/bumptech/glide/r/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/bumptech/glide/r/d$a;->d:Lcom/bumptech/glide/r/d$a;

    new-instance v5, Lcom/bumptech/glide/r/d$a;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/bumptech/glide/r/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/bumptech/glide/r/d$a;->e:Lcom/bumptech/glide/r/d$a;

    new-instance v7, Lcom/bumptech/glide/r/d$a;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/bumptech/glide/r/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/bumptech/glide/r/d$a;->f:Lcom/bumptech/glide/r/d$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bumptech/glide/r/d$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/bumptech/glide/r/d$a;->g:[Lcom/bumptech/glide/r/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/bumptech/glide/r/d$a;->h:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/r/d$a;
    .locals 1

    const-class v0, Lcom/bumptech/glide/r/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/r/d$a;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/r/d$a;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/r/d$a;->g:[Lcom/bumptech/glide/r/d$a;

    invoke-virtual {v0}, [Lcom/bumptech/glide/r/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/r/d$a;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/r/d$a;->h:Z

    return v0
.end method
