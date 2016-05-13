.class Lcom/facebook/browser/lite/BrowserLiteChrome$5;
.super Ljava/lang/Object;
.source "qe"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteChrome;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$5;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$5;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->b()Z

    move-result v0

    .line 270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
