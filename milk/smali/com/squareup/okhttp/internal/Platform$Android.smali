.class Lcom/squareup/okhttp/internal/Platform$Android;
.super Lcom/squareup/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Android"
.end annotation


# instance fields
.field private final getNpnSelectedProtocol:Ljava/lang/reflect/Method;

.field protected final openSslSocketClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final setHostname:Ljava/lang/reflect/Method;

.field private final setNpnProtocols:Ljava/lang/reflect/Method;

.field private final setUseSessionTickets:Ljava/lang/reflect/Method;

.field private final trafficStatsTagSocket:Ljava/lang/reflect/Method;

.field private final trafficStatsUntagSocket:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p2, "setUseSessionTickets"    # Ljava/lang/reflect/Method;
    .param p3, "setHostname"    # Ljava/lang/reflect/Method;
    .param p4, "trafficStatsTagSocket"    # Ljava/lang/reflect/Method;
    .param p5, "trafficStatsUntagSocket"    # Ljava/lang/reflect/Method;
    .param p6, "setNpnProtocols"    # Ljava/lang/reflect/Method;
    .param p7, "getNpnSelectedProtocol"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->openSslSocketClass:Ljava/lang/Class;

    .line 209
    iput-object p2, p0, Lcom/squareup/okhttp/internal/Platform$Android;->setUseSessionTickets:Ljava/lang/reflect/Method;

    .line 210
    iput-object p3, p0, Lcom/squareup/okhttp/internal/Platform$Android;->setHostname:Ljava/lang/reflect/Method;

    .line 211
    iput-object p4, p0, Lcom/squareup/okhttp/internal/Platform$Android;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    .line 212
    iput-object p5, p0, Lcom/squareup/okhttp/internal/Platform$Android;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    .line 213
    iput-object p6, p0, Lcom/squareup/okhttp/internal/Platform$Android;->setNpnProtocols:Ljava/lang/reflect/Method;

    .line 214
    iput-object p7, p0, Lcom/squareup/okhttp/internal/Platform$Android;->getNpnSelectedProtocol:Ljava/lang/reflect/Method;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/reflect/Method;
    .param p3, "x2"    # Ljava/lang/reflect/Method;
    .param p4, "x3"    # Ljava/lang/reflect/Method;
    .param p5, "x4"    # Ljava/lang/reflect/Method;
    .param p6, "x5"    # Ljava/lang/reflect/Method;
    .param p7, "x6"    # Ljava/lang/reflect/Method;
    .param p8, "x7"    # Lcom/squareup/okhttp/internal/Platform$1;

    .prologue
    .line 191
    invoke-direct/range {p0 .. p7}, Lcom/squareup/okhttp/internal/Platform$Android;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public configureTls(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "uriHost"    # Ljava/lang/String;
    .param p3, "tlsVersion"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/Platform;->configureTls(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "TLSv1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->openSslSocketClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->setUseSessionTickets:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->setHostname:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :cond_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 239
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 224
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "ioException":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 226
    throw v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v4, 0x0

    .line 259
    iget-object v3, p0, Lcom/squareup/okhttp/internal/Platform$Android;->getNpnSelectedProtocol:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 264
    :goto_0
    return-object v3

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/Platform$Android;->openSslSocketClass:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 262
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/Platform$Android;->getNpnSelectedProtocol:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    .line 263
    .local v2, "npnResult":[B
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 264
    :cond_2
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 265
    .end local v2    # "npnResult":[B
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 267
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public setProtocols(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    iget-object v2, p0, Lcom/squareup/okhttp/internal/Platform$Android;->setNpnProtocols:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/Platform$Android;->openSslSocketClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/squareup/okhttp/internal/Platform$Android;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 250
    .local v1, "parameters":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/Platform$Android;->setNpnProtocols:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    .end local v1    # "parameters":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 253
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 279
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 291
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
