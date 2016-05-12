.class public Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
.source "removeListener"


# instance fields
.field protected final c:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 128
    iput-object p3, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;->c:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;

    .line 129
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;->c:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v0, v1}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 137
    return-void
.end method
