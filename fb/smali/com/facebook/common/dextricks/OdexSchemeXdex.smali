.class final Lcom/facebook/common/dextricks/OdexSchemeXdex;
.super Lcom/facebook/common/dextricks/OdexSchemeTurbo;
.source "video-performance-tracking.data"


# instance fields
.field private final mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;


# direct methods
.method constructor <init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/dextricks/OdexSchemeTurbo;-><init>(I[Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    .line 43
    iput-object p1, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    .line 44
    return-void
.end method

.method private findDexToOptimize(Lcom/facebook/common/dextricks/DexStore;J)Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 87
    const-wide/16 v2, 0x10

    shl-long/2addr v2, v0

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 91
    iget-object v2, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    aget-object v2, v2, v3

    .line 92
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    invoke-static {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v2

    .line 95
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->tryAcquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 96
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    .line 98
    :cond_0
    if-eqz v3, :cond_4

    .line 103
    :try_start_1
    new-instance v1, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3}, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;-><init>(ILcom/facebook/common/dextricks/ReentrantLockFile$Lock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 113
    :goto_1
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto :goto_2

    .line 107
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_3

    .line 108
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_3
    throw v0

    .line 86
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 113
    goto :goto_1
.end method

.method private makeFakeCacheSymlink(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected file to exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected file to exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "classes.dex"

    .line 127
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 131
    const-string v1, "[opt] symlink %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {p3, v0}, Lcom/facebook/common/dextricks/Fs;->symlink(Ljava/io/File;Ljava/io/File;)V

    .line 133
    return-void

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openDexInsideOdex(Ljava/io/FileInputStream;)Lcom/facebook/common/dextricks/PartialInputStream;
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 207
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 208
    const-wide/16 v4, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 209
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid odex file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 216
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 218
    const-string v2, "dexOffset:%s dexLength:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-gtz v4, :cond_1

    move v2, v0

    :goto_0
    if-gtz v5, :cond_2

    :goto_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid odex file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 219
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 223
    :cond_3
    int-to-long v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 224
    new-instance v0, Lcom/facebook/common/dextricks/PartialInputStream;

    invoke-direct {v0, p1, v5}, Lcom/facebook/common/dextricks/PartialInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private optimize1(Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;Lcom/facebook/common/dextricks/DexOptRunner;Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;Lcom/facebook/common/dextricks/Prio;[Ljava/io/File;[B)V
    .locals 16

    .prologue
    .line 288
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->startOptimizing()V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    move-object/from16 v0, p5

    iget v3, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aget-object v5, v2, v3

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    move-object/from16 v0, p5

    iget v3, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    .line 291
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v13, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    const-string v2, "[opt] started optimizing %s -> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    aput-object v13, v4, v3

    invoke-static {v2, v4}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v6, v2, -0x1

    .line 298
    new-array v8, v6, [Ljava/lang/String;

    .line 299
    const/4 v3, 0x0

    .line 300
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p7

    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 301
    add-int/lit8 v4, v3, 0x1

    aget-object v7, p7, v2

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v3

    .line 300
    add-int/lit8 v2, v2, 0x2

    move v3, v4

    goto :goto_0

    .line 304
    :cond_0
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 305
    div-int/lit8 v4, v2, 0x2

    move-object/from16 v0, p5

    iget v7, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    if-eq v4, v7, :cond_1

    .line 306
    add-int/lit8 v4, v3, 0x1

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v3

    move v3, v4

    .line 304
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 311
    :cond_2
    if-ne v3, v6, :cond_5

    const/4 v2, 0x1

    :goto_2
    const-string v3, "accounted for all dex files"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v11, 0x0

    .line 315
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->openDexInsideOdex(Ljava/io/FileInputStream;)Lcom/facebook/common/dextricks/PartialInputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v3

    const/4 v10, 0x0

    .line 316
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->available()I

    move-result v4

    .line 317
    const/4 v2, 0x1

    if-gt v4, v2, :cond_3

    .line 318
    const/4 v4, -0x1

    .line 320
    :cond_3
    const-string v2, "[opt] size hint for %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v6, v12, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v9, 0x0

    .line 323
    :try_start_2
    const-string v7, "xdex"

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/common/dextricks/DexOptRunner;->run(Ljava/io/InputStream;ILjava/lang/String;Ljava/io/RandomAccessFile;Ljava/lang/String;[Ljava/lang/String;)V

    .line 330
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v2

    .line 331
    move-object/from16 v0, p8

    invoke-static {v2, v0}, Lcom/facebook/dalvik/DalvikInternals;->replaceOdexDepBlock(I[B)V

    .line 332
    move-object/from16 v0, p6

    iget v4, v0, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    invoke-static {v2, v4}, Lcom/facebook/dalvik/DalvikInternals;->fsync(II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 333
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 334
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 335
    :cond_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 337
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->startCommitting()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    move-object/from16 v0, p5

    iget v6, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 338
    const-string v4, "[opt] started commit"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {v12, v13}, Lcom/facebook/common/dextricks/Fs;->renameOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 340
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->finishCommit(J)V

    .line 341
    const-string v2, "[opt] finished commit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    return-void

    .line 311
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 322
    :catch_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    :catchall_0
    move-exception v4

    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    :goto_3
    if-eqz v4, :cond_7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_4
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 315
    :catch_1
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 334
    :catchall_1
    move-exception v4

    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    :goto_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_6
    :goto_6
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 314
    :catch_2
    move-exception v2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 335
    :catchall_2
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_7
    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    :goto_8
    throw v2

    .line 333
    :catch_3
    move-exception v5

    :try_start_d
    invoke-static {v4, v5}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 334
    :catchall_3
    move-exception v2

    move-object v4, v10

    goto :goto_5

    .line 333
    :cond_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_4

    .line 334
    :catch_4
    move-exception v3

    :try_start_e
    invoke-static {v4, v3}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 335
    :catchall_4
    move-exception v2

    move-object v3, v11

    goto :goto_7

    .line 334
    :cond_8
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_6

    .line 335
    :catch_5
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    .line 333
    :catchall_5
    move-exception v2

    move-object v4, v9

    goto :goto_3
.end method

.method private prepareTmpDirForXdex([Ljava/io/File;Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-static {}, Lcom/facebook/common/dextricks/Fs;->findSystemDalvikCache()Ljava/io/File;

    move-result-object v3

    .line 145
    new-instance v4, Ljava/io/File;

    const-string v0, "dalvik-cache"

    invoke-direct {v4, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V

    .line 149
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 150
    const-string v1, "BOOTCLASSPATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "classes.dex"

    .line 156
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-static {v4, v6, v1}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 161
    invoke-static {v3, v6, v1}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 165
    const-string v6, "[opt] symlink %s -> %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {v1, v0}, Lcom/facebook/common/dextricks/Fs;->symlink(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 155
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 175
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 176
    add-int/lit8 v1, v0, 0x0

    aget-object v1, p1, v1

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-direct {p0, v4, v1, v3}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->makeFakeCacheSymlink(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 175
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 180
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x0

    aget-object v3, v3, v5

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    new-instance v1, Ljava/io/File;

    iget-object v3, p2, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, v4, v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->makeFakeCacheSymlink(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 180
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 185
    :cond_4
    return-void
.end method


# virtual methods
.method final needOptimization(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    iget-object v2, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v2, v2

    shl-int v2, v0, v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    .line 49
    const/4 v4, 0x4

    shr-long v4, p1, v4

    .line 51
    const-string v6, "expectedDexBits:0x%08x actualDexBits:0x%08x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final optimize(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Lcom/facebook/common/dextricks/Prio;Lcom/facebook/common/dextricks/DexStore$ProgressListener;)V
    .locals 19
    .param p4    # Lcom/facebook/common/dextricks/DexStore$ProgressListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/common/dextricks/DexStore;->getDependencyOdexFiles()[Ljava/io/File;

    move-result-object v9

    .line 353
    const/4 v3, 0x1

    aget-object v3, v9, v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/dalvik/DalvikInternals;->readOdexDepBlock(Ljava/lang/String;)[B

    move-result-object v10

    .line 355
    const-string v3, "dexopt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/facebook/common/dextricks/DexStore;->makeTemporaryDirectory(Ljava/lang/String;)Lcom/facebook/common/dextricks/DexStore$TmpDir;

    move-result-object v14

    const/4 v12, 0x0

    .line 356
    :try_start_0
    const-string v3, "[opt] opened tmpDir %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/common/dextricks/Prio;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    new-instance v6, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboDexOptRunner;

    iget-object v3, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    invoke-direct {v6, v3}, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboDexOptRunner;-><init>(Ljava/io/File;)V

    .line 365
    :goto_0
    const-string v3, "[opt] starting optimization pass; creating job"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    new-instance v5, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;-><init>(Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v11, 0x0

    .line 367
    :try_start_1
    const-string v3, "[opt] opened job"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    if-eqz p4, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v3, v3

    iget-wide v0, v5, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->initialStatus:J

    move-wide/from16 v16, v0

    const/4 v4, 0x4

    shr-long v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v7}, Lcom/facebook/common/dextricks/DexStore$ProgressListener;->onProgress(IIZ)V

    .line 376
    :cond_0
    if-nez v2, :cond_8

    .line 377
    iget-object v2, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->prepareTmpDirForXdex([Ljava/io/File;Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;)V

    .line 378
    const/4 v2, 0x1

    move v13, v2

    .line 381
    :goto_1
    iget-wide v2, v5, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->initialStatus:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->findDexToOptimize(Lcom/facebook/common/dextricks/DexStore;J)Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;

    move-result-object v7

    .line 382
    const-string v2, "[opt] dto %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 384
    if-eqz v7, :cond_1

    .line 386
    :try_start_2
    iget-object v4, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->optimize1(Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;Lcom/facebook/common/dextricks/DexOptRunner;Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;Lcom/facebook/common/dextricks/Prio;[Ljava/io/File;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 396
    :try_start_3
    invoke-virtual {v7}, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 399
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V

    .line 400
    if-nez v7, :cond_7

    .line 401
    const-string v2, "[opt] optimization complete"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 402
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V

    .line 403
    :cond_2
    return-void

    .line 361
    :cond_3
    :try_start_5
    new-instance v6, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;

    iget-object v3, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v3, v1}, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;-><init>(Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Ljava/io/File;Lcom/facebook/common/dextricks/Prio;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 402
    :catchall_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_2
    if-eqz v14, :cond_4

    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_3
    throw v2

    .line 396
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v7}, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->close()V

    throw v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 366
    :catch_1
    move-exception v2

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 399
    :catchall_2
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_4
    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_5
    :try_start_b
    throw v2

    .line 402
    :catchall_3
    move-exception v2

    move-object v3, v12

    goto :goto_2

    .line 399
    :catch_2
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    .line 402
    :catch_3
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V

    goto :goto_3

    .line 399
    :catchall_4
    move-exception v2

    move-object v3, v11

    goto :goto_4

    :cond_7
    move v2, v13

    goto/16 :goto_0

    :cond_8
    move v13, v2

    goto/16 :goto_1
.end method
