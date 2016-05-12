.class public final Lcom/squareup/okhttp/internal/huc/CacheAdapter;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/InternalCache;


# instance fields
.field private final delegate:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .locals 0
    .param p1, "delegate"    # Ljava/net/ResponseCache;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    .line 37
    return-void
.end method

.method private getJavaCachedResponse(Lcom/squareup/okhttp/Request;)Ljava/net/CacheResponse;
    .locals 4
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractJavaHeaders(Lcom/squareup/okhttp/Request;)Ljava/util/Map;

    move-result-object v0

    .line 87
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 2
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->getJavaCachedResponse(Lcom/squareup/okhttp/Request;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 45
    .local v0, "javaResponse":Ljava/net/CacheResponse;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createOkResponse(Lcom/squareup/okhttp/Request;Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    goto :goto_0
.end method

.method public getDelegate()Ljava/net/ResponseCache;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public put(Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;
    .locals 3
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    .line 53
    .local v1, "uri":Ljava/net/URI;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createJavaUrlConnection(Lcom/squareup/okhttp/Response;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 54
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {v2, v1, v0}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v2

    return-object v2
.end method

.method public remove(Lcom/squareup/okhttp/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .param p1, "cacheStrategy"    # Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .prologue
    .line 79
    return-void
.end method

.method public update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 0
    .param p1, "cached"    # Lcom/squareup/okhttp/Response;
    .param p2, "network"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method
