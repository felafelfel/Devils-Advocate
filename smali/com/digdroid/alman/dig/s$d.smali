.class Lcom/digdroid/alman/dig/s$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digdroid/alman/dig/s;->j3(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/digdroid/alman/dig/s;


# direct methods
.method constructor <init>(Lcom/digdroid/alman/dig/s;)V
    .locals 0

    iput-object p1, p0, Lcom/digdroid/alman/dig/s$d;->b:Lcom/digdroid/alman/dig/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/digdroid/alman/dig/s$d;->b:Lcom/digdroid/alman/dig/s;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c0()Landroidx/fragment/app/d;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/digdroid/alman/dig/s$d;->b:Lcom/digdroid/alman/dig/s;

    iget-object v0, v0, Lcom/digdroid/alman/dig/s;->v0:Lcom/digdroid/alman/dig/r3;

    iget-object v0, v0, Lcom/digdroid/alman/dig/r3;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-static {}, Lcom/digdroid/alman/dig/p3;->c()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f110057

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->h(I)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const v1, 0x7f1101d8

    new-instance v2, Lcom/digdroid/alman/dig/s$d$a;

    invoke-direct {v2, p0, p1}, Lcom/digdroid/alman/dig/s$d$a;-><init>(Lcom/digdroid/alman/dig/s$d;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->o(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    const v0, 0x7f11005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->l(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
