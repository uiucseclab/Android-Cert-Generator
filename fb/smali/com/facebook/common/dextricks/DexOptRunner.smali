.class public Lcom/facebook/common/dextricks/DexOptRunner;
.super Ljava/lang/Object;
.source "timescale"


# instance fields
.field private final mTemplate:Lcom/facebook/forker/ProcessBuilder;

.field private final mTmpDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexOptRunner;->mTmpDir:Ljava/io/File;

    .line 35
    const-string v0, "fbdexopt"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 36
    const-string v0, "LD_LIBRARY_PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    new-instance v2, Lcom/facebook/forker/ProcessBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/facebook/forker/ProcessBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "LD_LIBRARY_PATH"

    invoke-virtual {v2, v1, v0}, Lcom/facebook/forker/ProcessBuilder;->setenv(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexOptRunner;->mTemplate:Lcom/facebook/forker/ProcessBuilder;

    .line 44
    return-void

    .line 40
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected attemptAllocate(IJ)Z
    .locals 2

    .prologue
    .line 73
    const/4 v0, -0x1

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/dalvik/DalvikInternals;->attemptAllocate(IJI)Z

    move-result v0

    return v0
.end method

.method protected copyDexToOdex(Ljava/io/InputStream;ILjava/io/RandomAccessFile;)I
    .locals 2

    .prologue
    .line 107
    const v0, 0x7fffffff

    const v1, 0x8000

    new-array v1, v1, [B

    invoke-static {p3, p1, v0, v1}, Lcom/facebook/common/dextricks/Fs;->copyBytes(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I

    move-result v0

    return v0
.end method

.method final run(Ljava/io/InputStream;ILjava/lang/String;Ljava/io/RandomAccessFile;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p6    # [Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string v3, "odex fpos must be 0"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string v3, "odex must be empty"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v4

    .line 144
    invoke-static {v4}, Lcom/facebook/dalvik/DalvikInternals;->dexOptCreateEmptyHeader(I)V

    .line 145
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    long-to-int v5, v2

    .line 148
    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    .line 149
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v6, p2

    add-long/2addr v2, v6

    invoke-virtual {p0, v4, v2, v3}, Lcom/facebook/common/dextricks/DexOptRunner;->attemptAllocate(IJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const-string v2, "allocated more %s bytes for dex content"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_0
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/common/dextricks/DexOptRunner;->copyDexToOdex(Ljava/io/InputStream;ILjava/io/RandomAccessFile;)I

    move-result v6

    .line 161
    const v2, 0x7fffffff

    if-ne v6, v2, :cond_4

    .line 162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refusing to deal with impossibly huge dex file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 140
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 155
    :cond_3
    const-string v2, "unable to preallocate on this system"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 166
    :cond_4
    const-string v2, "wrote %s bytes to dex %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexOptRunner;->mTmpDir:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->openUnlinkedTemporaryFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v7

    const/4 v3, 0x0

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexOptRunner;->mTemplate:Lcom/facebook/forker/ProcessBuilder;

    invoke-virtual {v2}, Lcom/facebook/forker/ProcessBuilder;->clone()Lcom/facebook/forker/ProcessBuilder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/facebook/forker/ProcessBuilder;->setStream(II)Lcom/facebook/forker/ProcessBuilder;

    move-result-object v2

    const/4 v8, 0x2

    const/4 v9, -0x5

    invoke-virtual {v2, v8, v9}, Lcom/facebook/forker/ProcessBuilder;->setStream(II)Lcom/facebook/forker/ProcessBuilder;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Lcom/facebook/forker/ProcessBuilder;->setFdCloseOnExec(IZ)Lcom/facebook/forker/ProcessBuilder;

    move-result-object v8

    const/16 v2, 0x9

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x1

    aput-object p3, v9, v2

    const/4 v2, 0x2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x3

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x4

    const-string v10, "BOOTCLASSPATH"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v10, 0x5

    if-nez p6, :cond_8

    const-string v2, ""

    :goto_3
    aput-object v2, v9, v10

    const/4 v2, 0x6

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    const/4 v2, 0x7

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    const/16 v2, 0x8

    aput-object p5, v9, v2

    invoke-virtual {v8, v9}, Lcom/facebook/forker/ProcessBuilder;->addArguments([Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    move-result-object v2

    .line 187
    invoke-virtual {p0, v2}, Lcom/facebook/common/dextricks/DexOptRunner;->startSubprocess(Lcom/facebook/forker/ProcessBuilder;)Lcom/facebook/forker/Process;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v5

    .line 190
    :try_start_1
    invoke-virtual {p0, v5, v4}, Lcom/facebook/common/dextricks/DexOptRunner;->waitForDexOpt(Lcom/facebook/forker/Process;I)V

    .line 191
    invoke-virtual {v5}, Lcom/facebook/forker/Process;->exitValueEx()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 193
    :try_start_2
    invoke-virtual {v5}, Lcom/facebook/forker/Process;->destroy()V

    .line 197
    if-nez v2, :cond_9

    .line 198
    const/4 v2, 0x0

    move-object v5, v2

    .line 204
    :goto_4
    if-eqz v5, :cond_a

    .line 205
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 206
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v2, v8

    new-array v2, v2, [B

    .line 207
    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 208
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v4, "WARNING: linker: "

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 217
    const/4 v6, -0x1

    if-ne v4, v6, :cond_5

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 220
    :cond_5
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :catchall_0
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_5
    if-eqz v7, :cond_7

    if-eqz v3, :cond_c

    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    :goto_6
    throw v2

    .line 172
    :cond_8
    :try_start_5
    const-string v2, ":"

    move-object/from16 v0, p6

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 193
    :catchall_1
    move-exception v2

    invoke-virtual {v5}, Lcom/facebook/forker/Process;->destroy()V

    throw v2

    .line 224
    :catchall_2
    move-exception v2

    goto :goto_5

    .line 201
    :cond_9
    invoke-static {v2}, Lcom/facebook/forker/Process;->describeStatus(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_4

    .line 224
    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 225
    :cond_b
    return-void

    .line 224
    :catch_1
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_6
.end method

.method protected startSubprocess(Lcom/facebook/forker/ProcessBuilder;)Lcom/facebook/forker/Process;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/facebook/forker/ProcessBuilder;->create()Lcom/facebook/forker/Process;

    move-result-object v0

    return-object v0
.end method

.method protected waitForDexOpt(Lcom/facebook/forker/Process;I)V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/facebook/forker/Process;->waitForUninterruptibly()I

    .line 60
    return-void
.end method
