.class public final Lcom/squareup/okhttp/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lcom/squareup/okhttp/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;

.field final tlsVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Lcom/squareup/okhttp/Address;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "tlsVersion"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3
    iput-object p1, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    .line 50
    iput-object p2, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 51
    iput-object p3, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 52
    iput-object p4, p0, Lcom/squareup/okhttp/Route;->tlsVersion:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 91
    instance-of v2, p1, Lcom/squareup/okhttp/Route;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/squareup/okhttp/Route;

    .line 93
    .local v0, "other":Lcom/squareup/okhttp/Route;
    iget-object v2, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v3, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, v0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/Route;->tlsVersion:Ljava/lang/String;

    iget-object v3, v0, Lcom/squareup/okhttp/Route;->tlsVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 98
    .end local v0    # "other":Lcom/squareup/okhttp/Route;
    :cond_0
    return v1
.end method

.method public getAddress()Lcom/squareup/okhttp/Address;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getTlsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->tlsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 102
    const/16 v0, 0x11

    .line 103
    .local v0, "result":I
    iget-object v1, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Address;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 104
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 105
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 106
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/Route;->tlsVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 107
    return v0
.end method

.method public requiresTunnel()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method supportsNpn()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/Route;->tlsVersion:Ljava/lang/String;

    const-string v1, "SSLv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
