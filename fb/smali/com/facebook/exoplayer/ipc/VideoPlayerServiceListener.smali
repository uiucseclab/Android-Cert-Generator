.class public interface abstract Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;
.super Ljava/lang/Object;
.source "peer="

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(IIF)V
.end method

.method public abstract a(ILcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;IIJ)V
.end method

.method public abstract a(Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/util/List;J[Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;",
            ">;J[",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(ZII)V
.end method

.method public abstract b()V
.end method
