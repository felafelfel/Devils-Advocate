.class Lb/s/a/b$h;
.super Lb/g/k/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/s/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic d:Lb/s/a/b;


# direct methods
.method constructor <init>(Lb/s/a/b;)V
    .locals 0

    iput-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    invoke-direct {p0}, Lb/g/k/a;-><init>()V

    return-void
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    iget-object v0, v0, Lb/s/a/b;->j:Lb/s/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/s/a/a;->c()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lb/g/k/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Lb/s/a/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lb/s/a/b$h;->n()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    iget-object p1, p1, Lb/s/a/b;->j:Lb/s/a/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/s/a/a;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    iget p1, p1, Lb/s/a/b;->k:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    iget p1, p1, Lb/s/a/b;->k:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;Lb/g/k/b0/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lb/g/k/a;->g(Landroid/view/View;Lb/g/k/b0/c;)V

    const-class p1, Lb/s/a/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/g/k/b0/c;->a0(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lb/s/a/b$h;->n()Z

    move-result p1

    invoke-virtual {p2, p1}, Lb/g/k/b0/c;->t0(Z)V

    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb/s/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Lb/g/k/b0/c;->a(I)V

    :cond_0
    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lb/s/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Lb/g/k/b0/c;->a(I)V

    :cond_1
    return-void
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/g/k/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lb/s/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    iget p2, p1, Lb/s/a/b;->k:I

    sub-int/2addr p2, p3

    :goto_0
    invoke-virtual {p1, p2}, Lb/s/a/b;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    invoke-virtual {p1, p3}, Lb/s/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lb/s/a/b$h;->d:Lb/s/a/b;

    iget p2, p1, Lb/s/a/b;->k:I

    add-int/2addr p2, p3

    goto :goto_0

    :cond_4
    return v0
.end method
