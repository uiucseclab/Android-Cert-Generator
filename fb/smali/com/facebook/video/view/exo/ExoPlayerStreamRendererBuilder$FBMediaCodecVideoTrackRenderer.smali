.class public Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.source "removeListener"


# instance fields
.field protected final c:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 15

    .prologue
    .line 86
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJLcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 97
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;->c:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

    .line 98
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;->c:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v0, v1}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 106
    return-void
.end method
