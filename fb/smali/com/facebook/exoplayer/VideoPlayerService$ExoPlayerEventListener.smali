.class Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;
.super Ljava/lang/Object;
.source "tkhd"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/exoplayer/VideoPlayerService;

.field private final b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;


# direct methods
.method constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    .line 148
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "ERROR_IO"

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 183
    return-void
.end method

.method public final a(ZI)V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSG_STATE_CHANGED to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and playWhenReady is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v0, v1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    .line 157
    if-nez v0, :cond_0

    .line 158
    monitor-exit v2

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer;->h()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(ZII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error forward player state change to listener "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v1, v0, v3}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/Throwable;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
