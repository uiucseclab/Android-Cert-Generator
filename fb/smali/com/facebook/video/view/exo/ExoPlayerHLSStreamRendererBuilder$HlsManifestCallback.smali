.class Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;
.super Ljava/lang/Object;
.source "odex_lock"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

.field private b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;

    invoke-interface {v0, p1}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;->a(Ljava/lang/Exception;)V

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 13

    .prologue
    .line 79
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-boolean v1, v1, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->k:Z

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v2, v2, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->d:Landroid/content/Context;

    const-string v3, "ExoPlayer_HLS"

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    new-instance v2, Lcom/facebook/video/view/exo/VideoServerHLSUriDataSource;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v3, v3, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->j:Lcom/facebook/video/server/VideoServer;

    invoke-direct {v2, v1, v6, v3}, Lcom/facebook/video/view/exo/VideoServerHLSUriDataSource;-><init>(Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Lcom/facebook/video/server/VideoServer;)V

    .line 96
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v3, v3, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->c:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v5, v4, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->i:Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    move-object v4, p1

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IILcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 105
    new-instance v6, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v2, v2, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->h:Lcom/google/android/exoplayer/LoadControl;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget v3, v3, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->a:I

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget v4, v4, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->b:I

    mul-int/2addr v3, v4

    invoke-direct {v6, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V

    .line 110
    new-instance v5, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v10, v1, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v11, v1, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->f:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

    const/4 v12, -0x1

    invoke-direct/range {v5 .. v12}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;I)V

    .line 118
    new-instance v1, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v2, v2, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v3, v3, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->g:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;

    invoke-direct {v1, v6, v2, v3}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    .line 123
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;

    invoke-interface {v2, v5, v1}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;->a(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)V

    .line 125
    return-void

    .line 94
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const-string v1, "ExoPlayer_HLS"

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;

    iget-object v3, v3, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->i:Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v2, v1, v6, v3}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    goto :goto_0
.end method
