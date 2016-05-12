.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:S

.field length:S

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0
    .param p1, "source"    # Lokio/BufferedSource;

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    .line 611
    return-void
.end method

.method private readContinuationHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 636
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 637
    .local v0, "previousStreamId":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 638
    .local v2, "w1":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 639
    .local v3, "w2":I
    const/high16 v4, 0x3fff0000    # 1.9921875f

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x10

    int-to-short v4, v4

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    .line 640
    const v4, 0xff00

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v1, v4

    .line 641
    .local v1, "type":B
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    .line 642
    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    iget-short v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    iget-byte v7, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    invoke-static {v9, v5, v6, v1, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 643
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-byte v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->readPadding(Lokio/BufferedSource;B)S
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v4

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 644
    iget-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    iget-byte v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    iget-short v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->lengthWithoutPadding(SBS)S
    invoke-static {v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result v4

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    .line 645
    const v4, 0x7fffffff

    and-int/2addr v4, v3

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 646
    const/16 v4, 0x9

    if-eq v1, v4, :cond_1

    const-string v4, "%s != TYPE_CONTINUATION"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 647
    :cond_1
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    if-eq v4, v0, :cond_2

    const-string v4, "TYPE_CONTINUATION streamId changed"

    new-array v5, v8, [Ljava/lang/Object;

    # invokes: Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 648
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 614
    :goto_0
    iget-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    if-nez v4, :cond_1

    .line 615
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->skip(J)V

    .line 616
    const/4 v4, 0x0

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 617
    iget-byte v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 625
    :goto_1
    return-wide v0

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    int-to-long v5, v5

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-interface {v4, p1, v5, v6}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 623
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_1

    .line 624
    :cond_2
    iget-short v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
