.class public final Lcom/facebook/internal/FileLruCache;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FileLruCache$StreamCloseCallback;,
        Lcom/facebook/internal/FileLruCache$ModifiedFile;,
        Lcom/facebook/internal/FileLruCache$Limits;,
        Lcom/facebook/internal/FileLruCache$CopyingInputStream;,
        Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;,
        Lcom/facebook/internal/FileLruCache$StreamHeader;,
        Lcom/facebook/internal/FileLruCache$BufferFile;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String;

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private isTrimInProgress:Z

.field private isTrimPending:Z

.field private lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final limits:Lcom/facebook/internal/FileLruCache$Limits;

.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "limits"    # Lcom/facebook/internal/FileLruCache$Limits;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    .line 86
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/internal/FileLruCache;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/FileLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/FileLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/FileLruCache;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->trim()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private postTrim()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 270
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/internal/FileLruCache$3;

    invoke-direct {v2, p0}, Lcom/facebook/internal/FileLruCache$3;-><init>(Lcom/facebook/internal/FileLruCache;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/io/File;

    .prologue
    .line 240
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v0, "target":Ljava/io/File;
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->postTrim()V

    .line 252
    return-void
.end method

.method private trim()V
    .locals 15

    .prologue
    .line 281
    iget-object v9, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 282
    const/4 v8, 0x0

    :try_start_0
    iput-boolean v8, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 283
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 284
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    sget-object v8, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v9, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string v10, "trim started"

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v4, Ljava/util/PriorityQueue;

    invoke-direct {v4}, Ljava/util/PriorityQueue;-><init>()V

    .line 288
    .local v4, "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    const-wide/16 v6, 0x0

    .line 289
    .local v6, "size":J
    const-wide/16 v0, 0x0

    .line 290
    .local v0, "count":J
    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 291
    .local v3, "filesToTrim":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 292
    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v2, v3, v8

    .line 293
    .local v2, "file":Ljava/io/File;
    new-instance v5, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-direct {v5, v2}, Lcom/facebook/internal/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    .line 294
    .local v5, "modified":Lcom/facebook/internal/FileLruCache$ModifiedFile;
    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v10, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v11, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  trim considering time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 296
    invoke-virtual {v5}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 295
    invoke-static {v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v10

    add-long/2addr v6, v10

    .line 299
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 292
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "count":J
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filesToTrim":[Ljava/io/File;
    .end local v4    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .end local v5    # "modified":Lcom/facebook/internal/FileLruCache$ModifiedFile;
    .end local v6    # "size":J
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 303
    .restart local v0    # "count":J
    .restart local v3    # "filesToTrim":[Ljava/io/File;
    .restart local v4    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .restart local v6    # "size":J
    :cond_0
    :goto_1
    :try_start_3
    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v8}, Lcom/facebook/internal/FileLruCache$Limits;->getByteCount()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-gtz v8, :cond_1

    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v8}, Lcom/facebook/internal/FileLruCache$Limits;->getFileCount()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v0, v8

    if-lez v8, :cond_2

    .line 304
    :cond_1
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-virtual {v8}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v2

    .line 305
    .restart local v2    # "file":Ljava/io/File;
    sget-object v8, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v9, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  trim removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 307
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 308
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 311
    .end local v0    # "count":J
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filesToTrim":[Ljava/io/File;
    .end local v4    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .end local v6    # "size":J
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 312
    const/4 v10, 0x0

    :try_start_4
    iput-boolean v10, p0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 313
    iget-object v10, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v8

    .line 311
    .restart local v0    # "count":J
    .restart local v3    # "filesToTrim":[Ljava/io/File;
    .restart local v4    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .restart local v6    # "size":J
    :cond_2
    iget-object v9, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 312
    const/4 v8, 0x0

    :try_start_5
    iput-boolean v8, p0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z

    .line 313
    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit v9

    .line 316
    return-void

    .line 314
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .end local v0    # "count":J
    .end local v3    # "filesToTrim":[Ljava/io/File;
    .end local v4    # "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .end local v6    # "size":J
    :catchall_3
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v8
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 226
    .local v0, "filesToDelete":[Ljava/io/File;
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 227
    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/FileLruCache$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/internal/FileLruCache$2;-><init>(Lcom/facebook/internal/FileLruCache;[Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 237
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v5, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 123
    .local v9, "input":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v9    # "input":Ljava/io/FileInputStream;
    .local v10, "input":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v12, 0x2000

    invoke-direct {v3, v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 129
    .local v3, "buffered":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 132
    .local v11, "success":Z
    :try_start_1
    invoke-static {v3}, Lcom/facebook/internal/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 133
    .local v7, "header":Lorg/json/JSONObject;
    if-nez v7, :cond_1

    .line 134
    const/4 v12, 0x0

    .line 157
    if-nez v11, :cond_0

    .line 158
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    move-object v9, v10

    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    move-object v3, v12

    .end local v3    # "buffered":Ljava/io/BufferedInputStream;
    .end local v7    # "header":Lorg/json/JSONObject;
    .end local v11    # "success":Z
    :goto_0
    return-object v3

    .line 124
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0

    .line 137
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "buffered":Ljava/io/BufferedInputStream;
    .restart local v7    # "header":Lorg/json/JSONObject;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :cond_1
    :try_start_2
    const-string v12, "key"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "foundKey":Ljava/lang/String;
    if-eqz v6, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-nez v12, :cond_4

    .line 139
    :cond_2
    const/4 v12, 0x0

    .line 157
    if-nez v11, :cond_3

    .line 158
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_3
    move-object v9, v10

    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    move-object v3, v12

    goto :goto_0

    .line 142
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    :cond_4
    :try_start_3
    const-string v12, "tag"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "headerContentTag":Ljava/lang/String;
    if-nez p2, :cond_5

    if-nez v8, :cond_6

    :cond_5
    if-eqz p2, :cond_8

    .line 145
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    if-nez v12, :cond_8

    .line 146
    :cond_6
    const/4 v12, 0x0

    .line 157
    if-nez v11, :cond_7

    .line 158
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_7
    move-object v9, v10

    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    move-object v3, v12

    goto :goto_0

    .line 149
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    :cond_8
    :try_start_4
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 150
    .local v1, "accessTime":J
    sget-object v12, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v13, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting lastModified to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 151
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 150
    invoke-static {v12, v13, v14}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v5, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    const/4 v11, 0x1

    .line 157
    if-nez v11, :cond_9

    .line 158
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_9
    move-object v9, v10

    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 157
    .end local v1    # "accessTime":J
    .end local v6    # "foundKey":Ljava/lang/String;
    .end local v7    # "header":Lorg/json/JSONObject;
    .end local v8    # "headerContentTag":Ljava/lang/String;
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v12

    if-nez v11, :cond_a

    .line 158
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_a
    throw v12
.end method

.method public interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 259
    .local v0, "output":Ljava/io/OutputStream;
    new-instance v1, Lcom/facebook/internal/FileLruCache$CopyingInputStream;

    invoke-direct {v1, p2, v0}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/internal/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 169
    .local v5, "buffer":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 170
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not create file at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_0
    const/4 v10, 0x0

    .line 176
    .local v10, "file":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    .end local v10    # "file":Ljava/io/FileOutputStream;
    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .restart local v10    # "file":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 183
    .local v3, "bufferFileCreateTime":J
    new-instance v1, Lcom/facebook/internal/FileLruCache$1;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/internal/FileLruCache$1;-><init>(Lcom/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V

    .line 196
    .local v1, "renameToTargetCallback":Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    new-instance v8, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;

    invoke-direct {v8, v10, v1}, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V

    .line 197
    .local v8, "cleanup":Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v7, v8, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 198
    .local v7, "buffered":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 202
    .local v12, "success":Z
    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .local v11, "header":Lorg/json/JSONObject;
    const-string v2, "key"

    move-object/from16 v0, p1

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-static/range {p2 .. p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_1
    invoke-static {v7, v11}, Lcom/facebook/internal/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    const/4 v12, 0x1

    .line 217
    if-nez v12, :cond_2

    .line 218
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2
    return-object v7

    .line 177
    .end local v1    # "renameToTargetCallback":Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    .end local v3    # "bufferFileCreateTime":J
    .end local v7    # "buffered":Ljava/io/BufferedOutputStream;
    .end local v8    # "cleanup":Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    .end local v10    # "file":Ljava/io/FileOutputStream;
    .end local v11    # "header":Lorg/json/JSONObject;
    .end local v12    # "success":Z
    :catch_0
    move-exception v9

    .line 178
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v6, 0x5

    sget-object v13, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error creating buffer output stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v6, v13, v14}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "renameToTargetCallback":Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    .restart local v3    # "bufferFileCreateTime":J
    .restart local v7    # "buffered":Ljava/io/BufferedOutputStream;
    .restart local v8    # "cleanup":Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    .restart local v10    # "file":Ljava/io/FileOutputStream;
    .restart local v12    # "success":Z
    :catch_1
    move-exception v9

    .line 214
    .local v9, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v6, 0x5

    sget-object v13, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error creating JSON header for cache file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v6, v13, v14}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v9    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    if-nez v12, :cond_3

    .line 218
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    throw v2
.end method

.method sizeInBytesForTest()J
    .locals 8

    .prologue
    .line 94
    iget-object v5, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 95
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/facebook/internal/FileLruCache;->isTrimInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 97
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v4

    goto :goto_0

    .line 102
    :cond_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    iget-object v4, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, "files":[Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 106
    .local v2, "total":J
    if-eqz v1, :cond_2

    .line 107
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 108
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "total":J
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 111
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "total":J
    :cond_2
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FileLruCache: tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
