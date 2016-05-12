.class Lcom/squareup/okhttp/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$1;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$1;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$1;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$000(Lcom/squareup/okhttp/internal/DiskLruCache;)Lokio/BufferedSink;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$1;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$100(Lcom/squareup/okhttp/internal/DiskLruCache;)V

    .line 169
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$1;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$200(Lcom/squareup/okhttp/internal/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$1;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->rebuildJournal()V
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$300(Lcom/squareup/okhttp/internal/DiskLruCache;)V

    .line 171
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$1;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v3, 0x0

    # setter for: Lcom/squareup/okhttp/internal/DiskLruCache;->redundantOpCount:I
    invoke-static {v1, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$402(Lcom/squareup/okhttp/internal/DiskLruCache;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :cond_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
