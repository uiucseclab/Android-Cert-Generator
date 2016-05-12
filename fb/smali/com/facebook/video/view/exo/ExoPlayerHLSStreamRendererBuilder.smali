.class public Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;
.super Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;
.source "odex_lock"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I

.field public final h:Lcom/google/android/exoplayer/LoadControl;

.field public final i:Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

.field public final j:Lcom/facebook/video/server/VideoServer;

.field public final k:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;ZLcom/facebook/video/server/VideoServer;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;II)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;-><init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    .line 39
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->i:Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    .line 56
    iput p8, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->a:I

    .line 57
    iput p9, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->b:I

    .line 58
    new-instance v0, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    invoke-direct {v1, p9}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->h:Lcom/google/android/exoplayer/LoadControl;

    .line 59
    iput-object p5, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->j:Lcom/facebook/video/server/VideoServer;

    .line 60
    iput-boolean p4, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->k:Z

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->HLS:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    return-object v0
.end method

.method public final a(Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    .line 66
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const-string v4, "ExoPlayer_HLS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;

    invoke-direct {v2, p0, p1}, Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder$HlsManifestCallback;-><init>(Lcom/facebook/video/view/exo/ExoPlayerHLSStreamRendererBuilder;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer/util/ManifestFetcher;->a(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 72
    return-void
.end method
