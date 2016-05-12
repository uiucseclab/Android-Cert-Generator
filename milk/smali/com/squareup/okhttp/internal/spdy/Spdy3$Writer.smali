.class final Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lokio/Buffer;

.field private final headerBlockOut:Lokio/BufferedSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    .line 300
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    .line 302
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 303
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 304
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    .line 305
    new-instance v1, Lokio/DeflaterSink;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-direct {v1, v2, v0}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    .line 306
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 415
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 417
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v1, v4, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    .line 418
    .local v1, "name":Lokio/ByteString;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 419
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v4, v1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 420
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v3, v4, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    .line 421
    .local v3, "value":Lokio/ByteString;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 422
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v4, v3}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "name":Lokio/ByteString;
    .end local v3    # "value":Lokio/ByteString;
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V

    .line 425
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    .line 494
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 0

    .prologue
    .line 320
    monitor-enter p0

    monitor-exit p0

    return-void
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
    .line 391
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->data(ZILokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 2
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
    .line 396
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 397
    .local v0, "flags":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sendDataFrame(IILokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 396
    .end local v0    # "flags":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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

    .line 324
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 5
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p3, "ignored"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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

    .line 462
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 463
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_1
    const/4 v2, 0x7

    .line 466
    .local v2, "type":I
    const/4 v0, 0x0

    .line 467
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 468
    .local v1, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfff9

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 469
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 470
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 471
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 472
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 7
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
    .line 363
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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

    .line 364
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "flags":I
    const/16 v2, 0x8

    .line 367
    .local v2, "type":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    long-to-int v1, v3

    .line 369
    .local v1, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfff8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 370
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0xffffff

    and-int/2addr v4, v1

    or-int/lit8 v4, v4, 0x0

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 371
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 372
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized ping(ZII)V
    .locals 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 447
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v5, :cond_0

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

    .line 448
    :cond_0
    :try_start_1
    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    and-int/lit8 v5, p2, 0x1

    if-ne v5, v2, :cond_1

    move v5, v2

    :goto_0
    if-eq v6, v5, :cond_2

    .line 449
    .local v2, "payloadIsReply":Z
    :goto_1
    if-eq p1, v2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "payload != reply"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "payloadIsReply":Z
    :cond_1
    move v5, v4

    .line 448
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 450
    .restart local v2    # "payloadIsReply":Z
    :cond_3
    const/4 v3, 0x6

    .line 451
    .local v3, "type":I
    const/4 v0, 0x0

    .line 452
    .local v0, "flags":I
    const/4 v1, 0x4

    .line 453
    .local v1, "length":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v5, -0x7ffcfffa

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 454
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 455
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 456
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    monitor-exit p0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
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
    .line 316
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    return-void
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
    .line 377
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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

    .line 378
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 379
    :cond_1
    const/4 v0, 0x0

    .line 380
    .local v0, "flags":I
    const/4 v2, 0x3

    .line 381
    .local v2, "type":I
    const/16 v1, 0x8

    .line 382
    .local v1, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfffd

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 383
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 384
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 385
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 386
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    monitor-exit p0

    return-void
.end method

.method sendDataFrame(IILokio/Buffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # I
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 407
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 408
    if-lez p4, :cond_2

    .line 409
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 411
    :cond_2
    return-void
.end method

.method public declared-synchronized settings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 10
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffffff

    .line 428
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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

    .line 429
    :cond_0
    const/4 v5, 0x4

    .line 430
    .local v5, "type":I
    const/4 v0, 0x0

    .line 431
    .local v0, "flags":I
    :try_start_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/Settings;->size()I

    move-result v4

    .line 432
    .local v4, "size":I
    mul-int/lit8 v6, v4, 0x8

    add-int/lit8 v2, v6, 0x4

    .line 433
    .local v2, "length":I
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v7, -0x7ffcfffc

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 434
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int v7, v2, v9

    or-int/lit8 v7, v7, 0x0

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 435
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0xa

    if-gt v1, v6, :cond_2

    .line 437
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 436
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->flags(I)I

    move-result v3

    .line 439
    .local v3, "settingsFlags":I
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int v8, v1, v9

    or-int/2addr v7, v8

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 440
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_1

    .line 442
    .end local v3    # "settingsFlags":I
    :cond_2
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 7
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
    .line 348
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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

    .line 349
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 350
    const/4 v2, 0x2

    .line 351
    .local v2, "type":I
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 352
    .local v0, "flags":I
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    long-to-int v1, v3

    .line 354
    .local v1, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfffe

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 355
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 356
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 357
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 358
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "flags":I
    .end local v1    # "length":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 10
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
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const v9, 0x7fffffff

    const/4 v4, 0x0

    .line 330
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v5, :cond_0

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

    .line 331
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 332
    const-wide/16 v5, 0xa

    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int v1, v5

    .line 333
    .local v1, "length":I
    const/4 v2, 0x1

    .line 334
    .local v2, "type":I
    if-eqz p1, :cond_2

    const/4 v5, 0x1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x2

    :cond_1
    or-int v0, v5, v4

    .line 336
    .local v0, "flags":I
    const/4 v3, 0x0

    .line 337
    .local v3, "unused":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v5, -0x7ffcffff

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 338
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 339
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int v5, p3, v9

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 340
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int v5, p4, v9

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 341
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 342
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 343
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .end local v0    # "flags":I
    .end local v3    # "unused":I
    :cond_2
    move v5, v4

    .line 334
    goto :goto_0
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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

    .line 478
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p2, v3

    if-lez v3, :cond_2

    .line 479
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 482
    :cond_2
    const/16 v2, 0x9

    .line 483
    .local v2, "type":I
    const/4 v0, 0x0

    .line 484
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 485
    .local v1, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, -0x7ffcfff7

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 486
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 487
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 488
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 489
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    monitor-exit p0

    return-void
.end method
