.class Lfr/bmartel/youtubetv/YoutubeTvView$b;
.super Landroid/media/session/MediaSession$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/YoutubeTvView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/bmartel/youtubetv/YoutubeTvView;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/YoutubeTvView;)V
    .locals 0

    iput-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView$b;->a:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
