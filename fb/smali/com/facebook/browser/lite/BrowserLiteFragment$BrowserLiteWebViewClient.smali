.class Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "publish_result_history"


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/browser/lite/BrowserLiteFragment;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 756
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 758
    sget-object v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v2, "onPageFinished %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-boolean v1, v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->p:Z

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v1, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setDomain(Ljava/lang/String;)V

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v1, v0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-static {v0, v5}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteFragment;Z)Z

    .line 764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Ljava/lang/String;)V

    .line 769
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 743
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v1, "onPageStarted %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    .line 61
    iput-object p2, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->l:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-boolean v0, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->p:Z

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0, p2}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setDomain(Ljava/lang/String;)V

    .line 749
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 705
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v1, "onReceivedError %d, %s, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, -0xa

    if-ne v0, p2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->l:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ui/browser/common/BrowserURLUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, p4}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 717
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;

    invoke-direct {v1, p0, p1, p4}, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient$1;-><init>(Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    const v4, -0x51ae2a91

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 727
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 694
    if-eqz p2, :cond_0

    .line 695
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 697
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    .line 732
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v1, "onReceivedSslError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {p1, v1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_0

    .line 734
    new-instance v0, Lcom/facebook/browser/lite/widget/SSLDialogFragment;

    invoke-direct {v0}, Lcom/facebook/browser/lite/widget/SSLDialogFragment;-><init>()V

    .line 735
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/SSLDialogFragment;->a(Lcom/facebook/browser/lite/BrowserLiteFragment;)V

    .line 736
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SSLDialog"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/browser/lite/widget/SSLDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 738
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 739
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 680
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->g:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;

    invoke-virtual {v0, p2}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_0

    .line 682
    sget-object v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v2, "Use prefetched response for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 640
    :try_start_0
    sget-object v3, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v4, "shouldOverrideUrlLoading %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    check-cast p1, Lcom/facebook/browser/lite/BrowserLiteWebView;

    .line 642
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "about:blank"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-boolean v3, v3, Lcom/facebook/browser/lite/BrowserLiteFragment;->n:Z

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 645
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(Lcom/facebook/browser/lite/BrowserLiteFragment;Z)Z

    .line 646
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->l()V

    .line 649
    :cond_3
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 650
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v2, p1, p2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    sget-object v2, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v3, "shouldOverrideUrlLoading error"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 675
    goto :goto_0

    .line 654
    :cond_4
    :try_start_1
    invoke-static {p2}, Lcom/facebook/ui/browser/common/BrowserURLUtil;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 655
    invoke-static {v2}, Lcom/facebook/browser/lite/common/BrowserLiteUriRedirector;->a(Landroid/net/Uri;)Z

    move-result v3

    .line 656
    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v3, v3, Lcom/facebook/browser/lite/BrowserLiteFragment;->h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 657
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v2, p1, p2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/facebook/ui/browser/common/BrowserURLUtil;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    .line 662
    goto :goto_0

    .line 663
    :cond_6
    if-nez v2, :cond_7

    .line 665
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v2, p2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c(Ljava/lang/String;)Z

    .line 666
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v2, p1, p2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_7
    iget-object v3, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v2, v4, v5}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Landroid/webkit/WebView;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
