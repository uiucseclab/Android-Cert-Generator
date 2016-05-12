.class Lcom/facebook/browser/lite/BrowserLiteFragment$2;
.super Ljava/lang/Object;
.source "publish_result_history"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteWebView;

.field final synthetic b:Lcom/facebook/browser/lite/BrowserLiteFragment;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteFragment;Lcom/facebook/browser/lite/BrowserLiteWebView;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$2;->b:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$2;->a:Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$2;->b:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c(Ljava/lang/String;)Z

    .line 282
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$2;->a:Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$2;->a:Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->goBack()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$2;->b:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c()V

    goto :goto_0
.end method
