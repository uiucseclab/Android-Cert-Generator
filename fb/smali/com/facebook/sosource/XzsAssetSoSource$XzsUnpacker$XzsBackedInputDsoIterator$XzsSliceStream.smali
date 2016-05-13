.class final Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;
.super Ljava/io/InputStream;
.source "video_already_seen"


# instance fields
.field final synthetic a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;

.field private b:I


# direct methods
.method constructor <init>(Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;I)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 252
    iput p2, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    .line 253
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    return v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->skip(J)J

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 262
    iget v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    if-nez v1, :cond_0

    .line 271
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;

    iget-object v1, v1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->d:Lcom/facebook/xzdecoder/XzInputStream;

    invoke-virtual {v1}, Lcom/facebook/xzdecoder/XzInputStream;->read()I

    move-result v1

    .line 267
    if-ne v1, v0, :cond_1

    .line 268
    new-instance v0, Ljava/io/IOException;

    const-string v1, "xz stream terminated prematurely"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    iget v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    .line 276
    if-lez p3, :cond_1

    iget v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    if-nez v0, :cond_1

    .line 277
    const/4 v0, -0x1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    iget v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;

    iget-object v1, v1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->d:Lcom/facebook/xzdecoder/XzInputStream;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/xzdecoder/XzInputStream;->read([BII)I

    move-result v0

    .line 281
    if-lez v0, :cond_0

    .line 282
    iget v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->b:I

    goto :goto_0
.end method
