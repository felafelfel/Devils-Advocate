.class Lfr/bmartel/youtubetv/YoutubeTvView$a;
.super Landroid/webkit/WebChromeClient;
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

    iput-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvView$a;->a:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    const/4 p1, 0x1

    return p1
.end method
