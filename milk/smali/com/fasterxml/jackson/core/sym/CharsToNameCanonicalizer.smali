.class public final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    }
.end annotation


# static fields
.field protected static final DEFAULT_T_SIZE:I = 0x40

.field public static final HASH_MULT:I = 0x21

.field static final MAX_COLL_CHAIN_FOR_REUSE:I = 0x3f

.field static final MAX_COLL_CHAIN_LENGTH:I = 0xff

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x2ee0

.field protected static final MAX_T_SIZE:I = 0x10000

.field static final sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;


# instance fields
.field protected _buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

.field protected final _canonicalize:Z

.field protected _dirty:Z

.field private final _hashSeed:I

.field protected _indexMask:I

.field protected final _intern:Z

.field protected _longestCollisionList:I

.field protected _parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _size:I

.field protected _sizeThreshold:I

.field protected _symbols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    .line 232
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_intern:Z

    .line 234
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 235
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 236
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 237
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 238
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V
    .locals 2
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .param p2, "canonicalize"    # Z
    .param p3, "intern"    # Z
    .param p4, "symbols"    # [Ljava/lang/String;
    .param p5, "buckets"    # [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .param p6, "size"    # I
    .param p7, "hashSeed"    # I
    .param p8, "longestColl"    # I

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 260
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    .line 261
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_intern:Z

    .line 263
    iput-object p4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 264
    iput-object p5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 265
    iput p6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 266
    iput p7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 268
    array-length v0, p4

    .line 269
    .local v0, "arrayLen":I
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 270
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 271
    iput p8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 275
    return-void
.end method

.method private _addSymbol([CIIII)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "h"    # I
    .param p5, "index"    # I

    .prologue
    const/16 v5, 0xff

    .line 483
    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    if-nez v3, :cond_3

    .line 484
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->copyArrays()V

    .line 485
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 494
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 495
    .local v2, "newSymbol":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_intern:Z

    if-eqz v3, :cond_1

    .line 496
    sget-object v3, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 500
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v3, v3, p5

    if-nez v3, :cond_4

    .line 501
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v2, v3, p5

    .line 512
    :cond_2
    :goto_1
    return-object v2

    .line 486
    .end local v2    # "newSymbol":Ljava/lang/String;
    :cond_3
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    if-lt v3, v4, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->rehash()V

    .line 491
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash([CII)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result p5

    goto :goto_0

    .line 503
    .restart local v2    # "newSymbol":Ljava/lang/String;
    :cond_4
    shr-int/lit8 v0, p5, 0x1

    .line 504
    .local v0, "bix":I
    new-instance v1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    .line 505
    .local v1, "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v1, v3, v0

    .line 506
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 507
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    if-le v3, v5, :cond_2

    .line 508
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->reportTooManyCollisions(I)V

    goto :goto_1
.end method

.method private _findSymbol2([CIILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "b"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 471
    :goto_0
    if-eqz p4, :cond_1

    .line 472
    invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->has([CII)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 478
    .end local v0    # "sym":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 476
    .restart local v0    # "sym":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    invoke-static {p4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$100(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object p4

    .line 477
    goto :goto_0

    .line 478
    .end local v0    # "sym":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static _thresholdSize(I)I
    .locals 1
    .param p0, "hashAreaSize"    # I

    .prologue
    .line 252
    shr-int/lit8 v0, p0, 0x2

    sub-int v0, p0, v0

    return v0
.end method

.method private copyArrays()V
    .locals 3

    .prologue
    .line 565
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 566
    .local v1, "oldSyms":[Ljava/lang/String;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 568
    .local v0, "oldBuckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 569
    return-void
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 6

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "now":J
    long-to-int v3, v0

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    or-int/lit8 v2, v3, 0x1

    .line 216
    .local v2, "seed":I
    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v3

    return-object v3
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 1
    .param p0, "hashSeed"    # I

    .prologue
    .line 220
    sget-object v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeOrphan(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 242
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 243
    shr-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 245
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 246
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 247
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 249
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 250
    return-void
.end method

.method private makeOrphan(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 9
    .param p1, "seed"    # I

    .prologue
    const/4 v2, 0x1

    .line 313
    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    move v3, v2

    move v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .locals 2
    .param p1, "child"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    const/16 v1, 0x2ee0

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    const/16 v1, 0x3f

    if-le v0, v1, :cond_2

    .line 335
    :cond_0
    monitor-enter p0

    .line 336
    const/16 v0, 0x40

    :try_start_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 340
    monitor-exit p0

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 348
    monitor-enter p0

    .line 349
    :try_start_1
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 350
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 351
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 352
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 353
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 354
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 358
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private rehash()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 579
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v10, v12

    .line 580
    .local v10, "size":I
    add-int v7, v10, v10

    .line 586
    .local v7, "newSize":I
    const/high16 v12, 0x10000

    if-le v7, v12, :cond_1

    .line 591
    const/4 v12, 0x0

    iput v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 592
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 594
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 651
    :cond_0
    return-void

    .line 598
    :cond_1
    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 599
    .local v9, "oldSyms":[Ljava/lang/String;
    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 600
    .local v8, "oldBuckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    new-array v12, v7, [Ljava/lang/String;

    iput-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 601
    shr-int/lit8 v12, v7, 0x1

    new-array v12, v12, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 603
    add-int/lit8 v12, v7, -0x1

    iput v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 604
    invoke-static {v7}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v12

    iput v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 606
    const/4 v2, 0x0

    .line 611
    .local v2, "count":I
    const/4 v5, 0x0

    .line 612
    .local v5, "maxColl":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_4

    .line 613
    aget-object v11, v9, v3

    .line 614
    .local v11, "symbol":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 615
    add-int/lit8 v2, v2, 0x1

    .line 616
    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v4

    .line 617
    .local v4, "index":I
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v12, v12, v4

    if-nez v12, :cond_3

    .line 618
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v11, v12, v4

    .line 612
    .end local v4    # "index":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    .restart local v4    # "index":I
    :cond_3
    shr-int/lit8 v1, v4, 0x1

    .line 621
    .local v1, "bix":I
    new-instance v6, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v6, v11, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    .line 622
    .local v6, "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v6, v12, v1

    .line 623
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I
    invoke-static {v6}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 628
    .end local v1    # "bix":I
    .end local v4    # "index":I
    .end local v6    # "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .end local v11    # "symbol":Ljava/lang/String;
    :cond_4
    shr-int/lit8 v10, v10, 0x1

    .line 629
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_7

    .line 630
    aget-object v0, v8, v3

    .line 631
    .local v0, "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :goto_3
    if-eqz v0, :cond_6

    .line 632
    add-int/lit8 v2, v2, 0x1

    .line 633
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$200(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;

    move-result-object v11

    .line 634
    .restart local v11    # "symbol":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v4

    .line 635
    .restart local v4    # "index":I
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v12, v12, v4

    if-nez v12, :cond_5

    .line 636
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v11, v12, v4

    .line 643
    :goto_4
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$100(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    .line 644
    goto :goto_3

    .line 638
    :cond_5
    shr-int/lit8 v1, v4, 0x1

    .line 639
    .restart local v1    # "bix":I
    new-instance v6, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v6, v11, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    .line 640
    .restart local v6    # "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v6, v12, v1

    .line 641
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I
    invoke-static {v6}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4

    .line 629
    .end local v1    # "bix":I
    .end local v4    # "index":I
    .end local v6    # "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .end local v11    # "symbol":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 646
    .end local v0    # "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :cond_7
    iput v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 648
    iget v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    if-eq v2, v12, :cond_0

    .line 649
    new-instance v12, Ljava/lang/Error;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " entries; now have "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v12
.end method


# virtual methods
.method public _hashToIndex(I)I
    .locals 1
    .param p1, "rawHash"    # I

    .prologue
    .line 520
    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr p1, v0

    .line 521
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public bucketCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public calcHash(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 546
    .local v2, "len":I
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 547
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 548
    mul-int/lit8 v3, v0, 0x21

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .end local v0    # "hash":I
    :cond_1
    return v0
.end method

.method public calcHash([CII)I
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 534
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 535
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 536
    mul-int/lit8 v2, v0, 0x21

    aget-char v3, p1, v1

    add-int v0, v2, v3

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .end local v0    # "hash":I
    :cond_1
    return v0
.end method

.method public collisionCount()I
    .locals 6

    .prologue
    .line 401
    const/4 v2, 0x0

    .line 403
    .local v2, "count":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 404
    .local v1, "bucket":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    if-eqz v1, :cond_0

    .line 405
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$000(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)I

    move-result v5

    add-int/2addr v2, v5

    .line 403
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "bucket":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :cond_1
    return v2
.end method

.method public findSymbol([CIII)Ljava/lang/String;
    .locals 9
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "h"    # I

    .prologue
    .line 428
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 429
    const-string v8, ""

    .line 467
    :cond_0
    :goto_0
    return-object v8

    .line 431
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    if-nez v0, :cond_2

    .line 432
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v5

    .line 441
    .local v5, "index":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v8, v0, v5

    .line 444
    .local v8, "sym":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 446
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_4

    .line 447
    const/4 v7, 0x0

    .line 448
    .local v7, "i":I
    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int v1, p2, v7

    aget-char v1, p1, v1

    if-ne v0, v1, :cond_4

    .line 450
    add-int/lit8 v7, v7, 0x1

    if-ne v7, p3, :cond_3

    goto :goto_0

    .line 455
    .end local v7    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    shr-int/lit8 v1, v5, 0x1

    aget-object v6, v0, v1

    .line 456
    .local v6, "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    if-eqz v6, :cond_5

    .line 457
    invoke-virtual {v6, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->has([CII)Ljava/lang/String;

    move-result-object v8

    .line 458
    if-nez v8, :cond_0

    .line 461
    # getter for: Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    invoke-static {v6}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->access$100(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_findSymbol2([CIILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;

    move-result-object v8

    .line 462
    if-nez v8, :cond_0

    .end local v6    # "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 467
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_addSymbol([CIIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public hashSeed()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    return v0
.end method

.method public makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 9
    .param p1, "canonicalize"    # Z
    .param p2, "intern"    # Z

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 302
    .local v4, "symbols":[Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 303
    .local v5, "buckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 304
    .local v6, "size":I
    iget v7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 305
    .local v7, "hashSeed":I
    iget v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 306
    .local v8, "longestCollisionList":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V

    return-object v0

    .line 306
    .end local v4    # "symbols":[Ljava/lang/String;
    .end local v5    # "buckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .end local v6    # "size":I
    .end local v7    # "hashSeed":I
    .end local v8    # "longestCollisionList":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public maxCollisionLength()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    return v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    goto :goto_0
.end method

.method protected reportTooManyCollisions(I)V
    .locals 3
    .param p1, "maxLen"    # I

    .prologue
    .line 657
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Longest collision chain in symbol table (of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") now exceeds maximum, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    return v0
.end method
