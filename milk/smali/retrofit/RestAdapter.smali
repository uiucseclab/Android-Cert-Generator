.class public Lretrofit/RestAdapter;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RestAdapter$1;,
        Lretrofit/RestAdapter$Builder;,
        Lretrofit/RestAdapter$RestHandler;,
        Lretrofit/RestAdapter$LogLevel;,
        Lretrofit/RestAdapter$Log;
    }
.end annotation


# static fields
.field static final IDLE_THREAD_NAME:Ljava/lang/String; = "Retrofit-Idle"

.field static final THREAD_PREFIX:Ljava/lang/String; = "Retrofit-"


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final clientProvider:Lretrofit/client/Client$Provider;

.field final converter:Lretrofit/converter/Converter;

.field final errorHandler:Lretrofit/ErrorHandler;

.field final httpExecutor:Ljava/util/concurrent/Executor;

.field final log:Lretrofit/RestAdapter$Log;

.field volatile logLevel:Lretrofit/RestAdapter$LogLevel;

.field private final profiler:Lretrofit/Profiler;

.field final requestInterceptor:Lretrofit/RequestInterceptor;

.field private rxSupport:Lretrofit/RxSupport;

.field final server:Lretrofit/Endpoint;

.field private final serviceMethodInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;)V
    .locals 1
    .param p1, "server"    # Lretrofit/Endpoint;
    .param p2, "clientProvider"    # Lretrofit/client/Client$Provider;
    .param p3, "httpExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "requestInterceptor"    # Lretrofit/RequestInterceptor;
    .param p6, "converter"    # Lretrofit/converter/Converter;
    .param p7, "profiler"    # Lretrofit/Profiler;
    .param p8, "errorHandler"    # Lretrofit/ErrorHandler;
    .param p9, "log"    # Lretrofit/RestAdapter$Log;
    .param p10, "logLevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    .line 165
    iput-object p1, p0, Lretrofit/RestAdapter;->server:Lretrofit/Endpoint;

    .line 166
    iput-object p2, p0, Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;

    .line 167
    iput-object p3, p0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 168
    iput-object p4, p0, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 169
    iput-object p5, p0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 170
    iput-object p6, p0, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    .line 171
    iput-object p7, p0, Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;

    .line 172
    iput-object p8, p0, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    .line 173
    iput-object p9, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    .line 174
    iput-object p10, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;Lretrofit/RestAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lretrofit/Endpoint;
    .param p2, "x1"    # Lretrofit/client/Client$Provider;
    .param p3, "x2"    # Ljava/util/concurrent/Executor;
    .param p4, "x3"    # Ljava/util/concurrent/Executor;
    .param p5, "x4"    # Lretrofit/RequestInterceptor;
    .param p6, "x5"    # Lretrofit/converter/Converter;
    .param p7, "x6"    # Lretrofit/Profiler;
    .param p8, "x7"    # Lretrofit/ErrorHandler;
    .param p9, "x8"    # Lretrofit/RestAdapter$Log;
    .param p10, "x9"    # Lretrofit/RestAdapter$LogLevel;
    .param p11, "x10"    # Lretrofit/RestAdapter$1;

    .prologue
    .line 109
    invoke-direct/range {p0 .. p10}, Lretrofit/RestAdapter;-><init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;)V

    return-void
.end method

.method static synthetic access$000(Lretrofit/RestAdapter;)Lretrofit/RxSupport;
    .locals 1
    .param p0, "x0"    # Lretrofit/RestAdapter;

    .prologue
    .line 109
    iget-object v0, p0, Lretrofit/RestAdapter;->rxSupport:Lretrofit/RxSupport;

    return-object v0
.end method

.method static synthetic access$002(Lretrofit/RestAdapter;Lretrofit/RxSupport;)Lretrofit/RxSupport;
    .locals 0
    .param p0, "x0"    # Lretrofit/RestAdapter;
    .param p1, "x1"    # Lretrofit/RxSupport;

    .prologue
    .line 109
    iput-object p1, p0, Lretrofit/RestAdapter;->rxSupport:Lretrofit/RxSupport;

    return-object p1
.end method

.method static synthetic access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;
    .locals 1
    .param p0, "x0"    # Lretrofit/RestAdapter;

    .prologue
    .line 109
    iget-object v0, p0, Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;

    return-object v0
.end method

.method static synthetic access$300(Lretrofit/RestAdapter;)Lretrofit/client/Client$Provider;
    .locals 1
    .param p0, "x0"    # Lretrofit/RestAdapter;

    .prologue
    .line 109
    iget-object v0, p0, Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lretrofit/RestMethodInfo;
    .param p2, "x2"    # Lretrofit/client/Request;

    .prologue
    .line 109
    invoke-static {p0, p1, p2}, Lretrofit/RestAdapter;->getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lretrofit/RestAdapter;Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    .locals 1
    .param p0, "x0"    # Lretrofit/RestAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lretrofit/client/Response;
    .param p3, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lretrofit/RestAdapter;->logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method static getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lretrofit/RestMethodInfo;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit/RestMethodInfo;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestMethodInfo;

    .line 212
    .local v0, "methodInfo":Lretrofit/RestMethodInfo;
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lretrofit/RestMethodInfo;

    .end local v0    # "methodInfo":Lretrofit/RestMethodInfo;
    invoke-direct {v0, p1}, Lretrofit/RestMethodInfo;-><init>(Ljava/lang/reflect/Method;)V

    .line 214
    .restart local v0    # "methodInfo":Lretrofit/RestMethodInfo;
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    monitor-exit p0

    return-object v0

    .line 217
    .end local v0    # "methodInfo":Lretrofit/RestMethodInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    .locals 8
    .param p0, "serverUrl"    # Ljava/lang/String;
    .param p1, "methodDetails"    # Lretrofit/RestMethodInfo;
    .param p2, "request"    # Lretrofit/client/Request;

    .prologue
    .line 499
    const-wide/16 v4, 0x0

    .line 500
    .local v4, "contentLength":J
    const/4 v6, 0x0

    .line 502
    .local v6, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v7

    .line 503
    .local v7, "body":Lretrofit/mime/TypedOutput;
    if-eqz v7, :cond_0

    .line 504
    invoke-interface {v7}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v4

    .line 505
    invoke-interface {v7}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v6

    .line 508
    :cond_0
    new-instance v0, Lretrofit/Profiler$RequestInformation;

    iget-object v1, p1, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    iget-object v3, p1, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lretrofit/Profiler$RequestInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method private logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lretrofit/client/Response;
    .param p3, "elapsedTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v8, "<--- HTTP %s %s (%sms)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p2}, Lretrofit/client/Response;->getStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 453
    iget-object v7, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v7}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v7

    sget-object v8, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_4

    .line 454
    invoke-virtual {p2}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lretrofit/client/Header;

    .line 455
    .local v6, "header":Lretrofit/client/Header;
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v6}, Lretrofit/client/Header;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    .end local v6    # "header":Lretrofit/client/Header;
    :cond_0
    const-wide/16 v4, 0x0

    .line 459
    .local v4, "bodySize":J
    invoke-virtual {p2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    .line 460
    .local v0, "body":Lretrofit/mime/TypedInput;
    if-eqz v0, :cond_3

    .line 461
    invoke-interface {v0}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v4

    .line 463
    iget-object v7, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v7}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v7

    sget-object v8, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 464
    invoke-virtual {p2}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 465
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v8, ""

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 468
    :cond_1
    instance-of v7, v0, Lretrofit/mime/TypedByteArray;

    if-nez v7, :cond_2

    .line 470
    invoke-static {p2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object p2

    .line 471
    invoke-virtual {p2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    :cond_2
    move-object v7, v0

    .line 474
    check-cast v7, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v7}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v1

    .line 475
    .local v1, "bodyBytes":[B
    array-length v7, v1

    int-to-long v4, v7

    .line 476
    invoke-interface {v0}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "bodyMime":Ljava/lang/String;
    invoke-static {v3}, Lretrofit/mime/MimeUtil;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "bodyCharset":Ljava/lang/String;
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 482
    .end local v1    # "bodyBytes":[B
    .end local v2    # "bodyCharset":Ljava/lang/String;
    .end local v3    # "bodyMime":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v8, "<--- END HTTP (%s-byte body)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 485
    .end local v0    # "body":Lretrofit/mime/TypedInput;
    .end local v4    # "bodySize":J
    :cond_4
    return-object p2
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lretrofit/Utils;->validateServiceClass(Ljava/lang/Class;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lretrofit/RestAdapter$RestHandler;

    .line 195
    invoke-virtual {p0, p1}, Lretrofit/RestAdapter;->getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lretrofit/RestAdapter$RestHandler;-><init>(Lretrofit/RestAdapter;Ljava/util/Map;)V

    .line 194
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lretrofit/RestAdapter$LogLevel;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    return-object v0
.end method

.method getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v1, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 201
    .local v0, "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    .restart local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    iget-object v1, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    monitor-exit v2

    return-object v0

    .line 206
    .end local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logAndReplaceRequest(Ljava/lang/String;Lretrofit/client/Request;)Lretrofit/client/Request;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v9, "---> %s %s %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p2}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {p2}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 407
    iget-object v8, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    sget-object v9, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v9}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v9

    if-lt v8, v9, :cond_6

    .line 408
    invoke-virtual {p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lretrofit/client/Header;

    .line 409
    .local v7, "header":Lretrofit/client/Header;
    iget-object v9, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v7}, Lretrofit/client/Header;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    .end local v7    # "header":Lretrofit/client/Header;
    :cond_0
    const-string v6, "no"

    .line 413
    .local v6, "bodySize":Ljava/lang/String;
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 414
    .local v0, "body":Lretrofit/mime/TypedOutput;
    if-eqz v0, :cond_5

    .line 415
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "bodyMime":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 417
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 420
    :cond_1
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v3

    .line 421
    .local v3, "bodyLength":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-byte"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 422
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-eqz v8, :cond_2

    .line 423
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 426
    :cond_2
    iget-object v8, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    sget-object v9, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v9}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v9

    if-lt v8, v9, :cond_5

    .line 427
    invoke-virtual {p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 428
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v9, ""

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 430
    :cond_3
    instance-of v8, v0, Lretrofit/mime/TypedByteArray;

    if-nez v8, :cond_4

    .line 432
    invoke-static {p2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object p2

    .line 433
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    :cond_4
    move-object v8, v0

    .line 436
    check-cast v8, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v8}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v1

    .line 437
    .local v1, "bodyBytes":[B
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lretrofit/mime/MimeUtil;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "bodyCharset":Ljava/lang/String;
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 442
    .end local v1    # "bodyBytes":[B
    .end local v2    # "bodyCharset":Ljava/lang/String;
    .end local v3    # "bodyLength":J
    .end local v5    # "bodyMime":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v9, "---> END %s (%s body)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 445
    .end local v0    # "body":Lretrofit/mime/TypedOutput;
    .end local v6    # "bodySize":Ljava/lang/String;
    :cond_6
    return-object p2
.end method

.method logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v2, "---- ERROR %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .end local p2    # "url":Ljava/lang/String;
    :goto_0
    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 492
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 493
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v2, "---- END ERROR"

    invoke-interface {v1, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 495
    return-void

    .line 490
    .end local v0    # "sw":Ljava/io/StringWriter;
    .restart local p2    # "url":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public setLogLevel(Lretrofit/RestAdapter$LogLevel;)V
    .locals 2
    .param p1, "loglevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 179
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Log level may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 183
    return-void
.end method
