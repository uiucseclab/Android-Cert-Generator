.class public Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# instance fields
.field final client:Lcom/squareup/okhttp/OkHttpClient;

.field private fixedContentLength:J

.field handshake:Lcom/squareup/okhttp/Handshake;

.field protected httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private redirectionCount:I

.field private requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

.field private responseHeaders:Lcom/squareup/okhttp/Headers;

.field private route:Lcom/squareup/okhttp/Route;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 74
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    .line 98
    iput-object p2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 99
    return-void
.end method

.method private defaultUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agent":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private execute(Z)Z
    .locals 3
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 421
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/squareup/okhttp/Route;

    .line 422
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Connection;->getHandshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 425
    if-eqz p1, :cond_0

    .line 426
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    const/4 v2, 0x1

    .line 434
    :goto_1
    return v2

    .line 422
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 432
    .local v1, "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v1, :cond_2

    .line 433
    iput-object v1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 434
    const/4 v2, 0x0

    goto :goto_1

    .line 438
    :cond_2
    iput-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 439
    throw v0
.end method

.method private getHeaders()Lcom/squareup/okhttp/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/squareup/okhttp/Headers;

    if-nez v2, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 141
    .local v1, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 143
    .local v0, "headers":Lcom/squareup/okhttp/Headers;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-Response-Source"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->responseSourceHeader(Lcom/squareup/okhttp/Response;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/squareup/okhttp/Headers;

    .line 147
    .end local v0    # "headers":Lcom/squareup/okhttp/Headers;
    .end local v1    # "response":Lcom/squareup/okhttp/Response;
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/squareup/okhttp/Headers;

    return-object v2
.end method

.method private getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    .line 366
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 380
    :goto_0
    return-object v4

    .line 371
    :cond_0
    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v3

    .line 376
    .local v3, "response":Lcom/squareup/okhttp/Response;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 378
    .local v1, "followUp":Lcom/squareup/okhttp/Request;
    if-nez v1, :cond_1

    .line 379
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 380
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->isRedirect()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->redirectionCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_2

    .line 384
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many redirects: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->redirectionCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_2
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 389
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    .line 394
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Lokio/Sink;

    move-result-object v2

    .line 395
    .local v2, "requestBody":Lokio/Sink;
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 396
    const/4 v2, 0x0

    .line 399
    :cond_3
    if-eqz v2, :cond_4

    instance-of v4, v2, Lcom/squareup/okhttp/internal/http/RetryableSink;

    if-nez v4, :cond_4

    .line 400
    new-instance v4, Ljava/net/HttpRetryException;

    const-string v5, "Cannot retry streamed HTTP body"

    iget v6, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->responseCode:I

    invoke-direct {v4, v5, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 403
    :cond_4
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sameConnection(Ljava/net/URL;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 404
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 407
    :cond_5
    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/Connection;

    move-result-object v0

    .line 408
    .local v0, "connection":Lcom/squareup/okhttp/Connection;
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/squareup/okhttp/internal/http/RetryableSink;

    .end local v2    # "requestBody":Lokio/Sink;
    invoke-direct {p0, v4, v0, v2, v3}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto/16 :goto_1
.end method

.method private initHttpEngine()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v2

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v2, :cond_1

    .line 308
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    .line 292
    :try_start_0
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    const-string v2, "POST"

    iput-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 302
    :cond_2
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-static {}, Lcom/squareup/okhttp/internal/Util;->emptySink()Lcom/squareup/okhttp/internal/http/RetryableSink;

    move-result-object v1

    .line 303
    .local v1, "requestBody":Lcom/squareup/okhttp/internal/http/RetryableSink;
    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v1    # "requestBody":Lcom/squareup/okhttp/internal/http/RetryableSink;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 306
    throw v0

    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not support writing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p3, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableSink;
    .param p4, "priorResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 312
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v8

    .line 315
    .local v8, "builder":Lcom/squareup/okhttp/Request$Builder;
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v9

    .line 316
    .local v9, "headers":Lcom/squareup/okhttp/Headers;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 317
    invoke-virtual {v9, v10}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 316
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 320
    :cond_0
    const/4 v3, 0x0

    .line 321
    .local v3, "bufferRequestBody":Z
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 324
    const-string v0, "Content-Length"

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 332
    :goto_1
    const-string v0, "Content-Type"

    invoke-virtual {v9, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 333
    const-string v0, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v8, v0, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 337
    :cond_1
    const-string v0, "User-Agent"

    invoke-virtual {v9, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 338
    const-string v0, "User-Agent"

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->defaultUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 341
    :cond_2
    invoke-virtual {v8}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 344
    .local v2, "request":Lcom/squareup/okhttp/Request;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 345
    .local v1, "engineClient":Lcom/squareup/okhttp/OkHttpClient;
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Internal;->internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/OkHttpClient;->setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    .line 349
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v5, 0x0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZLcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RouteSelector;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    return-object v0

    .line 325
    .end local v1    # "engineClient":Lcom/squareup/okhttp/OkHttpClient;
    .end local v2    # "request":Lcom/squareup/okhttp/Request;
    :cond_4
    iget v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_5

    .line 326
    const-string v0, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v8, v0, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    .line 328
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static responseSourceHeader(Lcom/squareup/okhttp/Response;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->networkResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->cacheResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "NONE"

    .line 160
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->cacheResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->networkResponse()Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setProtocols(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "protocolsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 535
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v5, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    if-eqz p2, :cond_0

    .line 537
    iget-object v6, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/squareup/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 539
    :cond_0
    const-string v6, ","

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 541
    .local v4, "protocol":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 546
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v6, v5}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 547
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    if-nez p1, :cond_1

    .line 508
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    if-nez p2, :cond_2

    .line 516
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 521
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    goto :goto_0

    .line 524
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_0
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    .line 105
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    .line 106
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 107
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->disconnect()V

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 129
    .local v1, "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBodyBytes()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 134
    .end local v1    # "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :cond_0
    :goto_0
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 182
    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/StatusLine;->get(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 194
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/StatusLine;->get(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->doInput:Z

    if-nez v2, :cond_0

    .line 218
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "This protocol does not support input"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 227
    .local v0, "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 228
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBodyBytes()Ljava/io/InputStream;

    move-result-object v1

    .line 232
    .local v1, "result":Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 233
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response body exists; responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_2
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->connect()V

    .line 241
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lokio/BufferedSink;

    move-result-object v0

    .line 242
    .local v0, "sink":Lokio/BufferedSink;
    if-nez v0, :cond_0

    .line 243
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_1
    invoke-interface {v0}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    .line 254
    .local v1, "hostPort":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 256
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 259
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v3, Ljava/net/SocketPermission;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "connect, resolve"

    invoke-direct {v3, v4, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 263
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 269
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    .prologue
    .line 558
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 559
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 2
    .param p1, "contentLength"    # J

    .prologue
    .line 562
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_2
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    .line 566
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 567
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 5
    .param p1, "newValue"    # J

    .prologue
    .line 495
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 496
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    const-string v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_0
.end method

.method public setReadTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 277
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 550
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpMethod;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/internal/http/HttpMethod;->METHODS:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    if-nez p1, :cond_1

    .line 474
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1
    if-nez p2, :cond_2

    .line 482
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 487
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    goto :goto_0

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_0
.end method

.method public final usingProxy()Z
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/squareup/okhttp/Route;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/squareup/okhttp/Route;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 458
    .local v0, "proxy":Ljava/net/Proxy;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 455
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 458
    .restart local v0    # "proxy":Ljava/net/Proxy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
