.class public final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;,
        Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_T_SIZE:I = 0x40

.field static final INITIAL_COLLISION_LEN:I = 0x20

.field static final LAST_VALID_BUCKET:I = 0xfe

.field static final MAX_COLL_CHAIN_FOR_REUSE:I = 0x3f

.field private static final MAX_COLL_CHAIN_LENGTH:I = 0xff

.field private static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field private static final MAX_T_SIZE:I = 0x10000

.field static final MIN_HASH_SIZE:I = 0x10

.field private static final MULT:I = 0x21

.field private static final MULT2:I = 0x1003f

.field private static final MULT3:I = 0x1f


# instance fields
.field protected _collCount:I

.field protected _collEnd:I

.field protected _collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field protected _count:I

.field protected _hash:[I

.field protected _hashMask:I

.field private _hashShared:Z

.field protected final _intern:Z

.field protected _longestCollisionList:I

.field protected _mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

.field private _namesShared:Z

.field private transient _needRehash:Z

.field protected final _parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field private final _seed:I

.field protected final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IZI)V
    .locals 3
    .param p1, "sz"    # I
    .param p2, "intern"    # Z
    .param p3, "seed"    # I

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 241
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    .line 242
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 244
    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    .line 245
    const/16 p1, 0x10

    .line 258
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 259
    return-void

    .line 250
    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 251
    const/16 v0, 0x10

    .line 252
    .local v0, "curr":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 253
    add-int/2addr v0, v0

    goto :goto_1

    .line 255
    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
    .locals 2
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .param p2, "intern"    # Z
    .param p3, "seed"    # I
    .param p4, "state"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 267
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    .line 268
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 272
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 273
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    .line 274
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 275
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 276
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 277
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 278
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 279
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 283
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    .line 284
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 285
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 286
    return-void
.end method

.method private _addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V
    .locals 11
    .param p1, "hash"    # I
    .param p2, "symbol"    # Lcom/fasterxml/jackson/core/sym/Name;

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x1

    .line 779
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    if-eqz v6, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareMain()V

    .line 783
    :cond_0
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v6, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->rehash()V

    .line 787
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 792
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int v4, p1, v6

    .line 793
    .local v4, "ix":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v6, v6, v4

    if-nez v6, :cond_5

    .line 794
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    shl-int/lit8 v7, p1, 0x8

    aput v7, v6, v4

    .line 795
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    if-eqz v6, :cond_2

    .line 796
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareNames()V

    .line 798
    :cond_2
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object p2, v6, v4

    .line 840
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    array-length v3, v6

    .line 841
    .local v3, "hashSize":I
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v7, v3, 0x1

    if-le v6, v7, :cond_4

    .line 842
    shr-int/lit8 v2, v3, 0x2

    .line 846
    .local v2, "hashQuarter":I
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    sub-int v7, v3, v2

    if-le v6, v7, :cond_a

    .line 847
    iput-boolean v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 853
    .end local v2    # "hashQuarter":I
    :cond_4
    :goto_1
    return-void

    .line 803
    .end local v3    # "hashSize":I
    :cond_5
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v6, :cond_6

    .line 804
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareCollision()V

    .line 806
    :cond_6
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 807
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v1, v6, v4

    .line 808
    .local v1, "entryValue":I
    and-int/lit16 v0, v1, 0xff

    .line 809
    .local v0, "bucket":I
    if-nez v0, :cond_9

    .line 810
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v7, 0xfe

    if-gt v6, v7, :cond_8

    .line 811
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 812
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 814
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    array-length v6, v6

    if-lt v0, v6, :cond_7

    .line 815
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 821
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    and-int/lit16 v7, v1, -0x100

    add-int/lit8 v8, v0, 0x1

    or-int/2addr v7, v8

    aput v7, v6, v4

    .line 827
    :goto_3
    new-instance v5, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v6, v6, v0

    invoke-direct {v5, p2, v6}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 828
    .local v5, "newB":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aput-object v5, v6, v0

    .line 830
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v6

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 831
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    if-le v6, v10, :cond_3

    .line 832
    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->reportTooManyCollisions(I)V

    goto :goto_0

    .line 818
    .end local v5    # "newB":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_2

    .line 823
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 848
    .end local v0    # "bucket":I
    .end local v1    # "entryValue":I
    .restart local v2    # "hashQuarter":I
    .restart local v3    # "hashSize":I
    :cond_a
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v6, v2, :cond_4

    .line 849
    iput-boolean v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto :goto_1
.end method

.method protected static calcQuads([B)[I
    .locals 6
    .param p0, "wordBytes"    # [B

    .prologue
    .line 707
    array-length v0, p0

    .line 708
    .local v0, "blen":I
    add-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x4

    new-array v2, v4, [I

    .line 709
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 710
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 712
    .local v3, "x":I
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 713
    shl-int/lit8 v4, v3, 0x8

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 714
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 715
    shl-int/lit8 v4, v3, 0x8

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 716
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 717
    shl-int/lit8 v4, v3, 0x8

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 721
    :cond_0
    shr-int/lit8 v4, v1, 0x2

    aput v3, v2, v4

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v3    # "x":I
    :cond_1
    return-object v2
.end method

.method private static constructName(ILjava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 1
    .param p0, "hash"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .prologue
    .line 1032
    if-nez p3, :cond_0

    .line 1033
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    invoke-direct {v0, p1, p0, p2}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 1035
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name2;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private static constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 6
    .param p0, "hash"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1039
    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 1040
    packed-switch p3, :pswitch_data_0

    .line 1050
    :cond_0
    invoke-static {p1, p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/NameN;->construct(Ljava/lang/String;I[II)Lcom/fasterxml/jackson/core/sym/NameN;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1042
    :pswitch_0
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 1044
    :pswitch_1
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_0

    .line 1046
    :pswitch_2
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 1040
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .locals 6

    .prologue
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 320
    .local v0, "now":J
    long-to-int v3, v0

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    or-int/lit8 v2, v3, 0x1

    .line 321
    .local v2, "seed":I
    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    move-result-object v3

    return-object v3
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .locals 3
    .param p0, "seed"    # I

    .prologue
    .line 329
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(IZI)V

    return-object v0
.end method

.method private expandCollision()V
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1022
    .local v0, "old":[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1023
    return-void
.end method

.method private findBestBucket()I
    .locals 7

    .prologue
    .line 975
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 976
    .local v2, "buckets":[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    const v0, 0x7fffffff

    .line 977
    .local v0, "bestCount":I
    const/4 v1, -0x1

    .line 979
    .local v1, "bestIx":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 980
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v3

    .line 981
    .local v3, "count":I
    if-ge v3, v0, :cond_1

    .line 982
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 989
    .end local v3    # "count":I
    .end local v4    # "i":I
    :goto_1
    return v4

    .line 985
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    :cond_0
    move v0, v3

    .line 986
    move v1, v4

    .line 979
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "count":I
    :cond_2
    move v4, v1

    .line 989
    goto :goto_1
.end method

.method public static getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/Name1;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    .locals 9
    .param p1, "sz"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    add-int/lit8 v2, p1, -0x1

    new-array v3, p1, [I

    new-array v4, p1, [Lcom/fasterxml/jackson/core/sym/Name;

    const/4 v5, 0x0

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(II[I[Lcom/fasterxml/jackson/core/sym/Name;[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;III)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
    .locals 4
    .param p1, "childState"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    .prologue
    .line 366
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 367
    .local v0, "childCount":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    .line 370
    .local v1, "currState":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    iget v2, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    if-gt v0, v2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 380
    :cond_0
    const/16 v2, 0x1770

    if-gt v0, v2, :cond_1

    iget v2, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    const/16 v3, 0x3f

    if-le v2, v3, :cond_2

    .line 387
    :cond_1
    const/16 v2, 0x40

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object p1

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private nukeSymbols()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 960
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 961
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 962
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 963
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 964
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 965
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 966
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 967
    return-void
.end method

.method private rehash()V
    .locals 21

    .prologue
    .line 857
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 859
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 866
    .local v13, "oldMainHash":[I
    array-length v7, v13

    .line 867
    .local v7, "len":I
    add-int v10, v7, v7

    .line 872
    .local v10, "newLen":I
    const/high16 v18, 0x10000

    move/from16 v0, v18

    if-le v10, v0, :cond_1

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->nukeSymbols()V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    new-array v0, v10, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 878
    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    .line 879
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 880
    .local v14, "oldNames":[Lcom/fasterxml/jackson/core/sym/Name;
    new-array v0, v10, [Lcom/fasterxml/jackson/core/sym/Name;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 881
    const/16 v16, 0x0

    .line 882
    .local v16, "symbolsSeen":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_3

    .line 883
    aget-object v15, v14, v5

    .line 884
    .local v15, "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v15, :cond_2

    .line 885
    add-int/lit8 v16, v16, 0x1

    .line 886
    invoke-virtual {v15}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v4

    .line 887
    .local v4, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    move/from16 v18, v0

    and-int v6, v4, v18

    .line 888
    .local v6, "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    move-object/from16 v18, v0

    aput-object v15, v18, v6

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    move-object/from16 v18, v0

    shl-int/lit8 v19, v4, 0x8

    aput v19, v18, v6

    .line 882
    .end local v4    # "hash":I
    .end local v6    # "ix":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 897
    .end local v15    # "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 898
    .local v12, "oldEnd":I
    if-nez v12, :cond_4

    .line 899
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    goto :goto_0

    .line 903
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 904
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 905
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 907
    const/4 v8, 0x0

    .line 909
    .local v8, "maxColl":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 910
    .local v11, "oldBuckets":[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 911
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v12, :cond_a

    .line 912
    aget-object v3, v11, v5

    .local v3, "curr":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_3
    if-eqz v3, :cond_9

    .line 913
    add-int/lit8 v16, v16, 0x1

    .line 914
    iget-object v15, v3, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 915
    .restart local v15    # "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v15}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v4

    .line 916
    .restart local v4    # "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    move/from16 v18, v0

    and-int v6, v4, v18

    .line 917
    .restart local v6    # "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    move-object/from16 v18, v0

    aget v17, v18, v6

    .line 918
    .local v17, "val":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    if-nez v18, :cond_5

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    move-object/from16 v18, v0

    shl-int/lit8 v19, v4, 0x8

    aput v19, v18, v6

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    move-object/from16 v18, v0

    aput-object v15, v18, v6

    .line 912
    :goto_4
    iget-object v3, v3, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_3

    .line 922
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 923
    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    .line 924
    .local v2, "bucket":I
    if-nez v2, :cond_8

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v18, v0

    const/16 v19, 0xfe

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    .line 926
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v2, v0, :cond_6

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 936
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    move-object/from16 v18, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, -0x100

    move/from16 v19, v0

    add-int/lit8 v20, v2, 0x1

    or-int v19, v19, v20

    aput v19, v18, v6

    .line 941
    :goto_6
    new-instance v9, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    move-object/from16 v0, v18

    invoke-direct {v9, v15, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 942
    .local v9, "newB":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v18, v0

    aput-object v9, v18, v2

    .line 943
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_4

    .line 933
    .end local v9    # "newB":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v2

    goto :goto_5

    .line 938
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 911
    .end local v2    # "bucket":I
    .end local v4    # "hash":I
    .end local v6    # "ix":I
    .end local v15    # "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    .end local v17    # "val":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 948
    .end local v3    # "curr":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_a
    move-object/from16 v0, p0

    iput v8, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 951
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Internal error: count after rehash "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; should be "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method private unshareCollision()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1006
    .local v0, "old":[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    if-nez v0, :cond_0

    .line 1007
    const/16 v1, 0x20

    new-array v1, v1, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1011
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 1012
    return-void

    .line 1009
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_0
.end method

.method private unshareMain()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 1000
    .local v0, "old":[I
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    .line 1001
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    .line 1002
    return-void
.end method

.method private unshareNames()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1016
    .local v0, "old":[Lcom/fasterxml/jackson/core/sym/Name;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1017
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 1018
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .prologue
    .line 606
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_0

    .line 607
    sget-object v2, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 609
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 610
    .local v0, "hash":I
    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 611
    .local v1, "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V

    .line 612
    return-object v1

    .line 609
    .end local v0    # "hash":I
    .end local v1    # "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0
.end method

.method public addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q"    # [I
    .param p3, "qlen"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 617
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_0

    .line 618
    sget-object v2, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 621
    :cond_0
    const/4 v2, 0x3

    if-ge p3, v2, :cond_2

    .line 622
    if-ne p3, v4, :cond_1

    aget v2, p2, v3

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 626
    .local v0, "hash":I
    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 627
    .local v1, "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V

    .line 628
    return-object v1

    .line 622
    .end local v0    # "hash":I
    .end local v1    # "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_1
    aget v2, p2, v3

    aget v3, p2, v4

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v0

    .restart local v0    # "hash":I
    goto :goto_0
.end method

.method public bucketCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    array-length v0, v0

    return v0
.end method

.method public calcHash(I)I
    .locals 2
    .param p1, "q1"    # I

    .prologue
    .line 653
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    xor-int v0, p1, v1

    .line 654
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 655
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 656
    return v0
.end method

.method public calcHash(II)I
    .locals 2
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .prologue
    .line 664
    move v0, p1

    .line 665
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0xf

    xor-int/2addr v0, v1

    .line 666
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 667
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 668
    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 669
    return v0
.end method

.method public calcHash([II)I
    .locals 4
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .prologue
    .line 675
    const/4 v2, 0x3

    if-ge p2, v2, :cond_0

    .line 676
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 684
    :cond_0
    const/4 v2, 0x0

    aget v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    xor-int v0, v2, v3

    .line 685
    .local v0, "hash":I
    ushr-int/lit8 v2, v0, 0x9

    add-int/2addr v0, v2

    .line 686
    mul-int/lit8 v0, v0, 0x21

    .line 687
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v0, v2

    .line 688
    const v2, 0x1003f

    mul-int/2addr v0, v2

    .line 689
    ushr-int/lit8 v2, v0, 0xf

    add-int/2addr v0, v2

    .line 690
    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/2addr v0, v2

    .line 691
    ushr-int/lit8 v2, v0, 0x11

    add-int/2addr v0, v2

    .line 693
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 694
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p1, v1

    xor-int v0, v2, v3

    .line 696
    ushr-int/lit8 v2, v0, 0x3

    add-int/2addr v0, v2

    .line 697
    shl-int/lit8 v2, v0, 0x7

    xor-int/2addr v0, v2

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    :cond_1
    ushr-int/lit8 v2, v0, 0xf

    add-int/2addr v0, v2

    .line 701
    shl-int/lit8 v2, v0, 0x9

    xor-int/2addr v0, v2

    .line 702
    return v0
.end method

.method public collisionCount()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    return v0
.end method

.method public findName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 7
    .param p1, "q1"    # I

    .prologue
    const/4 v5, 0x0

    .line 471
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 472
    .local v1, "hash":I
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int v2, v1, v6

    .line 473
    .local v2, "ix":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v4, v6, v2

    .line 478
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_3

    .line 480
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v3, v6, v2

    .line 481
    .local v3, "name":Lcom/fasterxml/jackson/core/sym/Name;
    if-nez v3, :cond_1

    move-object v3, v5

    .line 500
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_0
    :goto_0
    return-object v3

    .line 484
    .restart local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_1
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/core/sym/Name;->equals(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 491
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 492
    if-lez v4, :cond_4

    .line 493
    add-int/lit8 v4, v4, -0x1

    .line 494
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 495
    .local v0, "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_4

    .line 496
    const/4 v5, 0x0

    invoke-virtual {v0, v1, p1, v5}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 487
    .end local v0    # "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    if-nez v4, :cond_2

    move-object v3, v5

    .line 488
    goto :goto_0

    :cond_4
    move-object v3, v5

    .line 500
    goto :goto_0
.end method

.method public findName(II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 7
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .prologue
    const/4 v5, 0x0

    .line 520
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 521
    .local v1, "hash":I
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int v2, v1, v6

    .line 522
    .local v2, "ix":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v4, v6, v2

    .line 527
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_4

    .line 529
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v3, v6, v2

    .line 530
    .local v3, "name":Lcom/fasterxml/jackson/core/sym/Name;
    if-nez v3, :cond_2

    move-object v3, v5

    .line 549
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_0
    :goto_1
    return-object v3

    .line 520
    .end local v1    # "hash":I
    .end local v2    # "ix":I
    .end local v4    # "val":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v1

    goto :goto_0

    .line 533
    .restart local v1    # "hash":I
    .restart local v2    # "ix":I
    .restart local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    .restart local v4    # "val":I
    :cond_2
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 540
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_3
    and-int/lit16 v4, v4, 0xff

    .line 541
    if-lez v4, :cond_5

    .line 542
    add-int/lit8 v4, v4, -0x1

    .line 543
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 544
    .local v0, "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_5

    .line 545
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    goto :goto_1

    .line 536
    .end local v0    # "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_4
    if-nez v4, :cond_3

    move-object v3, v5

    .line 537
    goto :goto_1

    :cond_5
    move-object v3, v5

    .line 549
    goto :goto_1
.end method

.method public findName([II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 8
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 571
    const/4 v7, 0x3

    if-ge p2, v7, :cond_2

    .line 572
    aget v6, p1, v5

    const/4 v7, 0x2

    if-ge p2, v7, :cond_1

    :goto_0
    invoke-virtual {p0, v6, v5}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    .line 595
    :cond_0
    :goto_1
    return-object v3

    .line 572
    :cond_1
    const/4 v5, 0x1

    aget v5, p1, v5

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v1

    .line 576
    .local v1, "hash":I
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    and-int v2, v1, v5

    .line 577
    .local v2, "ix":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    aget v4, v5, v2

    .line 578
    .local v4, "val":I
    shr-int/lit8 v5, v4, 0x8

    xor-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_4

    .line 579
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v3, v5, v2

    .line 580
    .local v3, "name":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 587
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_3
    and-int/lit16 v4, v4, 0xff

    .line 588
    if-lez v4, :cond_5

    .line 589
    add-int/lit8 v4, v4, -0x1

    .line 590
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v5, v4

    .line 591
    .local v0, "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_5

    .line 592
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    goto :goto_1

    .line 584
    .end local v0    # "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_4
    if-nez v4, :cond_3

    move-object v3, v6

    .line 585
    goto :goto_1

    :cond_5
    move-object v3, v6

    .line 595
    goto :goto_1
.end method

.method public hashSeed()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    return v0
.end method

.method public makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .locals 3
    .param p1, "canonicalize"    # Z
    .param p2, "intern"    # Z

    .prologue
    .line 340
    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_seed:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0, p2, v2, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    return-object v1
.end method

.method public maxCollisionLength()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    return v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 353
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    .line 358
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashShared:Z

    .line 359
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_namesShared:Z

    .line 360
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 362
    :cond_0
    return-void
.end method

.method protected reportTooManyCollisions(I)V
    .locals 3
    .param p1, "maxLen"    # I

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Longest collision chain in symbol table (of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

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
    .line 400
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 404
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    goto :goto_0
.end method
