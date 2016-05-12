.class Lcom/google/android/exoplayer/hls/HlsSampleSource$5;
.super Ljava/lang/Object;
.source "mp41"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer/hls/HlsSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->d:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->a:Lcom/google/android/exoplayer/chunk/Format;

    iput p3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->b:I

    iput-wide p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->d:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsSampleSource;->h:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->d:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget v1, v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;->e:I

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->a:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->b:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->c:J

    .line 565
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    long-to-int v6, v6

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/chunk/BaseChunkSampleSourceEventListener;->a(ILcom/google/android/exoplayer/chunk/Format;II)V

    .line 625
    return-void
.end method
