.class Lcom/facebook/exoplayer/VideoPlayerService$3;
.super Ljava/util/TimerTask;
.source "tkhd"


# instance fields
.field final synthetic a:Lcom/facebook/exoplayer/VideoPlayerService;


# direct methods
.method constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$3;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 746
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$3;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$3;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    .line 748
    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$3;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-virtual {v3, v0}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 750
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$3;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 751
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
