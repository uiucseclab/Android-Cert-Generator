.class public final Lcom/squareup/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Call$1;,
        Lcom/squareup/okhttp/Call$RealResponseBody;,
        Lcom/squareup/okhttp/Call$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field private final dispatcher:Lcom/squareup/okhttp/Dispatcher;

.field engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private executed:Z

.field private redirectionCount:I

.field private request:Lcom/squareup/okhttp/Request;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Dispatcher;Lcom/squareup/okhttp/Request;)V
    .locals 0
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "dispatcher"    # Lcom/squareup/okhttp/Dispatcher;
    .param p3, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 51
    iput-object p2, p0, Lcom/squareup/okhttp/Call;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    .line 52
    iput-object p3, p0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Request;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/okhttp/Call;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Dispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    return-object v0
.end method

.method private getResponse()Lcom/squareup/okhttp/Response;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v17

    .line 168
    .local v17, "body":Lcom/squareup/okhttp/RequestBody;
    const/4 v8, 0x0

    .line 169
    .local v8, "requestBodyOut":Lcom/squareup/okhttp/internal/http/RetryableSink;
    if-eqz v17, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v23

    .line 172
    .local v23, "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v20

    .line 173
    .local v20, "contentType":Lcom/squareup/okhttp/MediaType;
    if-eqz v20, :cond_0

    .line 174
    const-string v2, "Content-Type"

    invoke-virtual/range {v20 .. v20}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 177
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v18

    .line 178
    .local v18, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-eqz v2, :cond_2

    .line 179
    const-string v2, "Content-Length"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 180
    const-string v2, "Transfer-Encoding"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 186
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    .line 192
    .end local v18    # "contentLength":J
    .end local v20    # "contentType":Lcom/squareup/okhttp/MediaType;
    .end local v23    # "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    :cond_1
    :goto_1
    new-instance v2, Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZLcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RouteSelector;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 195
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/okhttp/Call;->canceled:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 222
    :goto_3
    return-object v2

    .line 182
    .restart local v18    # "contentLength":J
    .restart local v20    # "contentType":Lcom/squareup/okhttp/MediaType;
    .restart local v23    # "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    :cond_2
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 183
    const-string v2, "Content-Length"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 187
    .end local v18    # "contentLength":J
    .end local v20    # "contentType":Lcom/squareup/okhttp/MediaType;
    .end local v23    # "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-static {}, Lcom/squareup/okhttp/internal/Util;->emptySink()Lcom/squareup/okhttp/internal/http/RetryableSink;

    move-result-object v8

    goto :goto_1

    .line 198
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lokio/BufferedSink;

    move-result-object v25

    .line 202
    .local v25, "sink":Lokio/BufferedSink;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 205
    .end local v25    # "sink":Lokio/BufferedSink;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v16

    .line 218
    .local v16, "response":Lcom/squareup/okhttp/Response;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/squareup/okhttp/Request;

    move-result-object v22

    .line 220
    .local v22, "followUp":Lcom/squareup/okhttp/Request;
    if-nez v22, :cond_7

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 222
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/squareup/okhttp/Call$RealResponseBody;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Lokio/BufferedSource;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v4}, Lcom/squareup/okhttp/Call$RealResponseBody;-><init>(Lcom/squareup/okhttp/Response;Lokio/BufferedSource;)V

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v2

    goto/16 :goto_3

    .line 206
    .end local v16    # "response":Lcom/squareup/okhttp/Response;
    .end local v22    # "followUp":Lcom/squareup/okhttp/Request;
    :catch_0
    move-exception v21

    .line 207
    .local v21, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v24

    .line 208
    .local v24, "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v24, :cond_6

    .line 209
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto/16 :goto_2

    .line 214
    :cond_6
    throw v21

    .line 227
    .end local v21    # "e":Ljava/io/IOException;
    .end local v24    # "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    .restart local v16    # "response":Lcom/squareup/okhttp/Response;
    .restart local v22    # "followUp":Lcom/squareup/okhttp/Request;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->isRedirect()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/squareup/okhttp/Call;->redirectionCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/squareup/okhttp/Call;->redirectionCount:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_8

    .line 228
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many redirects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/squareup/okhttp/Call;->redirectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual/range {v22 .. v22}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sameConnection(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 235
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/Connection;

    move-result-object v13

    .line 236
    .local v13, "connection":Lcom/squareup/okhttp/Connection;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    .line 237
    new-instance v9, Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/okhttp/Call;->request:Lcom/squareup/okhttp/Request;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZLcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RouteSelector;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto/16 :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->disconnect()V

    .line 114
    :cond_0
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/Callback;)V
    .locals 3
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/Callback;

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    .line 103
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    new-instance v1, Lcom/squareup/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/squareup/okhttp/Call$AsyncCall;-><init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Lcom/squareup/okhttp/Call$1;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Dispatcher;->enqueue(Lcom/squareup/okhttp/Call$AsyncCall;)V

    .line 105
    return-void
.end method

.method public execute()Lcom/squareup/okhttp/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/squareup/okhttp/Call;->executed:Z

    .line 79
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-direct {p0}, Lcom/squareup/okhttp/Call;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/squareup/okhttp/Response;
    iget-object v1, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 82
    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    return-object v0
.end method
