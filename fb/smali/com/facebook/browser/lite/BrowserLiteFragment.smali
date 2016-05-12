.class public Lcom/facebook/browser/lite/BrowserLiteFragment;
.super Landroid/app/Fragment;
.source "publish_result_history"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EmptyCatchBlock"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/facebook/browser/lite/BrowserLiteWebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/Intent;

.field private e:Landroid/widget/FrameLayout;

.field public f:Lcom/facebook/browser/lite/BrowserLiteChrome;

.field public g:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;

.field public h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

.field private i:Lcom/facebook/browser/lite/BrowserLiteActivity$1;

.field public j:I

.field private k:J

.field public l:Ljava/lang/String;

.field private m:Z

.field public n:Z

.field private o:Z

.field public p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/facebook/browser/lite/BrowserLiteFragment$1;

    invoke-direct {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment$1;-><init>()V

    sput-object v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->r:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    .line 84
    iput v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->j:I

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->k:J

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->m:Z

    .line 89
    iput-boolean v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->o:Z

    .line 772
    return-void
.end method

.method private a(Lcom/facebook/browser/lite/BrowserLiteWebView;)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Lcom/facebook/browser/lite/BrowserLiteWebView;)V

    .line 258
    return-void
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ui/browser/common/BrowserURLUtil;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ui/browser/common/BrowserURLUtil;->d(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/browser/lite/BrowserLiteFragment;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->o:Z

    return p1
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0x3c

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    .line 609
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 611
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/facebook/ui/browser/common/BrowserURLUtil;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/browser/lite/BrowserLiteFragment;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->n:Z

    return p1
.end method

.method private c(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 362
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 366
    :cond_0
    return-void
.end method

.method private static d(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 502
    if-eqz p0, :cond_1

    .line 503
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 505
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 506
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 507
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearView()V

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    .line 511
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 513
    :cond_1
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    .line 193
    new-instance v0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;

    invoke-direct {v0}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;-><init>()V

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->g:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;

    .line 194
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->d:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_PREFETCH_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->g:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    const-string v4, "KEY_PREFETCH_FINAL_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KEY_PREFETCH_FILE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KEY_PREFETCH_MIME_TYPE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "KEY_PREFETCH_ENCODING"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->a(Ljava/lang/String;Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;)V

    goto :goto_0
.end method

.method private h()Lcom/facebook/browser/lite/BrowserLiteWebView;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->onPause()V

    .line 228
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setVisibility(I)V

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->j()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteWebView;)V

    .line 233
    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c()V

    .line 254
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/BrowserLiteWebView;

    .line 242
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 244
    invoke-static {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->d(Landroid/webkit/WebView;)V

    .line 245
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    .line 246
    if-nez v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c()V

    goto :goto_0

    .line 250
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setVisibility(I)V

    .line 251
    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->onResume()V

    .line 252
    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteWebView;)V

    goto :goto_0
.end method

.method private j()Lcom/facebook/browser/lite/BrowserLiteWebView;
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 261
    new-instance v0, Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010085

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/browser/lite/BrowserLiteWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-virtual {v0, v5}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setFocusable(Z)V

    .line 268
    invoke-virtual {v0, v5}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setFocusableInTouchMode(Z)V

    .line 269
    invoke-virtual {v0, v5}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setScrollbarFadingEnabled(Z)V

    .line 270
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setScrollBarStyle(I)V

    .line 271
    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/browser/lite/BrowserLiteFragment$2;-><init>(Lcom/facebook/browser/lite/BrowserLiteFragment;Lcom/facebook/browser/lite/BrowserLiteWebView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 290
    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 292
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 293
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 294
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 295
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 296
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 297
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 298
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 300
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 302
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 310
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 311
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 312
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->d:Landroid/content/Intent;

    const-string v3, "com.facebook.browser.lite.intent.EXTRA_UA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 320
    :cond_1
    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;

    invoke-direct {v2, p0}, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserLiteWebViewClient;-><init>(Lcom/facebook/browser/lite/BrowserLiteFragment;)V

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 321
    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    invoke-direct {v2, v0, p0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;-><init>(Lcom/facebook/browser/lite/BrowserLiteWebView;Lcom/facebook/browser/lite/BrowserLiteFragment;)V

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 322
    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteFragment$3;

    invoke-direct {v2, p0}, Lcom/facebook/browser/lite/BrowserLiteFragment$3;-><init>(Lcom/facebook/browser/lite/BrowserLiteFragment;)V

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setOnPageInteractiveListener(Lcom/facebook/browser/lite/BrowserLiteFragment$3;)V

    .line 333
    invoke-virtual {v0, v6}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setHapticFeedbackEnabled(Z)V

    .line 335
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 336
    const-wide/32 v2, 0x500000

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 337
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 338
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 340
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 341
    iget-boolean v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->q:Z

    invoke-static {v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 344
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 345
    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c(Landroid/webkit/WebView;)V

    .line 348
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 351
    :cond_3
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->k()V

    .line 353
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 354
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private k()V
    .locals 7

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 381
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 382
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 389
    const-string v1, "com.facebook.browser.lite.intent.EXTRA_COOKIES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 392
    if-eqz v3, :cond_3

    .line 393
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    iget-object v5, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    invoke-static {v5}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 369
    const-string v6, "fr="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    if-eqz v5, :cond_1

    .line 396
    :cond_0
    const-string v5, "https://facebook.com/"

    invoke-virtual {v2, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 386
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->n:Z

    goto :goto_0

    .line 401
    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 402
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 440
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/webkit/WebView;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p3    # Ljava/util/Map;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->k:J

    .line 523
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    sget-object v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v2, "Failed postUrl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->g:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 537
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 538
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 539
    const-string v1, "http://m.facebook.com"

    const-string v2, "<!DOCTYPE HTML>\n<html lang=\"en-US\">\n    <head>\n        <meta charset=\"UTF-8\">\n        <meta http-equiv=\"refresh\" content=\"0;url=%s\">\n        <script type=\"text/javascript\">\n            window.location.href = \"%s\"\n        </script>\n    </head>\n    <body/>\n</html>"

    invoke-static {v2, v0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {p1, v0, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 549
    :cond_3
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/facebook/browser/lite/BrowserLiteActivity$1;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->i:Lcom/facebook/browser/lite/BrowserLiteActivity$1;

    .line 450
    return-void
.end method

.method public final a(Lcom/facebook/browser/lite/BrowserLiteWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->i()V

    .line 634
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 414
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setTitle(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_0

    .line 131
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a()Z

    move-result v0

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/webkit/WebView;ZLandroid/os/Message;)Z
    .locals 2

    .prologue
    .line 424
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->h()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v1

    .line 426
    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 427
    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v0, "window.QuoteShareInterface.reportSelectedText(window.getSelection().toString(), window.location.href);"

    .line 189
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/webkit/WebView;)Z
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->i:Lcom/facebook/browser/lite/BrowserLiteActivity$1;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->i:Lcom/facebook/browser/lite/BrowserLiteActivity$1;

    iget v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->j:I

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteActivity$1;->a(I)V

    .line 456
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 586
    sget-object v2, Lcom/facebook/browser/lite/BrowserLiteFragment;->a:Ljava/lang/String;

    const-string v3, "handleInvalidProtocol %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v2, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d(Ljava/lang/String;)I

    move-result v2

    .line 589
    packed-switch v2, :pswitch_data_0

    .line 597
    const v0, 0x7f091313

    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b(I)V

    move v0, v1

    .line 600
    :pswitch_0
    iget-boolean v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->o:Z

    if-nez v1, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c()V

    .line 603
    :cond_0
    :goto_0
    return v0

    .line 591
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 568
    const/4 v2, 0x2

    iput v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->j:I

    .line 569
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v2

    .line 570
    if-nez v2, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getWebChromeClient()Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getWebChromeClient()Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 574
    goto :goto_0

    .line 575
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 576
    invoke-virtual {v2}, Lcom/facebook/browser/lite/BrowserLiteWebView;->goBack()V

    move v0, v1

    .line 577
    goto :goto_0

    .line 578
    :cond_3
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->i()V

    move v0, v1

    .line 580
    goto :goto_0
.end method

.method public final g()Lcom/facebook/browser/lite/BrowserLiteWebView;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/BrowserLiteWebView;

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 408
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 410
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 411
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->d:Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->d:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    .line 158
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->d:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_IS_IN_APP_BROWSER_PROFILING_ENABLED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->q:Z

    .line 165
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->l:Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->f()V

    .line 167
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e05c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/BrowserLiteChrome;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    .line 168
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;

    invoke-direct {v1, p0}, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;-><init>(Lcom/facebook/browser/lite/BrowserLiteFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setBrowserChromeDelegate(Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;)V

    .line 170
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->d:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_SHOW_DOMAIN_NAME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->p:Z

    .line 172
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e05be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->e:Landroid/widget/FrameLayout;

    .line 173
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->h()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->d:Landroid/content/Intent;

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_POST_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :goto_1
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->c:Landroid/net/Uri;

    sget-object v3, Lcom/facebook/browser/lite/BrowserLiteFragment;->r:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Landroid/webkit/WebView;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getWebChromeClient()Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->a(IILandroid/content/Intent;)Z

    .line 214
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 615
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 617
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->f:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->b()Z

    .line 620
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-static {}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a()Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 149
    const v0, 0x7f030183

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 494
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/BrowserLiteWebView;

    .line 497
    invoke-static {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->d(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 12

    .prologue
    .line 470
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 471
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->onPause()V

    .line 474
    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->pauseTimers()V

    .line 476
    iget-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->m:Z

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->m:Z

    .line 479
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/facebook/browser/lite/BrowserLiteWebView;

    .line 480
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v10}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getFirstUrl()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/browser/lite/BrowserLiteFragment;->k:J

    invoke-virtual {v10}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getResponseEndTime()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getDomContentloadedTime()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getLoadEventEndTime()J

    move-result-wide v8

    invoke-virtual {v10}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getFirstScrollReadyTime()J

    move-result-wide v10

    invoke-virtual/range {v0 .. v11}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a(Ljava/lang/String;JJJJJ)V

    .line 489
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 460
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 461
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->g()Lcom/facebook/browser/lite/BrowserLiteWebView;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->onResume()V

    .line 464
    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->resumeTimers()V

    .line 466
    :cond_0
    return-void
.end method
