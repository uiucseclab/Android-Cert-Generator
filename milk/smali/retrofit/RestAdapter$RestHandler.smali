.class Lretrofit/RestAdapter$RestHandler;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestHandler"
.end annotation


# instance fields
.field private final methodDetailsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lretrofit/RestAdapter;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "methodDetailsCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    iput-object p1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lretrofit/RestAdapter$RestHandler;->methodDetailsCache:Ljava/util/Map;

    .line 225
    return-void
.end method

.method static synthetic access$100(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lretrofit/RestAdapter$RestHandler;
    .param p1, "x1"    # Lretrofit/RequestInterceptor;
    .param p2, "x2"    # Lretrofit/RestMethodInfo;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lretrofit/RestAdapter$RestHandler;->invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1, "requestInterceptor"    # Lretrofit/RequestInterceptor;
    .param p2, "methodInfo"    # Lretrofit/RestMethodInfo;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 292
    const/16 v19, 0x0

    .line 294
    .local v19, "url":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lretrofit/RestMethodInfo;->init()V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->server:Lretrofit/Endpoint;

    invoke-interface {v2}, Lretrofit/Endpoint;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, "serverUrl":Ljava/lang/String;
    new-instance v12, Lretrofit/RequestBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, p2

    invoke-direct {v12, v14, v0, v2}, Lretrofit/RequestBuilder;-><init>(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/converter/Converter;)V

    .line 298
    .local v12, "requestBuilder":Lretrofit/RequestBuilder;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lretrofit/RequestBuilder;->setArguments([Ljava/lang/Object;)V

    .line 300
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lretrofit/RequestInterceptor;->intercept(Lretrofit/RequestInterceptor$RequestFacade;)V

    .line 302
    invoke-virtual {v12}, Lretrofit/RequestBuilder;->build()Lretrofit/client/Request;

    move-result-object v11

    .line 303
    .local v11, "request":Lretrofit/client/Request;
    invoke-virtual {v11}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v19

    .line 305
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Retrofit-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    const-string v21, "HTTP"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v11}, Lretrofit/RestAdapter;->logAndReplaceRequest(Ljava/lang/String;Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object v11

    .line 315
    :cond_1
    const/4 v7, 0x0

    .line 316
    .local v7, "profilerObject":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/Profiler;->beforeCall()Ljava/lang/Object;

    move-result-object v7

    .line 320
    .end local v7    # "profilerObject":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 321
    .local v15, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;
    invoke-static {v2}, Lretrofit/RestAdapter;->access$300(Lretrofit/RestAdapter;)Lretrofit/client/Client$Provider;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/client/Client$Provider;->get()Lretrofit/client/Client;

    move-result-object v2

    invoke-interface {v2, v11}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v13

    .line 322
    .local v13, "response":Lretrofit/client/Response;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    sub-long v21, v21, v15

    move-wide/from16 v0, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 324
    .local v4, "elapsedTime":J
    invoke-virtual {v13}, Lretrofit/client/Response;->getStatus()I

    move-result v6

    .line 325
    .local v6, "statusCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 326
    move-object/from16 v0, p2

    # invokes: Lretrofit/RestAdapter;->getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    invoke-static {v14, v0, v11}, Lretrofit/RestAdapter;->access$400(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;

    move-result-object v3

    .line 328
    .local v3, "requestInfo":Lretrofit/Profiler$RequestInformation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lretrofit/Profiler;->afterCall(Lretrofit/Profiler$RequestInformation;JILjava/lang/Object;)V

    .line 331
    .end local v3    # "requestInfo":Lretrofit/Profiler$RequestInformation;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    move-object/from16 v0, v19

    # invokes: Lretrofit/RestAdapter;->logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    invoke-static {v2, v0, v13, v4, v5}, Lretrofit/RestAdapter;->access$500(Lretrofit/RestAdapter;Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;

    move-result-object v13

    .line 336
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    move-object/from16 v18, v0

    .line 338
    .local v18, "type":Ljava/lang/reflect/Type;
    const/16 v2, 0xc8

    if-lt v6, v2, :cond_11

    const/16 v2, 0x12c

    if-ge v6, v2, :cond_11

    .line 340
    const-class v2, Lretrofit/client/Response;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 341
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isStreaming:Z

    if-nez v2, :cond_5

    .line 343
    invoke-static {v13}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object v13

    .line 346
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_8

    .line 396
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_6

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v21, "Retrofit-Idle"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_6
    move-object v9, v13

    :cond_7
    :goto_0
    return-object v9

    .line 349
    :cond_8
    :try_start_1
    new-instance v9, Lretrofit/ResponseWrapper;

    invoke-direct {v9, v13, v13}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_7

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v21, "Retrofit-Idle"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_9
    :try_start_2
    invoke-virtual {v13}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v8

    .line 353
    .local v8, "body":Lretrofit/mime/TypedInput;
    if-nez v8, :cond_b

    .line 354
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_2
    .catch Lretrofit/RetrofitError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_a

    .line 355
    const/4 v9, 0x0

    .line 396
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_7

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v21, "Retrofit-Idle"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_a
    :try_start_3
    new-instance v9, Lretrofit/ResponseWrapper;

    const/4 v2, 0x0

    invoke-direct {v9, v13, v2}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_3
    .catch Lretrofit/RetrofitError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_7

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v21, "Retrofit-Idle"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_b
    :try_start_4
    new-instance v20, Lretrofit/ExceptionCatchingTypedInput;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Lretrofit/ExceptionCatchingTypedInput;-><init>(Lretrofit/mime/TypedInput;)V
    :try_end_4
    .catch Lretrofit/RetrofitError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    .local v20, "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Lretrofit/converter/Converter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 363
    .local v9, "convert":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_5
    .catch Lretrofit/converter/ConversionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lretrofit/RetrofitError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_c

    .line 396
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_7

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v21, "Retrofit-Idle"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_c
    :try_start_6
    new-instance v2, Lretrofit/ResponseWrapper;

    invoke-direct {v2, v13, v9}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_6
    .catch Lretrofit/converter/ConversionException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lretrofit/RetrofitError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 396
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    const-string v22, "Retrofit-Idle"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_d
    move-object v9, v2

    goto/16 :goto_0

    .line 367
    .end local v9    # "convert":Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 370
    .local v10, "e":Lretrofit/converter/ConversionException;
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Lretrofit/ExceptionCatchingTypedInput;->threwException()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 371
    invoke-virtual/range {v20 .. v20}, Lretrofit/ExceptionCatchingTypedInput;->getThrownException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_7
    .catch Lretrofit/RetrofitError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 383
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v8    # "body":Lretrofit/mime/TypedInput;
    .end local v10    # "e":Lretrofit/converter/ConversionException;
    .end local v11    # "request":Lretrofit/client/Request;
    .end local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .end local v13    # "response":Lretrofit/client/Response;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v15    # "start":J
    .end local v18    # "type":Ljava/lang/reflect/Type;
    .end local v20    # "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :catch_1
    move-exception v10

    .line 384
    .local v10, "e":Lretrofit/RetrofitError;
    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 396
    .end local v10    # "e":Lretrofit/RetrofitError;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    const-string v22, "Retrofit-Idle"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_e
    throw v2

    .line 375
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "statusCode":I
    .restart local v8    # "body":Lretrofit/mime/TypedInput;
    .local v10, "e":Lretrofit/converter/ConversionException;
    .restart local v11    # "request":Lretrofit/client/Request;
    .restart local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .restart local v13    # "response":Lretrofit/client/Response;
    .restart local v14    # "serverUrl":Ljava/lang/String;
    .restart local v15    # "start":J
    .restart local v18    # "type":Ljava/lang/reflect/Type;
    .restart local v20    # "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :cond_f
    const/4 v2, 0x0

    :try_start_9
    invoke-static {v13, v2}, Lretrofit/Utils;->replaceResponseBody(Lretrofit/client/Response;Lretrofit/mime/TypedInput;)Lretrofit/client/Response;

    move-result-object v13

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v13, v2, v1, v10}, Lretrofit/RetrofitError;->conversionError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_9
    .catch Lretrofit/RetrofitError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 385
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v8    # "body":Lretrofit/mime/TypedInput;
    .end local v10    # "e":Lretrofit/converter/ConversionException;
    .end local v11    # "request":Lretrofit/client/Request;
    .end local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .end local v13    # "response":Lretrofit/client/Response;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v15    # "start":J
    .end local v18    # "type":Ljava/lang/reflect/Type;
    .end local v20    # "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :catch_2
    move-exception v10

    .line 386
    .local v10, "e":Ljava/io/IOException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v2, v10, v0}, Lretrofit/RestAdapter;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 389
    :cond_10
    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lretrofit/RetrofitError;->networkError(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 381
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "statusCode":I
    .restart local v11    # "request":Lretrofit/client/Request;
    .restart local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .restart local v13    # "response":Lretrofit/client/Response;
    .restart local v14    # "serverUrl":Ljava/lang/String;
    .restart local v15    # "start":J
    .restart local v18    # "type":Ljava/lang/reflect/Type;
    :cond_11
    :try_start_b
    invoke-static {v13}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object v13

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v13, v2, v1}, Lretrofit/RetrofitError;->httpError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_b
    .catch Lretrofit/RetrofitError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 390
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v11    # "request":Lretrofit/client/Request;
    .end local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .end local v13    # "response":Lretrofit/client/Response;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v15    # "start":J
    .end local v18    # "type":Ljava/lang/reflect/Type;
    :catch_3
    move-exception v17

    .line 391
    .local v17, "t":Ljava/lang/Throwable;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lretrofit/RestAdapter;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 394
    :cond_12
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 232
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->methodDetailsCache:Ljava/util/Map;

    invoke-static {v0, p2}, Lretrofit/RestAdapter;->getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lretrofit/RestMethodInfo;

    move-result-object v6

    .line 238
    .local v6, "methodInfo":Lretrofit/RestMethodInfo;
    iget-boolean v0, v6, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-eqz v0, :cond_2

    .line 240
    :try_start_0
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-direct {p0, v0, v6, p3}, Lretrofit/RestAdapter$RestHandler;->invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v8

    .line 242
    .local v8, "error":Lretrofit/RetrofitError;
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    invoke-interface {v0, v8}, Lretrofit/ErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v9

    .line 243
    .local v9, "newError":Ljava/lang/Throwable;
    if-nez v9, :cond_1

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error handler returned null for wrapped exception."

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 247
    :cond_1
    throw v9

    .line 251
    .end local v8    # "error":Lretrofit/RetrofitError;
    .end local v9    # "newError":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_4

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asynchronous invocation requires calling setExecutors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_4
    iget-boolean v0, v6, Lretrofit/RestMethodInfo;->isObservable:Z

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->rxSupport:Lretrofit/RxSupport;
    invoke-static {v0}, Lretrofit/RestAdapter;->access$000(Lretrofit/RestAdapter;)Lretrofit/RxSupport;

    move-result-object v0

    if-nez v0, :cond_5

    .line 257
    sget-boolean v0, Lretrofit/Platform;->HAS_RX_JAVA:Z

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    new-instance v1, Lretrofit/RxSupport;

    iget-object v3, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v3, v3, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v4, v4, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    iget-object v7, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v7, v7, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-direct {v1, v3, v4, v7}, Lretrofit/RxSupport;-><init>(Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;Lretrofit/RequestInterceptor;)V

    # setter for: Lretrofit/RestAdapter;->rxSupport:Lretrofit/RxSupport;
    invoke-static {v0, v1}, Lretrofit/RestAdapter;->access$002(Lretrofit/RestAdapter;Lretrofit/RxSupport;)Lretrofit/RxSupport;

    .line 263
    :cond_5
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->rxSupport:Lretrofit/RxSupport;
    invoke-static {v0}, Lretrofit/RestAdapter;->access$000(Lretrofit/RestAdapter;)Lretrofit/RxSupport;

    move-result-object v0

    new-instance v1, Lretrofit/RestAdapter$RestHandler$1;

    invoke-direct {v1, p0, v6, p3}, Lretrofit/RestAdapter$RestHandler$1;-><init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lretrofit/RxSupport;->createRequestObservable(Lretrofit/RxSupport$Invoker;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observable method found but no RxJava on classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_7
    new-instance v5, Lretrofit/RequestInterceptorTape;

    invoke-direct {v5}, Lretrofit/RequestInterceptorTape;-><init>()V

    .line 273
    .local v5, "interceptorTape":Lretrofit/RequestInterceptorTape;
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-interface {v0, v5}, Lretrofit/RequestInterceptor;->intercept(Lretrofit/RequestInterceptor$RequestFacade;)V

    .line 275
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v2, p3, v0

    check-cast v2, Lretrofit/Callback;

    .line 276
    .local v2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<*>;"
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v10, v0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit/RestAdapter$RestHandler$2;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v3, v1, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v4, v1, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lretrofit/RestAdapter$RestHandler$2;-><init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/Callback;Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;Lretrofit/RequestInterceptorTape;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
