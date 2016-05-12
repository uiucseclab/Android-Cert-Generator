.class Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;
.super Ljava/lang/Object;
.source "tkhd"

# interfaces
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/exoplayer/VideoPlayerService;

.field private b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;


# direct methods
.method public constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    .line 813
    return-void
.end method


# virtual methods
.method public final a(IIF)V
    .locals 5

    .prologue
    .line 830
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoSizeChanged w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixelWHRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v0, v1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 834
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    .line 836
    if-nez v0, :cond_0

    .line 837
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :goto_0
    return-void

    .line 840
    :cond_0
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(IIF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 841
    :catch_0
    move-exception v2

    .line 842
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error onVideoSizeChanged for listener "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; caused by: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v0, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(IJ)V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer/chunk/Format;II)V
    .locals 9

    .prologue
    .line 873
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/chunk/Format;->c:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kbps, w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/chunk/Format;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/chunk/Format;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v0, v1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v8, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v8

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    .line 882
    if-nez v1, :cond_1

    .line 883
    monitor-exit v8

    .line 899
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    if-nez p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->f()J

    move-result-wide v6

    move v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(ILcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;IIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    :goto_2
    :try_start_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 887
    :cond_2
    :try_start_3
    new-instance v3, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    invoke-direct {v3, p2}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;-><init>(Lcom/google/android/exoplayer/chunk/Format;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error onDownstreamFormatChanged for listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v0, v1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public final a(Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    .prologue
    .line 857
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 3

    .prologue
    .line 862
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "MALFORMED"

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 863
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "MALFORMED"

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 818
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "ERROR_IO"

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 997
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 13

    .prologue
    .line 803
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 945
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "On hls manifest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v1, v2, v3}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 946
    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v3, "ExoService"

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 949
    new-instance v2, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v1, v6, v4}, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 950
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    iget-object v3, v3, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v5}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>()V

    move-object v4, p1

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IILcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 959
    new-instance v2, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget-object v4, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v4, v4, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/facebook/exoplayer/ExperimentationSetting;->d(Ljava/util/Map;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 962
    new-instance v6, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v3, v3, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/facebook/exoplayer/ExperimentationSetting;->d(Ljava/util/Map;)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v4, v4, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/facebook/exoplayer/ExperimentationSetting;->a(Ljava/util/Map;)I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v6, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V

    .line 969
    new-instance v11, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-direct {v11, v1, v2}, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 970
    new-instance v5, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v10, v1, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    const/4 v12, -0x1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 978
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v2, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    invoke-direct {v1, v6, v2, v11}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 983
    :try_start_0
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    sget-object v4, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->HLS:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v1

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught exception when building hls renderers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-static {v1, v2}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 868
    return-void
.end method
