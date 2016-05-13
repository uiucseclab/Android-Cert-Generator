.class public Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;
.super Ljava/lang/Object;
.source "process_name"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 42
    :goto_0
    return-object v0

    .line 32
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    invoke-virtual {v3}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance v0, Landroid/webkit/WebResourceResponse;

    iget-object v3, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    invoke-virtual {v3}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    invoke-virtual {v4}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 40
    iput-object v1, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    .line 41
    iput-object v1, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->a:Ljava/lang/String;

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    .line 24
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager;->b:Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/prefetch/BrowserPrefetchCacheManager$CacheEntry;->a()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
