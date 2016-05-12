.class final Lcom/facebook/common/dextricks/OdexSchemeArtXdex;
.super Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;
.source "pow"


# instance fields
.field private final mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

.field private final mIsComplete:Z


# direct methods
.method constructor <init>([Lcom/facebook/common/dextricks/DexManifest$Dex;J)V
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x5

    invoke-static {p1, p2, p3}, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->makeExpectedFileList([Lcom/facebook/common/dextricks/DexManifest$Dex;J)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;-><init>(I[Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    .line 42
    const-wide/16 v0, 0x10

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->mIsComplete:Z

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeExpectedFileList([Lcom/facebook/common/dextricks/DexManifest$Dex;J)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-static {p0}, Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;->makeExpectedFileList([Lcom/facebook/common/dextricks/DexManifest$Dex;)[Ljava/lang/String;

    move-result-object v1

    .line 52
    const-wide/16 v2, 0x10

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 53
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    array-length v2, v1

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length v1, v1

    const-string v2, "everything.oat"

    aput-object v2, v0, v1

    .line 58
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method final configureClassLoader(Ljava/io/File;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->mIsComplete:Z

    if-nez v0, :cond_1

    .line 65
    invoke-super {p0, p1, p2}, Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;->configureClassLoader(Ljava/io/File;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 78
    :cond_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->expectedFiles:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v2, "expect oat"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string v0, "loading pre-built omni-oat"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v2, "everything.oat"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    :goto_1
    iget-object v2, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->expectedFiles:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 76
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->expectedFiles:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addDex(Ljava/io/File;Ljava/io/File;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method final needOptimization(J)Z
    .locals 5

    .prologue
    .line 47
    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final optimize(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Lcom/facebook/common/dextricks/Prio;Lcom/facebook/common/dextricks/DexStore$ProgressListener;)V
    .locals 24
    .param p4    # Lcom/facebook/common/dextricks/DexStore$ProgressListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    if-eqz p4, :cond_0

    .line 88
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v6}, Lcom/facebook/common/dextricks/DexStore$ProgressListener;->onProgress(IIZ)V

    .line 90
    :cond_0
    const-string v4, "dexopt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/facebook/common/dextricks/DexStore;->makeTemporaryDirectory(Ljava/lang/String;)Lcom/facebook/common/dextricks/DexStore$TmpDir;

    move-result-object v12

    const/4 v9, 0x0

    .line 91
    :try_start_0
    const-string v4, "[opt] opened tmpDir %s; starting job"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v13, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;-><init>(Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const/4 v8, 0x0

    .line 93
    :try_start_1
    const-string v4, "[opt] opened job"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-wide v4, v13, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->initialStatus:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 96
    const-string v4, "[opt] nothing to do: ART xdex already complete"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 214
    :try_start_2
    invoke-virtual {v13}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 215
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    :try_start_3
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v5, "everything.oat"

    invoke-direct {v14, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    new-instance v15, Ljava/io/File;

    iget-object v4, v12, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    const-string v5, "everything.oat"

    invoke-direct {v15, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    const/4 v4, 0x1

    move v11, v4

    .line 108
    :goto_1
    const-string v4, "BOOTCLASSPATH"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/common/dextricks/DexStore;->getDependencyOdexFiles()[Ljava/io/File;

    move-result-object v6

    .line 110
    const/4 v4, 0x0

    :goto_2
    array-length v7, v6

    if-ge v4, v7, :cond_4

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 106
    :cond_3
    const/4 v4, 0x0

    move v11, v4

    goto :goto_1

    .line 114
    :cond_4
    invoke-static {v15}, Lcom/facebook/common/dextricks/Fs;->openDataSyncedFile(Ljava/io/File;)Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    move-result-object v16

    const/4 v7, 0x0

    .line 115
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v17

    .line 116
    new-instance v4, Lcom/facebook/forker/ProcessBuilder;

    const-string v6, "/system/bin/dex2oat"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "--oat-fd="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "--oat-location="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    const/16 v18, 0x2

    const-string v19, "--dump-timing"

    aput-object v19, v10, v18

    invoke-direct {v4, v6, v10}, Lcom/facebook/forker/ProcessBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lcom/facebook/forker/ProcessBuilder;->setFdCloseOnExec(IZ)Lcom/facebook/forker/ProcessBuilder;

    move-result-object v4

    const-string v6, "BOOTCLASSPATH"

    invoke-virtual {v4, v6, v5}, Lcom/facebook/forker/ProcessBuilder;->setenv(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    move-result-object v18

    .line 126
    const-string v4, "dalvik.vm.dex2oat-Xms"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 128
    const-string v5, "--runtime-arg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-Xms"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 132
    :cond_5
    const-string v4, "dalvik.vm.dex2oat-Xmx"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 134
    const-string v5, "--runtime-arg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-Xmx"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 138
    :cond_6
    const-string v4, "dalvik.vm.dex2oat-filter"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--compiler-filter="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 143
    :cond_7
    const-string v4, "dalvik.vm.dex2oat-flags"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 147
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 148
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 149
    :goto_3
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 150
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_3

    .line 114
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    :catchall_0
    move-exception v5

    move-object/from16 v23, v5

    move-object v5, v4

    move-object/from16 v4, v23

    :goto_4
    if-eqz v16, :cond_8

    if-eqz v5, :cond_18

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :cond_8
    :goto_5
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 92
    :catch_1
    move-exception v4

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 214
    :catchall_1
    move-exception v5

    move-object/from16 v23, v5

    move-object v5, v4

    move-object/from16 v4, v23

    :goto_6
    if-eqz v5, :cond_19

    :try_start_9
    invoke-virtual {v13}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    :goto_7
    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 90
    :catch_2
    move-exception v4

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 215
    :catchall_2
    move-exception v5

    move-object/from16 v23, v5

    move-object v5, v4

    move-object/from16 v4, v23

    :goto_8
    if-eqz v12, :cond_9

    if-eqz v5, :cond_1a

    :try_start_c
    invoke-virtual {v12}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    :cond_9
    :goto_9
    throw v4

    .line 155
    :cond_a
    :try_start_d
    const-string v4, "-j1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->makeExpectedFileList([Lcom/facebook/common/dextricks/DexManifest$Dex;J)[Ljava/lang/String;

    move-result-object v19

    .line 159
    const/4 v4, 0x0

    .line 160
    if-nez v11, :cond_b

    .line 161
    const v4, 0x8000

    new-array v4, v4, [B

    .line 164
    :cond_b
    const/4 v5, 0x0

    move v10, v5

    :goto_a
    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v10, v5, :cond_f

    .line 165
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aget-object v20, v19, v10

    move-object/from16 v0, v20

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    new-instance v6, Ljava/io/File;

    iget-object v0, v12, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v20, v0

    aget-object v21, v19, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "--dex-file="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 168
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/4 v6, 0x0

    .line 169
    if-nez v11, :cond_c

    .line 170
    :try_start_e
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const/4 v5, 0x0

    .line 171
    const/high16 v22, 0x10000

    :try_start_f
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v4}, Lcom/facebook/common/dextricks/Fs;->copyBytes(Ljava/io/OutputStream;Ljava/io/InputStream;I[B)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 172
    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 174
    :cond_c
    :try_start_11
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 164
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto :goto_a

    .line 170
    :catch_3
    move-exception v5

    :try_start_12
    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 172
    :catchall_3
    move-exception v4

    if-eqz v5, :cond_d

    :try_start_13
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :goto_b
    :try_start_14
    throw v4
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 168
    :catch_4
    move-exception v4

    :try_start_15
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 174
    :catchall_4
    move-exception v5

    move-object/from16 v23, v5

    move-object v5, v4

    move-object/from16 v4, v23

    :goto_c
    if-eqz v5, :cond_e

    :try_start_16
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :goto_d
    :try_start_17
    throw v4
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 213
    :catchall_5
    move-exception v4

    move-object v5, v7

    goto/16 :goto_4

    .line 172
    :catch_5
    move-exception v10

    :try_start_18
    invoke-static {v5, v10}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 174
    :catchall_6
    move-exception v4

    move-object v5, v6

    goto :goto_c

    .line 172
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_b

    .line 174
    :catch_6
    move-exception v6

    :try_start_19
    invoke-static {v5, v6}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    goto :goto_d

    .line 179
    :cond_f
    invoke-virtual {v13}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->startOptimizing()V

    .line 181
    const-string v4, "starting dex2oat to build %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v10, "everything.oat"

    aput-object v10, v5, v6

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/common/dextricks/Prio;->with()Lcom/facebook/common/dextricks/Prio$With;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-result-object v6

    const/4 v5, 0x0

    .line 184
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/forker/ProcessBuilder;->create()Lcom/facebook/forker/Process;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    move-result-object v4

    .line 185
    if-eqz v6, :cond_10

    :try_start_1b
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/Prio$With;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 189
    :cond_10
    :try_start_1c
    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->waitForAndManageProcess(Lcom/facebook/forker/Process;ILcom/facebook/common/dextricks/Prio;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    move-result v5

    .line 191
    :try_start_1d
    invoke-virtual {v4}, Lcom/facebook/forker/Process;->destroy()V

    .line 194
    const-string v4, "dex2oat exited with status %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-static {v4, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    if-eqz v5, :cond_13

    .line 196
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "dex2oat failed: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/facebook/forker/Process;->describeStatus(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 183
    :catch_7
    move-exception v5

    :try_start_1e
    throw v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 185
    :catchall_7
    move-exception v4

    if-eqz v6, :cond_11

    if-eqz v5, :cond_12

    :try_start_1f
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/Prio$With;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :cond_11
    :goto_e
    :try_start_20
    throw v4

    :catch_8
    move-exception v6

    invoke-static {v5, v6}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_12
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/Prio$With;->close()V

    goto :goto_e

    .line 191
    :catchall_8
    move-exception v5

    invoke-virtual {v4}, Lcom/facebook/forker/Process;->destroy()V

    throw v5

    .line 199
    :cond_13
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-nez v4, :cond_14

    .line 200
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "dex2oat produced impossibly short oat file"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    :cond_14
    invoke-virtual {v13}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->startCommitting()J

    move-result-wide v10

    .line 204
    const/4 v4, 0x0

    :goto_f
    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v4, v5, :cond_15

    .line 205
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aget-object v17, v19, v4

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    new-instance v6, Ljava/io/File;

    iget-object v0, v12, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v17, v0

    aget-object v18, v19, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-static {v6, v5}, Lcom/facebook/common/dextricks/Fs;->renameOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 209
    :cond_15
    invoke-static {v15, v14}, Lcom/facebook/common/dextricks/Fs;->renameOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 210
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v5, v5

    shl-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    .line 211
    const/4 v6, 0x4

    shl-long/2addr v4, v6

    or-long/2addr v4, v10

    invoke-virtual {v13, v4, v5}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->finishCommit(J)V

    .line 212
    const-string v4, "ART xdex optimization complete"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 213
    if-eqz v16, :cond_16

    :try_start_21
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 214
    :cond_16
    :try_start_22
    invoke-virtual {v13}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 215
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V

    .line 216
    :cond_17
    if-eqz p4, :cond_1

    .line 217
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v6}, Lcom/facebook/common/dextricks/DexStore$ProgressListener;->onProgress(IIZ)V

    goto/16 :goto_0

    .line 213
    :catch_9
    move-exception v6

    :try_start_23
    invoke-static {v5, v6}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 214
    :catchall_9
    move-exception v4

    move-object v5, v8

    goto/16 :goto_6

    .line 213
    :cond_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto/16 :goto_5

    .line 214
    :catch_a
    move-exception v6

    :try_start_24
    invoke-static {v5, v6}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 215
    :catchall_a
    move-exception v4

    move-object v5, v9

    goto/16 :goto_8

    .line 214
    :cond_19
    invoke-virtual {v13}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    goto/16 :goto_7

    .line 215
    :catch_b
    move-exception v6

    invoke-static {v5, v6}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {v12}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V

    goto/16 :goto_9
.end method
