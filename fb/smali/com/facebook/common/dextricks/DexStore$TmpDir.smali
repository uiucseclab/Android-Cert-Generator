.class final Lcom/facebook/common/dextricks/DexStore$TmpDir;
.super Ljava/lang/Object;
.source "video.min_buffer_ms"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public directory:Ljava/io/File;

.field private mTmpDirLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

.field final synthetic this$0:Lcom/facebook/common/dextricks/DexStore;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->this$0:Lcom/facebook/common/dextricks/DexStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    iput-object p2, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->mTmpDirLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    .line 1273
    iput-object p3, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    .line 1274
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1278
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->mTmpDirLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->this$0:Lcom/facebook/common/dextricks/DexStore;

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    .line 1280
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->mTmpDirLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->getReentrantLockFile()Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/common/dextricks/ReentrantLockFile;->lockFileName:Ljava/io/File;

    .line 1281
    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->mTmpDirLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    .line 1282
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->mTmpDirLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    .line 1283
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 1284
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 1285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1286
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    .line 1288
    :cond_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
