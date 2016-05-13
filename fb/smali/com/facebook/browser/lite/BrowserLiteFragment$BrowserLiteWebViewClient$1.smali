.class Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;
.super Ljava/lang/Object;
.source "publish_result_history"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->c:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->c:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;->c:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 723
    :cond_0
    return-void
.end method
