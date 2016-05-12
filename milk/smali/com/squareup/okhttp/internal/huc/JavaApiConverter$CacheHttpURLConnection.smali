.class final Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/huc/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpURLConnection"
.end annotation


# instance fields
.field private final request:Lcom/squareup/okhttp/Request;

.field private final response:Lcom/squareup/okhttp/Response;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    const/4 v0, 0x1

    .line 373
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 374
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/squareup/okhttp/Request;

    .line 375
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    .line 378
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->connected:Z

    .line 379
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doOutput:Z

    .line 382
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->method:Ljava/lang/String;

    .line 383
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    return-object v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 406
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 394
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 615
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 474
    if-gez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    if-nez p1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->get(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 485
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->get(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 462
    if-gez p1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    if-nez p1, :cond_1

    .line 466
    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
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
    .line 492
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/StatusLine;->get(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 610
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
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
    .line 418
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

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
    .line 502
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 600
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "allowUserInteraction"    # Z

    .prologue
    .line 585
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunklen"    # I

    .prologue
    .line 433
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 523
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "defaultUseCaches"    # Z

    .prologue
    .line 620
    invoke-super {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 621
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "doInput"    # Z

    .prologue
    .line 565
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "doOutput"    # Z

    .prologue
    .line 575
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 423
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 428
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "ifModifiedSince"    # J

    .prologue
    .line 605
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 438
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 534
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 449
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 401
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "useCaches"    # Z

    .prologue
    .line 595
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method
