.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;
.super Ljava/lang/Object;
.source "persisteduid"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->a:Lcom/google/android/exoplayer/chunk/Format;

    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->b:I

    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget v1, v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->a:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->b:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->c:J

    .line 573
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    long-to-int v6, v6

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/chunk/BaseChunkSampleSourceEventListener;->a(ILcom/google/android/exoplayer/chunk/Format;II)V

    .line 645
    return-void
.end method
