.class public final Lcom/squareup/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field private static final EMPTY_BODY:Lcom/squareup/okhttp/ResponseBody;

.field public static final MAX_REDIRECTS:I = 0x14


# instance fields
.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lokio/BufferedSink;

.field private cacheResponse:Lcom/squareup/okhttp/Response;

.field private cacheStrategy:Lcom/squareup/okhttp/internal/http/CacheStrategy;

.field final client:Lcom/squareup/okhttp/OkHttpClient;

.field private connection:Lcom/squareup/okhttp/Connection;

.field private networkRequest:Lcom/squareup/okhttp/Request;

.field private networkResponse:Lcom/squareup/okhttp/Response;

.field private final priorResponse:Lcom/squareup/okhttp/Response;

.field private requestBodyOut:Lokio/Sink;

.field private responseBody:Lokio/BufferedSource;

.field private responseBodyBytes:Ljava/io/InputStream;

.field private responseTransferSource:Lokio/Source;

.field private route:Lcom/squareup/okhttp/Route;

.field private routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

.field sentRequestMillis:J

.field private storeRequest:Ljava/net/CacheRequest;

.field private transparentGzip:Z

.field private transport:Lcom/squareup/okhttp/internal/http/Transport;

.field private final userRequest:Lcom/squareup/okhttp/Request;

.field private userResponse:Lcom/squareup/okhttp/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/squareup/okhttp/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZLcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RouteSelector;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V
    .locals 2
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p5, "routeSelector"    # Lcom/squareup/okhttp/internal/http/RouteSelector;
    .param p6, "requestBodyOut"    # Lcom/squareup/okhttp/internal/http/RetryableSink;
    .param p7, "priorResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 193
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 194
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    .line 195
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 196
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 197
    iput-object p5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 198
    iput-object p6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    .line 199
    iput-object p7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/squareup/okhttp/Response;

    .line 201
    if-eqz p4, :cond_0

    .line 202
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, p4, p0}, Lcom/squareup/okhttp/internal/Internal;->setOwner(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    .line 203
    invoke-virtual {p4}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->route:Lcom/squareup/okhttp/Route;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->route:Lcom/squareup/okhttp/Route;

    goto :goto_0
.end method

.method private static combine(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Headers;
    .locals 5
    .param p0, "cachedHeaders"    # Lcom/squareup/okhttp/Headers;
    .param p1, "networkHeaders"    # Lcom/squareup/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    new-instance v2, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 762
    .local v2, "result":Lcom/squareup/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 763
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 762
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_1
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 769
    :cond_2
    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_1

    .line 773
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 774
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 775
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 776
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 773
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 780
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v4

    return-object v4
.end method

.method private connect(Lcom/squareup/okhttp/Request;)V
    .locals 13
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-nez v2, :cond_4

    .line 300
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "uriHost":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 302
    :cond_1
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_2
    const/4 v4, 0x0

    .line 305
    .local v4, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v5, 0x0

    .line 306
    .local v5, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 308
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    .line 310
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/Address;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/squareup/okhttp/OkHttpClient;->getAuthenticator()Lcom/squareup/okhttp/Authenticator;

    move-result-object v6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v8}, Lcom/squareup/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/squareup/okhttp/Address;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;)V

    .line 313
    .local v0, "address":Lcom/squareup/okhttp/Address;
    new-instance v6, Lcom/squareup/okhttp/internal/http/RouteSelector;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v8

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v9

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v10

    sget-object v11, Lcom/squareup/okhttp/internal/Dns;->DEFAULT:Lcom/squareup/okhttp/internal/Dns;

    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/Internal;->routeDatabase(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v6 .. v12}, Lcom/squareup/okhttp/internal/http/RouteSelector;-><init>(Lcom/squareup/okhttp/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/internal/Dns;Lcom/squareup/okhttp/internal/RouteDatabase;)V

    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 317
    .end local v0    # "address":Lcom/squareup/okhttp/Address;
    .end local v1    # "uriHost":Ljava/lang/String;
    .end local v4    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v5    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    :cond_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/RouteSelector;->next(Ljava/lang/String;)Lcom/squareup/okhttp/Connection;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 318
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2, v3, p0}, Lcom/squareup/okhttp/internal/Internal;->setOwner(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    .line 320
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/Internal;->isConnected(Lcom/squareup/okhttp/Connection;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 321
    sget-object v6, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v8

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v9

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v10

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-direct {p0, v2, p1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->tunnelRequest(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/squareup/okhttp/internal/Internal;->connect(Lcom/squareup/okhttp/Connection;IIILcom/squareup/okhttp/Request;)V

    .line 323
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/Internal;->isSpdy(Lcom/squareup/okhttp/Connection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v3

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2, v3, v6}, Lcom/squareup/okhttp/internal/Internal;->share(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    .line 326
    :cond_5
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/Internal;->routeDatabase(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/RouteDatabase;->connected(Lcom/squareup/okhttp/Route;)V

    .line 328
    :cond_6
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/squareup/okhttp/internal/Internal;->setTimeouts(Lcom/squareup/okhttp/Connection;II)V

    .line 329
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->route:Lcom/squareup/okhttp/Route;

    .line 330
    return-void
.end method

.method public static hostHeader(Ljava/net/URL;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 625
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initContentStream(Lokio/Source;)V
    .locals 3
    .param p1, "transferSource"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseTransferSource:Lokio/Source;

    .line 546
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    .line 551
    new-instance v0, Lokio/GzipSource;

    invoke-direct {v0, p1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBody:Lokio/BufferedSource;

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBody:Lokio/BufferedSource;

    goto :goto_0
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 425
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_0

    move v1, v2

    .line 427
    .local v1, "sslFailure":Z
    :goto_0
    instance-of v0, p1, Ljava/net/ProtocolException;

    .line 428
    .local v0, "protocolFailure":Z
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "protocolFailure":Z
    .end local v1    # "sslFailure":Z
    :cond_0
    move v1, v3

    .line 425
    goto :goto_0

    .restart local v0    # "protocolFailure":Z
    .restart local v1    # "sslFailure":Z
    :cond_1
    move v2, v3

    .line 428
    goto :goto_1
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/Internal;->internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v0

    .line 441
    .local v0, "responseCache":Lcom/squareup/okhttp/internal/InternalCache;
    if-nez v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/InternalCache;->remove(Lcom/squareup/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/InternalCache;->put(Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->storeRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private networkRequest(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;
    .locals 6
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 594
    .local v3, "result":Lcom/squareup/okhttp/Request$Builder;
    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 595
    const-string v4, "Host"

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hostHeader(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 598
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Connection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-eq v4, v5, :cond_2

    :cond_1
    const-string v4, "Connection"

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 600
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 603
    :cond_2
    const-string v4, "Accept-Encoding"

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 604
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 605
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 608
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/squareup/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 609
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_4

    .line 613
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 615
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 618
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v3, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->addCookies(Lcom/squareup/okhttp/Request$Builder;Ljava/util/Map;)V

    .line 621
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v4

    return-object v4
.end method

.method private static stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 2
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 290
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p0

    .end local p0    # "response":Lcom/squareup/okhttp/Response;
    :cond_0
    return-object p0
.end method

.method private tunnelRequest(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;
    .locals 10
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p2, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/Route;->requiresTunnel()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 813
    :goto_0
    return-object v6

    .line 793
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v2

    .line 795
    .local v2, "port":I
    const-string v6, "https"

    invoke-static {v6}, Lcom/squareup/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_3

    move-object v0, v1

    .line 796
    .local v0, "authority":Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v6}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    new-instance v7, Ljava/net/URL;

    const-string v8, "https"

    const-string v9, "/"

    invoke-direct {v7, v8, v1, v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v6

    const-string v7, "Host"

    invoke-virtual {v6, v7, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v6

    const-string v7, "Proxy-Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v6, v7, v8}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    .line 802
    .local v4, "result":Lcom/squareup/okhttp/Request$Builder;
    const-string v6, "User-Agent"

    invoke-virtual {p2, v6}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, "userAgent":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 804
    const-string v6, "User-Agent"

    invoke-virtual {v4, v6, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 808
    :cond_1
    const-string v6, "Proxy-Authorization"

    invoke-virtual {p2, v6}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, "proxyAuthorization":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 810
    const-string v6, "Proxy-Authorization"

    invoke-virtual {v4, v6, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 813
    :cond_2
    invoke-virtual {v4}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v6

    goto :goto_0

    .line 795
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "proxyAuthorization":Ljava/lang/String;
    .end local v4    # "result":Lcom/squareup/okhttp/Request$Builder;
    .end local v5    # "userAgent":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static validate(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)Z
    .locals 7
    .param p0, "cached"    # Lcom/squareup/okhttp/Response;
    .param p1, "network"    # Lcom/squareup/okhttp/Response;

    .prologue
    const/4 v2, 0x1

    .line 736
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    const/16 v4, 0x130

    if-ne v3, v4, :cond_1

    .line 752
    :cond_0
    :goto_0
    return v2

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 744
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 746
    .local v1, "networkLastModified":Ljava/util/Date;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 752
    .end local v1    # "networkLastModified":Ljava/util/Date;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()Lcom/squareup/okhttp/Connection;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 499
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBody:Lokio/BufferedSource;

    if-nez v2, :cond_3

    .line 500
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 501
    :cond_1
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    move-object v0, v1

    .line 525
    :goto_1
    return-object v0

    .line 494
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 506
    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBody:Lokio/BufferedSource;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 509
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyBytes:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 512
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/http/Transport;->canReuseConnection()Z

    move-result v2

    if-nez v2, :cond_4

    .line 513
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 514
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    move-object v0, v1

    .line 515
    goto :goto_1

    .line 519
    :cond_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/Internal;->clearOwner(Lcom/squareup/okhttp/Connection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 520
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 523
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 524
    .local v0, "result":Lcom/squareup/okhttp/Connection;
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    goto :goto_1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v0, :cond_0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v0, p0}, Lcom/squareup/okhttp/internal/http/Transport;->disconnect(Lcom/squareup/okhttp/internal/http/HttpEngine;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public followUpRequest()Lcom/squareup/okhttp/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 829
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    if-nez v7, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    .line 833
    .local v4, "selectedProxy":Ljava/net/Proxy;
    :goto_0
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    .line 835
    .local v2, "responseCode":I
    sparse-switch v2, :sswitch_data_0

    .line 885
    :cond_1
    :goto_1
    return-object v6

    .line 830
    .end local v2    # "responseCode":I
    .end local v4    # "selectedProxy":Ljava/net/Proxy;
    :cond_2
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    goto :goto_0

    .line 837
    .restart local v2    # "responseCode":I
    .restart local v4    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_3

    .line 838
    new-instance v6, Ljava/net/ProtocolException;

    const-string v7, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 842
    :cond_3
    :sswitch_1
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/squareup/okhttp/OkHttpClient;->getAuthenticator()Lcom/squareup/okhttp/Authenticator;

    move-result-object v6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v6, v7, v4}, Lcom/squareup/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/squareup/okhttp/Authenticator;Lcom/squareup/okhttp/Response;Ljava/net/Proxy;)Lcom/squareup/okhttp/Request;

    move-result-object v6

    goto :goto_1

    .line 847
    :sswitch_2
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HEAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 855
    :cond_4
    :sswitch_3
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    const-string v8, "Location"

    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 857
    new-instance v5, Ljava/net/URL;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 860
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 863
    :cond_5
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v8}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 864
    .local v3, "sameProtocol":Z
    if-nez v3, :cond_6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/squareup/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 867
    :cond_6
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 868
    .local v1, "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 869
    const-string v7, "GET"

    invoke-virtual {v1, v7, v6}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 870
    const-string v6, "Transfer-Encoding"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 871
    const-string v6, "Content-Length"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 872
    const-string v6, "Content-Type"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 878
    :cond_7
    invoke-virtual {p0, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sameConnection(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 879
    const-string v6, "Authorization"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 882
    :cond_8
    invoke-virtual {v1, v5}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v6

    goto/16 :goto_1

    .line 835
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBufferedRequestBody()Lokio/BufferedSink;
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    .line 354
    .local v1, "result":Lokio/BufferedSink;
    if-eqz v1, :cond_0

    .line 356
    .end local v1    # "result":Lokio/BufferedSink;
    :goto_0
    return-object v1

    .line 355
    .restart local v1    # "result":Lokio/BufferedSink;
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Lokio/Sink;

    move-result-object v0

    .line 356
    .local v0, "requestBody":Lokio/Sink;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getConnection()Lcom/squareup/okhttp/Connection;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    return-object v0
.end method

.method public getRequest()Lcom/squareup/okhttp/Request;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method public getRequestBody()Lokio/Sink;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/squareup/okhttp/internal/http/CacheStrategy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    return-object v0
.end method

.method public getResponse()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public getResponseBody()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBody:Lokio/BufferedSource;

    return-object v0
.end method

.method public getResponseBodyBytes()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyBytes:Ljava/io/InputStream;

    .line 383
    .local v0, "result":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    .end local v0    # "result":Ljava/io/InputStream;
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyBytes:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getRoute()Lcom/squareup/okhttp/Route;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->route:Lcom/squareup/okhttp/Route;

    return-object v0
.end method

.method hasRequestBody()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/Util;->emptySink()Lcom/squareup/okhttp/internal/http/RetryableSink;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseBody()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 563
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v1

    .line 567
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 568
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 571
    goto :goto_0

    .line 577
    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Response;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    const-string v3, "chunked"

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 579
    goto :goto_0
.end method

.method public readResponse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, -0x1

    .line 635
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    if-eqz v3, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    if-nez v3, :cond_2

    .line 639
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "call sendRequest() first!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    if-eqz v3, :cond_0

    .line 646
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 647
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V

    .line 650
    :cond_3
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_5

    .line 651
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Request;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v3, v3, Lcom/squareup/okhttp/internal/http/RetryableSink;

    if-eqz v3, :cond_4

    .line 654
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    check-cast v3, Lcom/squareup/okhttp/internal/http/RetryableSink;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 655
    .local v0, "contentLength":J
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    .line 659
    .end local v0    # "contentLength":J
    :cond_4
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    .line 662
    :cond_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v3, :cond_6

    .line 663
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v3, :cond_7

    .line 665
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->close()V

    .line 669
    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v3, v3, Lcom/squareup/okhttp/internal/http/RetryableSink;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/squareup/okhttp/internal/Util;->emptySink()Lcom/squareup/okhttp/internal/http/RetryableSink;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 670
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    check-cast v3, Lcom/squareup/okhttp/internal/http/RetryableSink;

    invoke-interface {v4, v3}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V

    .line 674
    :cond_6
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/http/Transport;->flushRequest()V

    .line 676
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/http/Transport;->readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Connection;->getHandshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    sget-object v4, Lcom/squareup/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    sget-object v4, Lcom/squareup/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    .line 682
    sget-object v3, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response;->protocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/internal/Internal;->setProtocol(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/Protocol;)V

    .line 683
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/squareup/okhttp/Headers;)V

    .line 686
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    if-eqz v3, :cond_9

    .line 687
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->validate(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 688
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->combine(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    .line 695
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/http/Transport;->emptyTransferStream()V

    .line 696
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 700
    sget-object v3, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/Internal;->internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v2

    .line 701
    .local v2, "responseCache":Lcom/squareup/okhttp/internal/InternalCache;
    invoke-interface {v2}, Lcom/squareup/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    .line 702
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/InternalCache;->update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    .line 704
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 705
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->initContentStream(Lokio/Source;)V

    goto/16 :goto_0

    .line 667
    .end local v2    # "responseCache":Lcom/squareup/okhttp/internal/InternalCache;
    :cond_7
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-interface {v3}, Lokio/Sink;->close()V

    goto/16 :goto_1

    .line 709
    :cond_8
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 713
    :cond_9
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    .line 720
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-nez v3, :cond_a

    .line 722
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->storeRequest:Ljava/net/CacheRequest;

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/http/Transport;->getTransferStream(Ljava/net/CacheRequest;)Lokio/Source;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseTransferSource:Lokio/Source;

    .line 723
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseTransferSource:Lokio/Source;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBody:Lokio/BufferedSource;

    goto/16 :goto_0

    .line 727
    :cond_a
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 728
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->storeRequest:Ljava/net/CacheRequest;

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/http/Transport;->getTransferStream(Ljava/net/CacheRequest;)Lokio/Source;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->initContentStream(Lokio/Source;)V

    goto/16 :goto_0
.end method

.method public receiveHeaders(Lcom/squareup/okhttp/Headers;)V
    .locals 3
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 818
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_0

    .line 819
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/squareup/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 821
    :cond_0
    return-void
.end method

.method public recover(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public recover(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 9
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lokio/Sink;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/squareup/okhttp/Connection;Ljava/io/IOException;)V

    .line 403
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/squareup/okhttp/internal/http/RetryableSink;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v8, 0x1

    .line 404
    .local v8, "canRetryRequestBody":Z
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->isRecoverable(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v8, :cond_6

    .line 408
    :cond_4
    const/4 v0, 0x0

    .line 414
    :goto_1
    return-object v0

    .line 403
    .end local v8    # "canRetryRequestBody":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 411
    .restart local v8    # "canRetryRequestBody":Z
    :cond_6
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/Connection;

    move-result-object v4

    .line 414
    .local v4, "connection":Lcom/squareup/okhttp/Connection;
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    move-object v6, p2

    check-cast v6, Lcom/squareup/okhttp/internal/http/RetryableSink;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/squareup/okhttp/Response;

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZLcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RouteSelector;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    goto :goto_1
.end method

.method public releaseConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/Transport;->releaseConnectionOnIdle()V

    .line 468
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 469
    return-void
.end method

.method public sameConnection(Ljava/net/URL;)Z
    .locals 3
    .param p1, "followUp"    # Ljava/net/URL;

    .prologue
    .line 894
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    .line 895
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 215
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/squareup/okhttp/internal/http/CacheStrategy;

    if-eqz v6, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v6, :cond_2

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 218
    :cond_2
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-direct {p0, v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;

    move-result-object v3

    .line 220
    .local v3, "request":Lcom/squareup/okhttp/Request;
    sget-object v6, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v6, v7}, Lcom/squareup/okhttp/internal/Internal;->internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v4

    .line 221
    .local v4, "responseCache":Lcom/squareup/okhttp/internal/InternalCache;
    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Lcom/squareup/okhttp/internal/InternalCache;->get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 225
    .local v0, "cacheCandidate":Lcom/squareup/okhttp/Response;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 226
    .local v1, "now":J
    new-instance v6, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;

    invoke-direct {v6, v1, v2, v3, v0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .line 227
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/squareup/okhttp/internal/http/CacheStrategy;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    .line 228
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/squareup/okhttp/internal/http/CacheStrategy;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/squareup/okhttp/Response;

    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 230
    if-eqz v4, :cond_3

    .line 231
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/squareup/okhttp/internal/http/CacheStrategy;

    invoke-interface {v4, v6}, Lcom/squareup/okhttp/internal/InternalCache;->trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V

    .line 234
    :cond_3
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    if-nez v6, :cond_4

    .line 235
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 238
    :cond_4
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    if-eqz v6, :cond_8

    .line 240
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-nez v5, :cond_5

    .line 241
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/squareup/okhttp/Request;

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->connect(Lcom/squareup/okhttp/Request;)V

    .line 245
    :cond_5
    sget-object v5, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/Internal;->getOwner(Lcom/squareup/okhttp/Connection;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_7

    sget-object v5, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/Internal;->isSpdy(Lcom/squareup/okhttp/Connection;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 246
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .end local v0    # "cacheCandidate":Lcom/squareup/okhttp/Response;
    .end local v1    # "now":J
    :cond_6
    move-object v0, v5

    .line 221
    goto :goto_1

    .line 249
    .restart local v0    # "cacheCandidate":Lcom/squareup/okhttp/Response;
    .restart local v1    # "now":J
    :cond_7
    sget-object v5, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v5, v6, p0}, Lcom/squareup/okhttp/internal/Internal;->newTransport(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    .line 253
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-nez v5, :cond_0

    .line 254
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v5, v3}, Lcom/squareup/okhttp/internal/http/Transport;->createRequestBody(Lcom/squareup/okhttp/Request;)Lokio/Sink;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    goto/16 :goto_0

    .line 259
    :cond_8
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v6, :cond_9

    .line 260
    sget-object v6, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v6, v7, v8}, Lcom/squareup/okhttp/internal/Internal;->recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    .line 261
    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 264
    :cond_9
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    if-eqz v5, :cond_a

    .line 266
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    .line 283
    :goto_2
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 284
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->initContentStream(Lokio/Source;)V

    goto/16 :goto_0

    .line 273
    :cond_a
    new-instance v5, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/squareup/okhttp/Response;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->stripBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    sget-object v6, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    const/16 v6, 0x1f8

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    const-string v6, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    sget-object v6, Lcom/squareup/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->userResponse:Lcom/squareup/okhttp/Response;

    goto :goto_2
.end method

.method public writingRequestHeaders()V
    .locals 4

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 338
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 339
    return-void
.end method
