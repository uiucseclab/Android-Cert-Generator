.class final Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;
.super Ljava/lang/Object;
.source "name"


# instance fields
.field private final a:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/exoplayer/upstream/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

.field private final f:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private g:J

.field private h:J

.field private i:Lcom/google/android/exoplayer/upstream/Allocation;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 59
    invoke-interface {p1}, Lcom/google/android/exoplayer/upstream/Allocator;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    .line 60
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 62
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    const/4 v1, 0x0

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    .line 63
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 64
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 65
    return-void
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .locals 5

    .prologue
    .line 281
    .line 282
    :goto_0
    if-lez p4, :cond_0

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 284
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 285
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    sub-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    .line 287
    iget-object v3, v0, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 288
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 289
    sub-int/2addr p4, v2

    .line 290
    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method private a(J[BI)V
    .locals 7

    .prologue
    .line 302
    const/4 v0, 0x0

    move v1, v0

    .line 303
    :goto_0
    if-ge v1, p4, :cond_0

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 305
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 306
    sub-int v0, p4, v1

    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    .line 308
    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v0

    invoke-static {v4, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 311
    add-int v0, v1, v3

    move v1, v0

    .line 312
    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 212
    iget-wide v0, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    .line 215
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 216
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    aget-byte v1, v0, v4

    .line 218
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_6

    move v0, v6

    .line 219
    :goto_0
    and-int/lit8 v1, v1, 0x7f

    .line 222
    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    if-nez v5, :cond_0

    .line 223
    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    .line 225
    :cond_0
    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    invoke-direct {p0, v2, v3, v5, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 226
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 230
    if-eqz v0, :cond_7

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 232
    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    .line 233
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 234
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v1

    move-wide v8, v2

    .line 240
    :goto_1
    iget-object v2, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer/CryptoInfo;->d:[I

    .line 241
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, v1, :cond_2

    .line 242
    :cond_1
    new-array v2, v1, [I

    .line 244
    :cond_2
    iget-object v3, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer/CryptoInfo;->e:[I

    .line 245
    if-eqz v3, :cond_3

    array-length v5, v3

    if-ge v5, v1, :cond_4

    .line 246
    :cond_3
    new-array v3, v1, [I

    .line 248
    :cond_4
    if-eqz v0, :cond_8

    .line 249
    mul-int/lit8 v0, v1, 0x6

    .line 250
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 334
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v12

    if-ge v12, v0, :cond_5

    .line 335
    new-array v12, v0, [B

    invoke-virtual {v5, v12, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BI)V

    .line 337
    .line 251
    :cond_5
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-direct {p0, v8, v9, v5, v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 252
    int-to-long v10, v0

    add-long/2addr v8, v10

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 254
    :goto_2
    if-ge v4, v1, :cond_9

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    aput v0, v2, v4

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->m()I

    move-result v0

    aput v0, v3, v4

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move v0, v4

    .line 218
    goto :goto_0

    :cond_7
    move v1, v6

    move-wide v8, v2

    .line 236
    goto :goto_1

    .line 259
    :cond_8
    aput v4, v2, v4

    .line 260
    iget v0, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    iget-wide v10, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    sub-long v10, v8, v10

    long-to-int v5, v10

    sub-int/2addr v0, v5

    aput v0, v3, v4

    .line 264
    :cond_9
    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v4, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->b:[B

    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer/CryptoInfo;->a(I[I[I[B[BI)V

    .line 268
    iget-wide v0, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    .line 269
    iget-wide v2, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    .line 270
    iget v1, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    sub-int v0, v1, v0

    iput v0, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    .line 271
    return-void
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 441
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    if-ne v0, v1, :cond_0

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a()Lcom/google/android/exoplayer/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private b(J)V
    .locals 5

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 109
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    div-int v1, v0, v1

    .line 110
    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    rem-int v2, v0, v2

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 113
    if-nez v2, :cond_2

    .line 115
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 118
    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 119
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a(Lcom/google/android/exoplayer/upstream/Allocation;)V

    .line 118
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 123
    if-nez v2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 124
    return-void

    :cond_1
    move v0, v2

    .line 123
    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private c(J)V
    .locals 9

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 323
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    div-int v2, v0, v1

    .line 324
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 325
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a(Lcom/google/android/exoplayer/upstream/Allocation;)V

    .line 326
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    .line 324
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 391
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b(I)I

    move-result v1

    .line 392
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v3

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)I

    move-result v1

    .line 394
    if-ne v1, v0, :cond_1

    .line 395
    if-eqz p3, :cond_0

    .line 402
    :goto_0
    return v0

    .line 398
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 400
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 401
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    move v0, v1

    .line 402
    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSource;IZ)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 363
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b(I)I

    move-result v1

    .line 364
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v3

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer/upstream/DataSource;->a([BII)I

    move-result v1

    .line 366
    if-ne v1, v0, :cond_1

    .line 367
    if-eqz p3, :cond_0

    .line 374
    :goto_0
    return v0

    .line 370
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 372
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 373
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a()V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a(Lcom/google/android/exoplayer/upstream/Allocation;)V

    goto :goto_0

    .line 77
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    .line 78
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 81
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    .line 97
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b(J)V

    .line 98
    return-void
.end method

.method public final a(JIJI[B)V
    .locals 8

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(JIJI[B)V

    .line 434
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 6

    .prologue
    .line 412
    :goto_0
    if-lez p2, :cond_0

    .line 413
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b(I)I

    move-result v0

    .line 414
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    .line 416
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 417
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    .line 418
    sub-int/2addr p2, v0

    .line 419
    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(J)J

    move-result-wide v0

    .line 164
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->b()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    .line 180
    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/SampleHolder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V

    .line 189
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    if-ge v0, v1, :cond_3

    .line 190
    :cond_2
    iget v0, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/SampleHolder;->a(I)Z

    .line 192
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    iget-object v2, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    iget v3, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(JLjava/nio/ByteBuffer;I)V

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->d()J

    move-result-wide v0

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->c()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->d()J

    move-result-wide v0

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 154
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    return-wide v0
.end method
