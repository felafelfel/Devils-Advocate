.class public final Lcom/bumptech/glide/load/n/c;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private final b:Ljava/io/OutputStream;

.field private c:[B

.field private d:Lcom/bumptech/glide/load/o/a0/b;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/o/a0/b;)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/n/c;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/o/a0/b;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/o/a0/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/c;->d:Lcom/bumptech/glide/load/o/a0/b;

    const-class p1, [B

    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/o/a0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    return-void
.end method

.method private a()V
    .locals 4

    iget v0, p0, Lcom/bumptech/glide/load/n/c;->e:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/bumptech/glide/load/n/c;->e:I

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/n/c;->e:I

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/c;->a()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->d:Lcom/bumptech/glide/load/o/a0/b;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/o/a0/b;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/c;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/c;->c()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public flush()V
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/c;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    iget v1, p0, Lcom/bumptech/glide/load/n/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/n/c;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/c;->b()V

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/load/n/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5

    const/4 v0, 0x0

    :cond_0
    sub-int v1, p3, v0

    add-int v2, p2, v0

    iget v3, p0, Lcom/bumptech/glide/load/n/c;->e:I

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    array-length v4, v4

    if-lt v1, v4, :cond_1

    iget-object p2, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/bumptech/glide/load/n/c;->c:[B

    iget v4, p0, Lcom/bumptech/glide/load/n/c;->e:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/bumptech/glide/load/n/c;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/n/c;->e:I

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/c;->b()V

    if-lt v0, p3, :cond_0

    return-void
.end method
