.class Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;
.super Ljava/lang/Object;
.source "SpdyTransport.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/SpdyTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpdySource"
.end annotation


# instance fields
.field private final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field private closed:Z

.field private inputExhausted:Z

.field private final source:Lokio/Source;

.field private final stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;Ljava/net/CacheRequest;)V
    .locals 2
    .param p1, "stream"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 255
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSource()Lokio/Source;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lokio/Source;

    .line 258
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 259
    .local v0, "cacheBody":Ljava/io/OutputStream;
    :goto_0
    if-nez v0, :cond_0

    .line 260
    const/4 p2, 0x0

    .line 263
    :cond_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    .line 264
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    .line 265
    return-void

    .line 258
    .end local v0    # "cacheBody":Ljava/io/OutputStream;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private discardStream()Z
    .locals 7

    .prologue
    .line 311
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    .line 312
    .local v1, "oldTimeoutNanos":J
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v3

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 314
    const/16 v3, 0x64

    :try_start_0
    invoke-static {p0, v3}, Lcom/squareup/okhttp/internal/Util;->skipAll(Lokio/Source;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v3, 0x1

    .line 319
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v1, v2, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_0
    return v3

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 319
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v1, v2, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v1, v2, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->discardStream()Z

    .line 300
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    .line 302
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 304
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 269
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-eqz v2, :cond_3

    move-wide v4, v0

    .line 286
    :cond_2
    :goto_0
    return-wide v4

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lokio/Source;

    invoke-interface {v2, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 274
    .local v4, "read":J
    cmp-long v2, v4, v0

    if-nez v2, :cond_5

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    .line 276
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v2, :cond_4

    .line 277
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4
    move-wide v4, v0

    .line 279
    goto :goto_0

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 283
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
