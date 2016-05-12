.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field private final hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    .line 381
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->client:Z

    .line 382
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    .line 383
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;-><init>(Lokio/Buffer;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    .line 384
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 465
    :goto_0
    cmp-long v1, p2, v5

    if-lez v1, :cond_1

    .line 466
    const-wide/16 v1, 0x3fff

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    .line 467
    .local v0, "length":I
    int-to-long v1, v0

    sub-long/2addr p2, v1

    .line 468
    const/16 v2, 0x9

    cmp-long v1, p2, v5

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 469
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    goto :goto_0

    .line 468
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 471
    .end local v0    # "length":I
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 393
    :cond_0
    const/4 v1, 0x0

    .line 394
    .local v1, "length":I
    const/4 v3, 0x4

    .line 395
    .local v3, "type":B
    const/4 v0, 0x1

    .line 396
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 397
    .local v2, "streamId":I
    :try_start_1
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 398
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    .line 572
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 403
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->client:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 409
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_1
    :try_start_2
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 408
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized data(ZILokio/Buffer;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->data(ZILokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 3
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 495
    .local v0, "flags":B
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 496
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    monitor-exit p0

    return-void
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 502
    if-lez p4, :cond_0

    .line 503
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 505
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 388
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    monitor-exit p0

    return-void
.end method

.method frameHeader(IIBB)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3fff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 577
    :cond_0
    if-le p2, v2, :cond_1

    .line 578
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 580
    :cond_1
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p2, 0x3fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p4, 0xff

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 582
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 583
    return-void
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 541
    :cond_0
    :try_start_1
    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const-string v4, "errorCode.httpCode == -1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 542
    :cond_1
    array-length v4, p3

    add-int/lit8 v1, v4, 0x8

    .line 543
    .local v1, "length":I
    const/4 v3, 0x7

    .line 544
    .local v3, "type":B
    const/4 v0, 0x0

    .line 545
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 546
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 547
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 548
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget v5, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 549
    array-length v4, p3

    if-lez v4, :cond_2

    .line 550
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 552
    :cond_2
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    monitor-exit p0

    return-void
.end method

.method headers(ZILjava/util/List;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 450
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 451
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    invoke-virtual {v5, p3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeHeaders(Ljava/util/List;)V

    .line 453
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 454
    .local v0, "byteCount":J
    const-wide/16 v5, 0x3fff

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    .line 455
    .local v3, "length":I
    const/4 v4, 0x1

    .line 456
    .local v4, "type":B
    int-to-long v5, v3

    cmp-long v5, v0, v5

    if-nez v5, :cond_4

    const/4 v2, 0x4

    .line 457
    .local v2, "flags":B
    :goto_0
    if-eqz p1, :cond_2

    or-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    .line 458
    :cond_2
    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 459
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v3

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 461
    int-to-long v5, v3

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    int-to-long v5, v3

    sub-long v5, v0, v5

    invoke-direct {p0, p2, v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->writeContinuationFrames(IJ)V

    .line 462
    :cond_3
    return-void

    .line 456
    .end local v2    # "flags":B
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 6
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 528
    :cond_0
    const/16 v1, 0x8

    .line 529
    .local v1, "length":I
    const/4 v3, 0x6

    .line 530
    .local v3, "type":B
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 531
    .local v0, "flags":B
    :goto_0
    const/4 v2, 0x0

    .line 532
    .local v2, "streamId":I
    :try_start_1
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 533
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 534
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 535
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 530
    .end local v0    # "flags":B
    .end local v2    # "streamId":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 434
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 435
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    invoke-virtual {v5, p3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeHeaders(Ljava/util/List;)V

    .line 437
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 438
    .local v0, "byteCount":J
    const-wide/16 v5, 0x3ffb

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    .line 439
    .local v3, "length":I
    const/4 v4, 0x5

    .line 440
    .local v4, "type":B
    int-to-long v5, v3

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    const/4 v2, 0x4

    .line 441
    .local v2, "flags":B
    :goto_0
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p0, p1, v5, v4, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 442
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 443
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v3

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 445
    int-to-long v5, v3

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    int-to-long v5, v3

    sub-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->writeContinuationFrames(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :cond_2
    monitor-exit p0

    return-void

    .line 440
    .end local v2    # "flags":B
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 476
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 478
    :cond_1
    const/4 v1, 0x4

    .line 479
    .local v1, "length":I
    const/4 v2, 0x3

    .line 480
    .local v2, "type":B
    const/4 v0, 0x0

    .line 481
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 482
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 483
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized settings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 8
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 509
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/Settings;->size()I

    move-result v6

    mul-int/lit8 v3, v6, 0x5

    .line 510
    .local v3, "length":I
    const/4 v5, 0x4

    .line 511
    .local v5, "type":B
    const/4 v0, 0x0

    .line 512
    .local v0, "flags":B
    const/4 v4, 0x0

    .line 513
    .local v4, "streamId":I
    invoke-virtual {p0, v4, v3, v5, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 514
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v1, v6, :cond_4

    .line 515
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 514
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_1
    move v2, v1

    .line 517
    .local v2, "id":I
    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    const/4 v2, 0x3

    .line 519
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 520
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_1

    .line 518
    :cond_3
    const/4 v6, 0x7

    if-ne v2, v6, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    .line 522
    .end local v2    # "id":I
    :cond_4
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 415
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 558
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p2, v3

    if-lez v3, :cond_2

    .line 559
    :cond_1
    :try_start_1
    const-string v3, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 562
    :cond_2
    const/4 v1, 0x4

    .line 563
    .local v1, "length":I
    const/16 v2, 0x8

    .line 564
    .local v2, "type":B
    const/4 v0, 0x0

    .line 565
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 566
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 567
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    monitor-exit p0

    return-void
.end method
