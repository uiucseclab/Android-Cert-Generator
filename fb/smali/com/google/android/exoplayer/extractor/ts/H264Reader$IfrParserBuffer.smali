.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;
.super Ljava/lang/Object;
.source "mqtt_network_changed"


# instance fields
.field private final a:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private b:[B

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->b:[B

    .line 340
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 341
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a()V

    .line 342
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->d:Z

    .line 349
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->c:I

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->e:I

    .line 351
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 365
    if-ne p1, v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a()V

    .line 367
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->d:Z

    .line 369
    :cond_0
    return-void
.end method

.method public final a([BII)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 379
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->d:Z

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    sub-int v0, p3, p2

    .line 383
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->b:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->c:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 384
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->b:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->c:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->b:[B

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->b:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->c:I

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->b:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a([BI)V

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v0

    .line 392
    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)V

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v0

    .line 400
    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->a:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->e:I

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->d:Z

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->e:I

    return v0
.end method
