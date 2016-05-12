.class Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;
.super Ljava/lang/Object;
.source "remaining_bytes"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IIF)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->d:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iput p2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->a:I

    iput p3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->b:I

    iput p4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->d:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->d:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->a:I

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->b:I

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;->c:F

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->a(IIF)V

    .line 533
    return-void
.end method
