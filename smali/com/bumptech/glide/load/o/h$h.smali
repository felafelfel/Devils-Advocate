.class final enum Lcom/bumptech/glide/load/o/h$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/o/h$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bumptech/glide/load/o/h$h;

.field public static final enum c:Lcom/bumptech/glide/load/o/h$h;

.field public static final enum d:Lcom/bumptech/glide/load/o/h$h;

.field public static final enum e:Lcom/bumptech/glide/load/o/h$h;

.field public static final enum f:Lcom/bumptech/glide/load/o/h$h;

.field public static final enum g:Lcom/bumptech/glide/load/o/h$h;

.field private static final synthetic h:[Lcom/bumptech/glide/load/o/h$h;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/bumptech/glide/load/o/h$h;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/o/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/o/h$h;->b:Lcom/bumptech/glide/load/o/h$h;

    new-instance v1, Lcom/bumptech/glide/load/o/h$h;

    const-string v3, "RESOURCE_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bumptech/glide/load/o/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/load/o/h$h;->c:Lcom/bumptech/glide/load/o/h$h;

    new-instance v3, Lcom/bumptech/glide/load/o/h$h;

    const-string v5, "DATA_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bumptech/glide/load/o/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bumptech/glide/load/o/h$h;->d:Lcom/bumptech/glide/load/o/h$h;

    new-instance v5, Lcom/bumptech/glide/load/o/h$h;

    const-string v7, "SOURCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bumptech/glide/load/o/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bumptech/glide/load/o/h$h;->e:Lcom/bumptech/glide/load/o/h$h;

    new-instance v7, Lcom/bumptech/glide/load/o/h$h;

    const-string v9, "ENCODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bumptech/glide/load/o/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bumptech/glide/load/o/h$h;->f:Lcom/bumptech/glide/load/o/h$h;

    new-instance v9, Lcom/bumptech/glide/load/o/h$h;

    const-string v11, "FINISHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/bumptech/glide/load/o/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/bumptech/glide/load/o/h$h;->g:Lcom/bumptech/glide/load/o/h$h;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bumptech/glide/load/o/h$h;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/bumptech/glide/load/o/h$h;->h:[Lcom/bumptech/glide/load/o/h$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/o/h$h;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/o/h$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/o/h$h;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/o/h$h;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/o/h$h;->h:[Lcom/bumptech/glide/load/o/h$h;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/o/h$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/o/h$h;

    return-object v0
.end method
