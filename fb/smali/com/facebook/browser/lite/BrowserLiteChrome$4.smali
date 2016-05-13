.class Lcom/facebook/browser/lite/BrowserLiteChrome$4;
.super Ljava/lang/Object;
.source "qe"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteChrome;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$4;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$4;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->b()Z

    .line 257
    return-void
.end method
