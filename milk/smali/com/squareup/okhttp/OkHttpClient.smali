.class public final Lcom/squareup/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private authenticator:Lcom/squareup/okhttp/Authenticator;

.field private cache:Lcom/squareup/okhttp/Cache;

.field private connectTimeout:I

.field private connectionPool:Lcom/squareup/okhttp/ConnectionPool;

.field private cookieHandler:Ljava/net/CookieHandler;

.field private dispatcher:Lcom/squareup/okhttp/Dispatcher;

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private internalCache:Lcom/squareup/okhttp/internal/InternalCache;

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private final routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 155
    new-instance v0, Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    .line 156
    new-instance v0, Lcom/squareup/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/squareup/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/RouteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    return-object v0
.end method

.method private declared-synchronized getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/squareup/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 499
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 500
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 501
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    sput-object v2, Lcom/squareup/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    :try_start_2
    sget-object v2, Lcom/squareup/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Dispatcher;->cancel(Ljava/lang/Object;)V

    .line 449
    return-object p0
.end method

.method public clone()Lcom/squareup/okhttp/OkHttpClient;
    .locals 2

    .prologue
    .line 512
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;
    .locals 4

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    .line 458
    .local v0, "result":Lcom/squareup/okhttp/OkHttpClient;
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 459
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 461
    :cond_0
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 462
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 464
    :cond_1
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 465
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 467
    :cond_2
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 468
    invoke-direct {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 470
    :cond_3
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    .line 471
    sget-object v1, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 473
    :cond_4
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    if-nez v1, :cond_5

    .line 474
    sget-object v1, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/squareup/okhttp/Authenticator;

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    .line 476
    :cond_5
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    if-nez v1, :cond_6

    .line 477
    invoke-static {}, Lcom/squareup/okhttp/ConnectionPool;->getDefault()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 479
    :cond_6
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    if-nez v1, :cond_7

    .line 480
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/squareup/okhttp/Protocol;

    const/4 v2, 0x0

    sget-object v3, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 482
    :cond_7
    return-object v0
.end method

.method public getAuthenticator()Lcom/squareup/okhttp/Authenticator;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    return-object v0
.end method

.method public getCache()Lcom/squareup/okhttp/Cache;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->cache:Lcom/squareup/okhttp/Cache;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    return-object v0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getDispatcher()Lcom/squareup/okhttp/Dispatcher;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    return-object v0
.end method

.method public getFollowSslRedirects()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    return v0
.end method

.method getRoutesDatabase()Lcom/squareup/okhttp/internal/RouteDatabase;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    return v0
.end method

.method internalCache()Lcom/squareup/okhttp/internal/InternalCache;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    return-object v0
.end method

.method public newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;
    .locals 3
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    .line 440
    .local v0, "client":Lcom/squareup/okhttp/OkHttpClient;
    new-instance v1, Lcom/squareup/okhttp/Call;

    iget-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    invoke-direct {v1, v0, v2, p1}, Lcom/squareup/okhttp/Call;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Dispatcher;Lcom/squareup/okhttp/Request;)V

    return-object v1
.end method

.method public setAuthenticator(Lcom/squareup/okhttp/Authenticator;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "authenticator"    # Lcom/squareup/okhttp/Authenticator;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->authenticator:Lcom/squareup/okhttp/Authenticator;

    .line 335
    return-object p0
.end method

.method public setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1
    .param p1, "cache"    # Lcom/squareup/okhttp/Cache;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->cache:Lcom/squareup/okhttp/Cache;

    .line 272
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/squareup/okhttp/Cache;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    .line 273
    return-object p0

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 165
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 168
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_2
    long-to-int v2, v0

    iput v2, p0, Lcom/squareup/okhttp/OkHttpClient;->connectTimeout:I

    .line 170
    return-void
.end method

.method public setConnectionPool(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "connectionPool"    # Lcom/squareup/okhttp/ConnectionPool;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 350
    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 253
    return-object p0
.end method

.method public setDispatcher(Lcom/squareup/okhttp/Dispatcher;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 2
    .param p1, "dispatcher"    # Lcom/squareup/okhttp/Dispatcher;

    .prologue
    .line 382
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    .line 384
    return-object p0
.end method

.method public setFollowSslRedirects(Z)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/squareup/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 366
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 319
    return-object p0
.end method

.method setInternalCache(Lcom/squareup/okhttp/internal/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lcom/squareup/okhttp/internal/InternalCache;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->cache:Lcom/squareup/okhttp/Cache;

    .line 264
    return-void
.end method

.method public setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)",
            "Lcom/squareup/okhttp/OkHttpClient;"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 419
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 426
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 219
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 237
    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 183
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 186
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_2
    long-to-int v2, v0

    iput v2, p0, Lcom/squareup/okhttp/OkHttpClient;->readTimeout:I

    .line 188
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 288
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 302
    return-object p0
.end method

.method public setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 199
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 202
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    long-to-int v2, v0

    iput v2, p0, Lcom/squareup/okhttp/OkHttpClient;->writeTimeout:I

    .line 204
    return-void
.end method
