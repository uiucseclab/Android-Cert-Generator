.class public Lcom/squareup/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/Platform$1;,
        Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;,
        Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;,
        Lcom/squareup/okhttp/internal/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/squareup/okhttp/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->findPlatform()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/Platform;->PLATFORM:Lcom/squareup/okhttp/internal/Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    return-void
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 407
    .local v2, "result":Lokio/Buffer;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 408
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/Protocol;

    .line 409
    .local v1, "protocol":Lcom/squareup/okhttp/Protocol;
    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v4, :cond_0

    .line 407
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 411
    invoke-virtual {v1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_1

    .line 413
    .end local v1    # "protocol":Lcom/squareup/okhttp/Protocol;
    :cond_1
    invoke-virtual {v2}, Lokio/Buffer;->readByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static findPlatform()Lcom/squareup/okhttp/internal/Platform;
    .locals 22

    .prologue
    .line 125
    :try_start_0
    const-string v2, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 132
    .local v3, "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_1
    const-string v2, "setUseSessionTickets"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v21, v10, v20

    invoke-virtual {v3, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 133
    .local v4, "setUseSessionTickets":Ljava/lang/reflect/Method;
    const-string v2, "setHostname"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v10, v20

    invoke-virtual {v3, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 136
    .local v5, "setHostname":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 137
    .local v6, "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 139
    .local v7, "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    :try_start_2
    const-string v2, "android.net.TrafficStats"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 140
    .local v19, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "tagSocket"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljava/net/Socket;

    aput-object v21, v10, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 141
    const-string v2, "untagSocket"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljava/net/Socket;

    aput-object v21, v10, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v7

    .line 147
    .end local v19    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const/4 v8, 0x0

    .line 148
    .local v8, "setNpnProtocols":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 150
    .local v9, "getNpnSelectedProtocol":Ljava/lang/reflect/Method;
    :try_start_3
    const-string v2, "setNpnProtocols"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, [B

    aput-object v21, v10, v20

    invoke-virtual {v3, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 151
    const-string v2, "getNpnSelectedProtocol"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v9

    .line 155
    :goto_2
    :try_start_4
    new-instance v2, Lcom/squareup/okhttp/internal/Platform$Android;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/squareup/okhttp/internal/Platform$Android;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V

    .line 184
    .end local v3    # "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "setUseSessionTickets":Ljava/lang/reflect/Method;
    .end local v5    # "setHostname":Ljava/lang/reflect/Method;
    .end local v6    # "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    .end local v7    # "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    .end local v8    # "setNpnProtocols":Ljava/lang/reflect/Method;
    .end local v9    # "getNpnSelectedProtocol":Ljava/lang/reflect/Method;
    :goto_3
    return-object v2

    .line 126
    :catch_0
    move-exception v13

    .line 128
    .local v13, "ignored":Ljava/lang/ClassNotFoundException;
    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    .restart local v3    # "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 160
    .end local v3    # "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 165
    :goto_4
    :try_start_5
    const-string v15, "org.eclipse.jetty.alpn.ALPN"
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4

    .line 168
    .end local v13    # "ignored":Ljava/lang/ClassNotFoundException;
    .local v15, "negoClassName":Ljava/lang/String;
    :try_start_6
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v14

    .line 173
    .local v14, "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "$Provider"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 174
    .local v16, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "$ClientProvider"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 175
    .local v11, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "$ServerProvider"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 176
    .local v18, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "put"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljavax/net/ssl/SSLSocket;

    aput-object v21, v10, v20

    const/16 v20, 0x1

    aput-object v16, v10, v20

    invoke-virtual {v14, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 177
    .local v17, "putMethod":Ljava/lang/reflect/Method;
    const-string v2, "get"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljavax/net/ssl/SSLSocket;

    aput-object v21, v10, v20

    invoke-virtual {v14, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 178
    .local v12, "getMethod":Ljava/lang/reflect/Method;
    new-instance v2, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v12, v11, v1}, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 180
    .end local v11    # "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "getMethod":Ljava/lang/reflect/Method;
    .end local v14    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "negoClassName":Ljava/lang/String;
    .end local v16    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "putMethod":Ljava/lang/reflect/Method;
    .end local v18    # "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 184
    :goto_6
    new-instance v2, Lcom/squareup/okhttp/internal/Platform;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    goto/16 :goto_3

    .line 169
    .restart local v15    # "negoClassName":Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 170
    .restart local v13    # "ignored":Ljava/lang/ClassNotFoundException;
    :try_start_8
    const-string v15, "org.eclipse.jetty.npn.NextProtoNego"

    .line 171
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v14

    .restart local v14    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_5

    .line 181
    .end local v13    # "ignored":Ljava/lang/ClassNotFoundException;
    .end local v14    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "negoClassName":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto :goto_6

    .line 158
    .restart local v13    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v2

    goto/16 :goto_4

    .line 152
    .end local v13    # "ignored":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "setUseSessionTickets":Ljava/lang/reflect/Method;
    .restart local v5    # "setHostname":Ljava/lang/reflect/Method;
    .restart local v6    # "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    .restart local v7    # "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    .restart local v8    # "setNpnProtocols":Ljava/lang/reflect/Method;
    .restart local v9    # "getNpnSelectedProtocol":Ljava/lang/reflect/Method;
    :catch_6
    move-exception v2

    goto/16 :goto_2

    .line 143
    .end local v8    # "setNpnProtocols":Ljava/lang/reflect/Method;
    .end local v9    # "getNpnSelectedProtocol":Ljava/lang/reflect/Method;
    :catch_7
    move-exception v2

    goto/16 :goto_1

    .line 142
    :catch_8
    move-exception v2

    goto/16 :goto_1
.end method

.method public static get()Lcom/squareup/okhttp/internal/Platform;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/squareup/okhttp/internal/Platform;->PLATFORM:Lcom/squareup/okhttp/internal/Platform;

    return-object v0
.end method


# virtual methods
.method public configureTls(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "uriHost"    # Ljava/lang/String;
    .param p3, "tlsVersion"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "SSLv3"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 115
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public logW(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setProtocols(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
    .locals 0
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
    .line 110
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public toUriLenient(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method
