.class Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;
.super Ljava/lang/Object;
.source "remaining_bytes"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IJ)V
    .locals 1

    .prologue
    .line 565
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->c:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iput p2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->a:I

    iput-wide p3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->c:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->d:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->a:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->a(IJ)V

    .line 569
    return-void
.end method
