.class final Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;
.super Lcom/facebook/common/dextricks/DexOptRunner;
.source "video-performance-tracking.data"


# instance fields
.field private final mBuffer:[B

.field private final mOptimizationSession:Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

.field private final prio:Lcom/facebook/common/dextricks/Prio;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Ljava/io/File;Lcom/facebook/common/dextricks/Prio;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0, p2}, Lcom/facebook/common/dextricks/DexOptRunner;-><init>(Ljava/io/File;)V

    .line 234
    const/high16 v0, 0x40000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->mBuffer:[B

    .line 241
    iput-object p3, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->prio:Lcom/facebook/common/dextricks/Prio;

    .line 242
    iput-object p1, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->mOptimizationSession:Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

    .line 243
    return-void
.end method


# virtual methods
.method protected final copyDexToOdex(Ljava/io/InputStream;ILjava/io/RandomAccessFile;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 252
    .line 254
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v2

    move v0, v1

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->mBuffer:[B

    iget-object v4, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->mBuffer:[B

    array-length v4, v4

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->mBuffer:[B

    invoke-virtual {p3, v4, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 257
    add-int/2addr v0, v3

    .line 258
    iget-object v3, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->mOptimizationSession:Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->checkShouldStop()V

    .line 259
    iget-object v3, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->prio:Lcom/facebook/common/dextricks/Prio;

    iget v3, v3, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    invoke-static {v2, v3}, Lcom/facebook/dalvik/DalvikInternals;->fdatasync(II)V

    goto :goto_0

    .line 262
    :cond_0
    return v0
.end method

.method protected final startSubprocess(Lcom/facebook/forker/ProcessBuilder;)Lcom/facebook/forker/Process;
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->prio:Lcom/facebook/common/dextricks/Prio;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/Prio;->with()Lcom/facebook/common/dextricks/Prio$With;

    move-result-object v2

    const/4 v1, 0x0

    .line 268
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/forker/ProcessBuilder;->create()Lcom/facebook/forker/Process;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 269
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/common/dextricks/Prio$With;->close()V

    :cond_0
    return-object v0

    .line 267
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/Prio$With;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/Prio$With;->close()V

    goto :goto_0
.end method

.method protected final waitForDexOpt(Lcom/facebook/forker/Process;I)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->mOptimizationSession:Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;->prio:Lcom/facebook/common/dextricks/Prio;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->waitForAndManageProcess(Lcom/facebook/forker/Process;ILcom/facebook/common/dextricks/Prio;)I

    .line 276
    return-void
.end method
