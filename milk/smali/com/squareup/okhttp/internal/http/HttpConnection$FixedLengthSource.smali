.class Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;
.super Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;J)V
    .locals 4
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V

    .line 445
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 446
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->discard(Lokio/Source;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 482
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 9
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v7, 0x0

    .line 453
    cmp-long v4, p2, v7

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :cond_0
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_1
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_3

    move-wide v0, v2

    .line 468
    :cond_2
    :goto_0
    return-wide v0

    .line 457
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$900(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSource;

    move-result-object v4

    iget-wide v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-interface {v4, p1, v5, v6}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 458
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 460
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_4
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 464
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->cacheWrite(Lokio/Buffer;J)V

    .line 465
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_2

    .line 466
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$900(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
