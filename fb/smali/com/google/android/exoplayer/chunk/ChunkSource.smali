.class public interface abstract Lcom/google/android/exoplayer/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "nodex udp priming"


# virtual methods
.method public abstract a()Lcom/google/android/exoplayer/TrackInfo;
.end method

.method public abstract a(Lcom/google/android/exoplayer/MediaFormat;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer/chunk/Chunk;)V
.end method

.method public abstract a(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;JJ",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract c()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method
