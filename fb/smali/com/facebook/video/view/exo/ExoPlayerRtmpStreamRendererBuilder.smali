.class public Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;
.super Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;
.source "odex fpos must be 0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;-><init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    .line 33
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;)Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;
    .locals 9

    .prologue
    .line 63
    new-instance v1, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;->f:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

    const/4 v8, -0x1

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;I)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->RTMP:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    return-object v0
.end method

.method public final a(Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V
    .locals 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;->c:Landroid/net/Uri;

    .line 42
    new-instance v3, Lcom/facebook/video/view/exo/DefaultSampleSource;

    new-instance v4, Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    iget-object v5, p0, Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;->d:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/facebook/video/view/exo/DefaultSampleSource;-><init>(Lcom/facebook/video/view/exo/RtmpSampleExtractor;I)V

    move-object v0, v3

    .line 50
    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;->e:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;->a(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;)Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;->e:Landroid/os/Handler;

    .line 81
    new-instance v3, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerRtmpStreamRendererBuilder;->g:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;

    invoke-direct {v3, v0, v2, v4}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    move-object v0, v3

    .line 53
    invoke-interface {p1, v1, v0}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;->a(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)V

    .line 54
    return-void
.end method
