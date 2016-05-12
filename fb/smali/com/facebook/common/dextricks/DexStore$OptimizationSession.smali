.class final Lcom/facebook/common/dextricks/DexStore$OptimizationSession;
.super Ljava/lang/Object;
.source "video.min_buffer_ms"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final mOptLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

.field private final mRegenStampFile:Ljava/io/FileInputStream;

.field final synthetic this$0:Lcom/facebook/common/dextricks/DexStore;


# direct methods
.method public constructor <init>(Lcom/facebook/common/dextricks/DexStore;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1540
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v4, "regen_stamp"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v4, "odex_lock"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1548
    :try_start_2
    iput-object v3, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mRegenStampFile:Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1551
    :try_start_3
    iput-object v1, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mOptLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1555
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1556
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1557
    return-void

    .line 1555
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1556
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 1555
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final checkShouldStop()V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mRegenStampFile:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->getOpenFileLinkCount(I)I

    move-result v0

    .line 1618
    if-nez v0, :cond_0

    .line 1619
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException;

    const-string v1, "obsolete optimization: regeneration pending"

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1622
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mOptLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1563
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->mRegenStampFile:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1564
    return-void
.end method

.method final waitForAndManageProcess(Lcom/facebook/forker/Process;ILcom/facebook/common/dextricks/Prio;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1582
    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/facebook/forker/Process;->waitFor(II)I

    move-result v0

    .line 1583
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1587
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->checkShouldStop()V

    .line 1589
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/facebook/forker/Process;->kill(I)V

    .line 1591
    const/4 v0, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/facebook/forker/Process;->waitFor(II)I

    move-result v0

    .line 1592
    const v1, -0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1597
    iget v0, p3, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    invoke-static {p2, v0}, Lcom/facebook/dalvik/DalvikInternals;->fdatasync(II)V

    .line 1599
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/facebook/forker/Process;->kill(I)V

    .line 1601
    const/4 v0, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/facebook/forker/Process;->waitFor(II)I

    move-result v0

    .line 1602
    const v1, -0x7ffffffe

    if-eq v0, v1, :cond_0

    .line 1608
    :cond_1
    return v0
.end method
