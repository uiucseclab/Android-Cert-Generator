.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 2
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    .line 100
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->client:Z

    .line 101
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    .line 102
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    .line 103
    return-void
.end method

.method private readAlternateService(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v11, 0xffffffffL

    and-long v6, v0, v11

    .line 356
    .local v6, "maxAge":J
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int v5, v0, v1

    .line 357
    .local v5, "port":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v10, v0, 0xff

    .line 359
    .local v10, "protocolLength":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v11, v10

    invoke-interface {v0, v11, v12}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    .line 360
    .local v3, "protocol":Lokio/ByteString;
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 361
    .local v8, "hostLength":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v11, v8

    invoke-interface {v0, v11, v12}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "host":Ljava/lang/String;
    add-int/lit8 v0, p2, -0x9

    sub-int/2addr v0, v10

    sub-int v9, v0, v8

    .line 363
    .local v9, "originLength":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v11, v9

    invoke-interface {v0, v11, v12}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .local v2, "origin":Ljava/lang/String;
    move-object v0, p1

    move/from16 v1, p4

    .line 364
    invoke-interface/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V

    .line 365
    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 6
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 220
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_0

    move v1, v0

    .line 221
    .local v1, "inFinished":Z
    :goto_0
    and-int/lit8 v4, p3, 0x20

    if-eqz v4, :cond_1

    .line 222
    .local v0, "gzipped":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 223
    const-string v4, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .end local v0    # "gzipped":Z
    .end local v1    # "inFinished":Z
    :cond_0
    move v1, v3

    .line 220
    goto :goto_0

    .restart local v1    # "inFinished":Z
    :cond_1
    move v0, v3

    .line 221
    goto :goto_1

    .line 226
    .restart local v0    # "gzipped":Z
    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->readPadding(Lokio/BufferedSource;B)S
    invoke-static {v3, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v2

    .line 227
    .local v2, "padding":S
    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->lengthWithoutPadding(SBS)S
    invoke-static {p2, p3, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result p2

    .line 229
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v1, p4, v3, p2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 230
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 231
    return-void
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 9
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 329
    const/16 v5, 0x8

    if-ge p2, v5, :cond_0

    const-string v5, "TYPE_GOAWAY length < 8: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 330
    :cond_0
    if-eqz p4, :cond_1

    const-string v5, "TYPE_GOAWAY streamId != 0"

    new-array v6, v8, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 331
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 332
    .local v3, "lastStreamId":I
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 333
    .local v2, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 334
    .local v4, "opaqueDataLength":I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    .line 335
    .local v1, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v1, :cond_2

    .line 336
    const-string v5, "TYPE_GOAWAY unexpected error code: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 338
    :cond_2
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 339
    .local v0, "debugData":Lokio/ByteString;
    if-lez v4, :cond_3

    .line 340
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 342
    :cond_3
    invoke-interface {p1, v3, v1, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V

    .line 343
    return-void
.end method

.method private readHeaderBlock(SSBI)Ljava/util/List;
    .locals 2
    .param p1, "length"    # S
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSBI)",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-short p1, v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    iput-short p1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    .line 208
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput p4, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readHeaders()V

    .line 211
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emitReferenceSet()V

    .line 214
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getAndReset()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p4, :cond_0

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 187
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 189
    .local v2, "endStream":Z
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->readPadding(Lokio/BufferedSource;B)S
    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v7

    .line 191
    .local v7, "padding":S
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 193
    add-int/lit8 v0, p2, -0x5

    int-to-short p2, v0

    .line 196
    :cond_1
    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->lengthWithoutPadding(SBS)S
    invoke-static {p2, p3, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result p2

    .line 198
    invoke-direct {p0, p2, v7, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaderBlock(SSBI)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v4, -0x1

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 201
    return-void

    .end local v2    # "endStream":Z
    .end local v5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    .end local v7    # "padding":S
    :cond_2
    move v2, v1

    .line 187
    goto :goto_0
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 7
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 319
    const/16 v4, 0x8

    if-eq p2, v4, :cond_0

    const-string v4, "TYPE_PING length != 8: %s"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 320
    :cond_0
    if-eqz p4, :cond_1

    const-string v4, "TYPE_PING streamId != 0"

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 321
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 322
    .local v1, "payload1":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 323
    .local v2, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 324
    .local v0, "ack":Z
    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 325
    return-void

    .end local v0    # "ack":Z
    :cond_2
    move v0, v3

    .line 323
    goto :goto_0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 242
    .local v2, "w1":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 243
    .local v0, "exclusive":Z
    :goto_0
    const v4, 0x7fffffff

    and-int v1, v2, v4

    .line 244
    .local v1, "streamDependency":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v4, 0x1

    .line 245
    .local v3, "weight":I
    invoke-interface {p1, p2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    .line 246
    return-void

    .line 242
    .end local v0    # "exclusive":Z
    .end local v1    # "streamDependency":I
    .end local v3    # "weight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 4
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 237
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 238
    return-void
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    if-nez p4, :cond_0

    .line 308
    const-string v3, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->readPadding(Lokio/BufferedSource;B)S
    invoke-static {v3, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v1

    .line 311
    .local v1, "padding":S
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 312
    .local v2, "promisedStreamId":I
    add-int/lit8 v3, p2, -0x4

    int-to-short p2, v3

    .line 313
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaderBlock(SSBI)Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    invoke-interface {p1, p4, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 315
    return-void
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 6
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 250
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 251
    :cond_0
    if-nez p4, :cond_1

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    new-array v3, v5, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 253
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 254
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_2

    .line 255
    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 257
    :cond_2
    invoke-interface {p1, p4, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 258
    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 262
    if-eqz p4, :cond_0

    const-string v4, "TYPE_SETTINGS streamId != 0"

    new-array v5, v7, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 263
    :cond_0
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_3

    .line 264
    if-eqz p2, :cond_1

    const-string v4, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v5, v7, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 265
    :cond_1
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    .line 303
    :cond_2
    :goto_0
    return-void

    .line 269
    :cond_3
    rem-int/lit8 v4, p2, 0x5

    if-eqz v4, :cond_4

    const-string v4, "TYPE_SETTINGS length %% 5 != 0: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v7

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 270
    :cond_4
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    .line 271
    .local v2, "settings":Lcom/squareup/okhttp/internal/spdy/Settings;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_6

    .line 272
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v1

    .line 273
    .local v1, "id":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 275
    .local v3, "value":I
    packed-switch v1, :pswitch_data_0

    .line 295
    const-string v4, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 279
    :pswitch_0
    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_5

    .line 280
    const-string v4, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v5, v7, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 284
    :pswitch_1
    const/4 v1, 0x4

    .line 297
    :cond_5
    :pswitch_2
    invoke-virtual {v2, v1, v7, v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 271
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    .line 287
    :pswitch_3
    const/4 v1, 0x7

    .line 288
    if-gez v3, :cond_5

    .line 289
    const-string v4, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v5, v7, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 299
    .end local v1    # "id":I
    .end local v3    # "value":I
    :cond_6
    invoke-interface {p1, v7, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 300
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v4

    if-ltz v4, :cond_2

    .line 301
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting(I)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v6

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long v0, v2, v4

    .line 349
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 350
    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 351
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 369
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 11
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 118
    :try_start_0
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 119
    .local v5, "w1":I
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 125
    .local v6, "w2":I
    const/high16 v9, 0x3fff0000    # 1.9921875f

    and-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x10

    int-to-short v2, v9

    .line 126
    .local v2, "length":S
    const v9, 0xff00

    and-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v4, v9

    .line 127
    .local v4, "type":B
    and-int/lit16 v9, v5, 0xff

    int-to-byte v1, v9

    .line 129
    .local v1, "flags":B
    const v9, 0x7fffffff

    and-int v3, v6, v9

    .line 130
    .local v3, "streamId":I
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_0

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v9

    invoke-static {v7, v3, v2, v4, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 132
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 178
    :pswitch_0
    const-string v9, "PROTOCOL_ERROR: unknown frame type %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v8

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v9, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 120
    .end local v1    # "flags":B
    .end local v2    # "length":S
    .end local v3    # "streamId":I
    .end local v4    # "type":B
    .end local v5    # "w1":I
    .end local v6    # "w2":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v7, v8

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return v7

    .line 134
    .restart local v1    # "flags":B
    .restart local v2    # "length":S
    .restart local v3    # "streamId":I
    .restart local v4    # "type":B
    .restart local v5    # "w1":I
    .restart local v6    # "w2":I
    :pswitch_1
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 146
    :pswitch_4
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 150
    :pswitch_5
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 154
    :pswitch_6
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 158
    :pswitch_7
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 162
    :pswitch_8
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 166
    :pswitch_9
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 170
    :pswitch_a
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readAlternateService(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 174
    :pswitch_b
    if-eqz v2, :cond_1

    const-string v9, "TYPE_BLOCKED length != 0: %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v7, v8

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v9, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->client:Z

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 108
    .local v0, "connectionPreface":Lokio/ByteString;
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    :cond_2
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
