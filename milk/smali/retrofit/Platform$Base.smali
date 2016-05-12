.class Lretrofit/Platform$Base;
.super Lretrofit/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Base"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lretrofit/Platform;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Lretrofit/Platform$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lretrofit/Platform$Base;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lretrofit/Utils$SynchronousExecutor;

    invoke-direct {v0}, Lretrofit/Utils$SynchronousExecutor;-><init>()V

    return-object v0
.end method

.method defaultClient()Lretrofit/client/Client$Provider;
    .locals 2

    .prologue
    .line 76
    # invokes: Lretrofit/Platform;->hasOkHttpOnClasspath()Z
    invoke-static {}, Lretrofit/Platform;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Lretrofit/Platform$OkClientInstantiator;->instantiate()Lretrofit/client/Client;

    move-result-object v0

    .line 81
    .local v0, "client":Lretrofit/client/Client;
    :goto_0
    new-instance v1, Lretrofit/Platform$Base$1;

    invoke-direct {v1, p0, v0}, Lretrofit/Platform$Base$1;-><init>(Lretrofit/Platform$Base;Lretrofit/client/Client;)V

    return-object v1

    .line 79
    .end local v0    # "client":Lretrofit/client/Client;
    :cond_0
    new-instance v0, Lretrofit/client/UrlConnectionClient;

    invoke-direct {v0}, Lretrofit/client/UrlConnectionClient;-><init>()V

    .restart local v0    # "client":Lretrofit/client/Client;
    goto :goto_0
.end method

.method defaultConverter()Lretrofit/converter/Converter;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lretrofit/converter/GsonConverter;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v0, v1}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method defaultHttpExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lretrofit/Platform$Base$2;

    invoke-direct {v0, p0}, Lretrofit/Platform$Base$2;-><init>(Lretrofit/Platform$Base;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method defaultLog()Lretrofit/RestAdapter$Log;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lretrofit/Platform$Base$3;

    invoke-direct {v0, p0}, Lretrofit/Platform$Base$3;-><init>(Lretrofit/Platform$Base;)V

    return-object v0
.end method
