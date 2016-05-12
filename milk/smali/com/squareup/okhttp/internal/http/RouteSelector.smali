.class public final Lcom/squareup/okhttp/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# static fields
.field public static final SSL_V3:Ljava/lang/String; = "SSLv3"

.field public static final TLS_V1:Ljava/lang/String; = "TLSv1"


# instance fields
.field private final address:Lcom/squareup/okhttp/Address;

.field private final dns:Lcom/squareup/okhttp/internal/Dns;

.field private hasNextProxy:Z

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private nextSocketAddressIndex:I

.field private nextTlsVersion:Ljava/lang/String;

.field private final pool:Lcom/squareup/okhttp/ConnectionPool;

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private final proxySelector:Ljava/net/ProxySelector;

.field private proxySelectorProxies:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

.field private socketAddresses:[Ljava/net/InetAddress;

.field private socketPort:I

.field private final uri:Ljava/net/URI;

.field private userSpecifiedProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/internal/Dns;Lcom/squareup/okhttp/internal/RouteDatabase;)V
    .locals 1
    .param p1, "address"    # Lcom/squareup/okhttp/Address;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "proxySelector"    # Ljava/net/ProxySelector;
    .param p4, "pool"    # Lcom/squareup/okhttp/ConnectionPool;
    .param p5, "dns"    # Lcom/squareup/okhttp/internal/Dns;
    .param p6, "routeDatabase"    # Lcom/squareup/okhttp/internal/RouteDatabase;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    .line 81
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->uri:Ljava/net/URI;

    .line 82
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    .line 83
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->pool:Lcom/squareup/okhttp/ConnectionPool;

    .line 84
    iput-object p5, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->dns:Lcom/squareup/okhttp/internal/Dns;

    .line 85
    iput-object p6, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 88
    invoke-virtual {p1}, Lcom/squareup/okhttp/Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->resetNextProxy(Ljava/net/URI;Ljava/net/Proxy;)V

    .line 89
    return-void
.end method

.method private hasNextInetSocketAddress()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy:Z

    return v0
.end method

.method private hasNextTlsVersion()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextSocketAddressIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextSocketAddressIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 244
    .local v0, "result":Ljava/net/InetSocketAddress;
    iget v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextSocketAddressIndex:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    .line 246
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextSocketAddressIndex:I

    .line 249
    :cond_0
    return-object v0
.end method

.method private nextPostponed()Lcom/squareup/okhttp/Route;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Route;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->userSpecifiedProxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 191
    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy:Z

    .line 192
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->userSpecifiedProxy:Ljava/net/Proxy;

    .line 208
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    if-eqz v1, :cond_2

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 200
    .local v0, "candidate":Ljava/net/Proxy;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 207
    .end local v0    # "candidate":Ljava/net/Proxy;
    :cond_2
    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy:Z

    .line 208
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private nextTlsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No next TLS version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion:Ljava/lang/String;

    const-string v1, "TLSv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const-string v0, "SSLv3"

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion:Ljava/lang/String;

    .line 271
    const-string v0, "TLSv1"

    .line 274
    :goto_0
    return-object v0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion:Ljava/lang/String;

    const-string v1, "SSLv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion:Ljava/lang/String;

    .line 274
    const-string v0, "SSLv3"

    goto :goto_0

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 6
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    .line 216
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_0

    .line 217
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "socketHost":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v3

    iput v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketPort:I

    .line 231
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->dns:Lcom/squareup/okhttp/internal/Dns;

    invoke-interface {v3, v2}, Lcom/squareup/okhttp/internal/Dns;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    .line 232
    const/4 v3, 0x0

    iput v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextSocketAddressIndex:I

    .line 233
    return-void

    .line 220
    .end local v2    # "socketHost":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 221
    .local v0, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v3, v0, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_1

    .line 222
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v1, v0

    .line 225
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 226
    .local v1, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 227
    .restart local v2    # "socketHost":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->socketPort:I

    goto :goto_0
.end method

.method private resetNextProxy(Ljava/net/URI;Ljava/net/Proxy;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy:Z

    .line 172
    if-eqz p2, :cond_1

    .line 173
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->userSpecifiedProxy:Ljava/net/Proxy;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    goto :goto_0
.end method

.method private resetNextTlsVersion()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "TLSv1"

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion:Ljava/lang/String;

    .line 258
    return-void

    .line 257
    :cond_0
    const-string v0, "SSLv3"

    goto :goto_0
.end method


# virtual methods
.method public connectFailed(Lcom/squareup/okhttp/Connection;Ljava/io/IOException;)V
    .locals 6
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 148
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v2, p1}, Lcom/squareup/okhttp/internal/Internal;->recycleCount(Lcom/squareup/okhttp/Connection;)I

    move-result v2

    if-lez v2, :cond_1

    .line 167
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    .line 151
    .local v0, "failedRoute":Lcom/squareup/okhttp/Route;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/RouteDatabase;->failed(Lcom/squareup/okhttp/Route;)V

    .line 161
    instance-of v2, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_0

    instance-of v2, p2, Ljavax/net/ssl/SSLProtocolException;

    if-nez v2, :cond_0

    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextTlsVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    new-instance v1, Lcom/squareup/okhttp/Route;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/squareup/okhttp/Route;-><init>(Lcom/squareup/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Ljava/lang/String;)V

    .line 164
    .local v1, "toSuppress":Lcom/squareup/okhttp/Route;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/RouteDatabase;->failed(Lcom/squareup/okhttp/Route;)V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextTlsVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

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

.method public next(Ljava/lang/String;)Lcom/squareup/okhttp/Connection;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/ConnectionPool;->get(Lcom/squareup/okhttp/Address;)Lcom/squareup/okhttp/Connection;

    move-result-object v0

    .local v0, "pooled":Lcom/squareup/okhttp/Connection;
    if-eqz v0, :cond_2

    .line 110
    const-string v3, "GET"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/Internal;->isReadable(Lcom/squareup/okhttp/Connection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    .end local v0    # "pooled":Lcom/squareup/okhttp/Connection;
    :cond_0
    :goto_1
    return-object v0

    .line 111
    .restart local v0    # "pooled":Lcom/squareup/okhttp/Connection;
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextTlsVersion()Z

    move-result v3

    if-nez v3, :cond_6

    .line 116
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v3

    if-nez v3, :cond_5

    .line 117
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v3

    if-nez v3, :cond_4

    .line 118
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 119
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 121
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/Connection;

    .end local v0    # "pooled":Lcom/squareup/okhttp/Connection;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->pool:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextPostponed()Lcom/squareup/okhttp/Route;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/squareup/okhttp/Connection;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Route;)V

    goto :goto_1

    .line 123
    .restart local v0    # "pooled":Lcom/squareup/okhttp/Connection;
    :cond_4
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 124
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/http/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 126
    :cond_5
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 127
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->resetNextTlsVersion()V

    .line 130
    :cond_6
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextTlsVersion()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "tlsVersion":Ljava/lang/String;
    new-instance v1, Lcom/squareup/okhttp/Route;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/squareup/okhttp/Route;-><init>(Lcom/squareup/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Ljava/lang/String;)V

    .line 132
    .local v1, "route":Lcom/squareup/okhttp/Route;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/internal/RouteDatabase;->shouldPostpone(Lcom/squareup/okhttp/Route;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/RouteSelector;->next(Ljava/lang/String;)Lcom/squareup/okhttp/Connection;

    move-result-object v0

    goto :goto_1

    .line 139
    :cond_7
    new-instance v0, Lcom/squareup/okhttp/Connection;

    .end local v0    # "pooled":Lcom/squareup/okhttp/Connection;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->pool:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {v0, v3, v1}, Lcom/squareup/okhttp/Connection;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Route;)V

    goto :goto_1
.end method
