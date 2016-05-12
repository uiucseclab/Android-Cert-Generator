.class final Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;
.super Ljava/lang/Object;
.source "HpackDraft07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/HpackDraft07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 0
    .param p1, "out"    # Lokio/Buffer;

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    .line 429
    return-void
.end method


# virtual methods
.method writeByteString(Lokio/ByteString;)V
    .locals 3
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeInt(III)V

    .line 473
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 474
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 7
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
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v6, 0x0

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 436
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v1

    .line 437
    .local v1, "name":Lokio/ByteString;
    # getter for: Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$200()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 438
    .local v3, "staticIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeInt(III)V

    .line 441
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeByteString(Lokio/ByteString;)V

    .line 435
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    invoke-virtual {v4, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 444
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeByteString(Lokio/ByteString;)V

    .line 445
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_1

    .line 448
    .end local v1    # "name":Lokio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    if-ge p1, p2, :cond_0

    .line 454
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 469
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 460
    sub-int/2addr p1, p2

    .line 463
    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 464
    and-int/lit8 v0, p1, 0x7f

    .line 465
    .local v0, "b":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 466
    ushr-int/lit8 p1, p1, 0x7

    .line 467
    goto :goto_1

    .line 468
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0
.end method
