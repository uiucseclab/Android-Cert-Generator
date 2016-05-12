.class Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;
.super Lcom/squareup/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JdkWithJettyBootPlatform"
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "putMethod"    # Ljava/lang/reflect/Method;
    .param p2, "getMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p3, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 310
    iput-object p2, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 311
    iput-object p3, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 312
    iput-object p4, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 313
    return-void
.end method


# virtual methods
.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 8
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v3, 0x0

    .line 335
    :try_start_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;

    .line 337
    .local v2, "provider":Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;
    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$100(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Z

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$200(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 338
    const-string v4, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 339
    .local v1, "logger":Ljava/util/logging/Logger;
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "NPN/ALPN callback dropped: SPDY and HTTP/2 are disabled. Is npn-boot or alpn-boot on the boot class path?"

    invoke-virtual {v1, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 343
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$100(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;->access$200(Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 344
    .end local v2    # "provider":Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 346
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public setProtocols(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
    .locals 10
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
    .line 317
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 319
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/Protocol;

    .line 320
    .local v3, "protocol":Lcom/squareup/okhttp/Protocol;
    sget-object v6, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v6, :cond_0

    .line 318
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v3}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 326
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "protocol":Lcom/squareup/okhttp/Protocol;
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 323
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "i":I
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "size":I
    :cond_1
    :try_start_1
    const-class v6, Lcom/squareup/okhttp/internal/Platform;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    aput-object v9, v7, v8

    new-instance v8, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;

    invoke-direct {v8, v2}, Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 325
    .local v4, "provider":Ljava/lang/Object;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    return-void

    .line 328
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "provider":Ljava/lang/Object;
    .end local v5    # "size":I
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method
