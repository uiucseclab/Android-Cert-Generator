.class Lcom/facebook/exoplayer/VideoPlayerService$1;
.super Landroid/util/LruCache;
.source "tkhd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
        "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/exoplayer/VideoPlayerService;


# direct methods
.method constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;I)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 120
    check-cast p3, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$1;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1

    .line 132
    :cond_0
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
