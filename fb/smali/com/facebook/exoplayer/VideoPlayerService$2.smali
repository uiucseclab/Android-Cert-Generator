.class Lcom/facebook/exoplayer/VideoPlayerService$2;
.super Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;
.source "tkhd"


# instance fields
.field final synthetic a:Lcom/facebook/exoplayer/VideoPlayerService;


# direct methods
.method constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)I
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 462
    if-eqz v0, :cond_0

    .line 463
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->a()I

    move-result v0

    monitor-exit v1

    .line 467
    :goto_0
    return v0

    .line 465
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    const-string v0, "error getPlayWhenReady"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 467
    const/4 v0, 0x1

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayRequest;)Lcom/facebook/exoplayer/ipc/VideoPlayerSession;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 277
    sget-object v1, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    const-string v2, "Register session ClientType(%s):%s, Preferered url: %s, ManifestLen: %s, ManifestFd: %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v4, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->a:Landroid/net/Uri;

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->d:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    if-nez v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    iget-object v4, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v7, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v7

    .line 291
    :try_start_0
    new-instance v4, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    iget-object v0, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v1, v2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    new-instance v5, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    iget-object v0, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->c:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    new-instance v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->d:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;Landroid/net/Uri;)V

    .line 307
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 683
    sget-object v1, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "setVideoServerBaseUri is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    .line 89
    iput-object p1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Landroid/net/Uri;

    .line 685
    return-void

    .line 683
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;J)V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 500
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 502
    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer/ExoPlayer;->a(J)V

    .line 504
    monitor-exit v1

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    const-string v0, "error seekTo"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Landroid/net/Uri;)V
    .locals 12

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildRenderers :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 322
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v10, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v10

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 325
    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "Found ExoPlayer instance"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->d:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 339
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->e:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 341
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 v2, 0x1

    move v9, v2

    .line 342
    :goto_1
    if-nez v0, :cond_f

    if-nez v1, :cond_f

    .line 343
    new-instance v11, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;

    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {v11, v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 344
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;

    .line 347
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "Build HLS renderers"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 349
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    .line 350
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const-string v4, "ExoService"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    .line 355
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v1, v0, v11}, Lcom/google/android/exoplayer/util/ManifestFetcher;->a(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 408
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "Start build progressive renderers"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 409
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v3, "ExoService"

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/facebook/exoplayer/ExperimentationSetting;->e(Ljava/util/Map;)I

    move-result v1

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/facebook/exoplayer/ExperimentationSetting;->e(Ljava/util/Map;)I

    move-result v1

    iget-object v4, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v4, v4, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/facebook/exoplayer/ExperimentationSetting;->f(Ljava/util/Map;)I

    move-result v4

    mul-int/2addr v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v1, 0x0

    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;

    invoke-direct {v6}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;-><init>()V

    aput-object v6, v5, v1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 418
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v6, v2, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    new-instance v7, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {v7, v2, p1}, Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    const/4 v8, -0x1

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 425
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v6, v3, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    move-object v3, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    move-object v4, v2

    move-object v3, v1

    .line 433
    :goto_3
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->PROGRESSIVE_DOWNLOAD:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    if-nez v9, :cond_e

    const/4 v5, 0x1

    :goto_4
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Z)V

    .line 439
    monitor-exit v10

    :goto_5
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "ExoPlayer.Factory.newInstance"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 329
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/facebook/exoplayer/ExperimentationSetting;->g(Ljava/util/Map;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v2, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/facebook/exoplayer/ExperimentationSetting;->h(Ljava/util/Map;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->a(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {v1, v2, p1}, Lcom/facebook/exoplayer/VideoPlayerService$ExoPlayerEventListener;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->a(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 334
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 341
    :cond_2
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_1

    .line 356
    :cond_3
    :try_start_1
    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->f:Landroid/net/Uri;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mpd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    .line 359
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 360
    const/4 v1, 0x0

    .line 362
    :try_start_2
    iget-object v2, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 363
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v4, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v2

    .line 366
    :cond_4
    if-nez v1, :cond_5

    iget-object v2, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_5

    .line 367
    iget-object v2, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 368
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 369
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v0, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v1, v2

    .line 372
    :cond_5
    if-eqz v1, :cond_7

    .line 373
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Using dash for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->f:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 374
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    .line 376
    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->f:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    .line 379
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-virtual {v2, p1, v0, v11}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;)V
    :try_end_2
    .catch Lcom/google/android/exoplayer/ParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 392
    if-eqz v1, :cond_6

    .line 394
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 399
    :cond_6
    :goto_6
    :try_start_4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    monitor-exit v10

    goto/16 :goto_5

    .line 396
    :catch_0
    move-exception v0

    const-string v0, "inputStream close fail, nothing we can do"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 392
    :cond_7
    if-eqz v1, :cond_8

    .line 394
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 399
    :cond_8
    :goto_7
    :try_start_6
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_2

    .line 396
    :catch_1
    move-exception v0

    const-string v0, "inputStream close fail, nothing we can do"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 382
    :catch_2
    move-exception v0

    .line 383
    :try_start_7
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v4, "MALFORMED"

    invoke-virtual {v2, v4, v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 392
    if-eqz v1, :cond_9

    .line 394
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 399
    :cond_9
    :goto_8
    :try_start_9
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    monitor-exit v10

    goto/16 :goto_5

    .line 396
    :catch_3
    move-exception v0

    const-string v0, "inputStream close fail, nothing we can do"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 385
    :catch_4
    move-exception v0

    .line 386
    :try_start_a
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v4, "MALFORMED"

    invoke-virtual {v2, v4, v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 392
    if-eqz v1, :cond_a

    .line 394
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 399
    :cond_a
    :goto_9
    :try_start_c
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    monitor-exit v10

    goto/16 :goto_5

    .line 396
    :catch_5
    move-exception v0

    const-string v0, "inputStream close fail, nothing we can do"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_9

    .line 388
    :catch_6
    move-exception v0

    .line 389
    :try_start_d
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v4, "MALFORMED"

    invoke-virtual {v2, v4, v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 392
    if-eqz v1, :cond_b

    .line 394
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 399
    :cond_b
    :goto_a
    :try_start_f
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    monitor-exit v10

    goto/16 :goto_5

    .line 396
    :catch_7
    move-exception v0

    const-string v0, "inputStream close fail, nothing we can do"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    .line 392
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_c

    .line 394
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 399
    :cond_c
    :goto_b
    :try_start_11
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 396
    :catch_8
    move-exception v1

    const-string v1, "inputStream close fail, nothing we can do"

    invoke-static {v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_b

    .line 401
    :cond_d
    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->f:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mpd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 405
    const-string v0, "Request is gone, fallback to progressive"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    .line 433
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_f
    move-object v4, v1

    move-object v3, v0

    goto/16 :goto_3
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;F)V
    .locals 5

    .prologue
    .line 564
    if-nez p2, :cond_0

    .line 565
    const-string v0, "audio renderer is null"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 581
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVolume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for renderer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 569
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 571
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;

    .line 572
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 575
    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, Lcom/google/android/exoplayer/ExoPlayer;->a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 577
    monitor-exit v2

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    const-string v0, "error set volume"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Landroid/view/Surface;)V
    .locals 6

    .prologue
    .line 588
    if-nez p2, :cond_0

    .line 589
    const-string v0, "video renderer is null"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 610
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSurface for renderer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 593
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 595
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;

    .line 596
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 599
    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set surface "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for renderer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 602
    const/4 v3, 0x1

    invoke-interface {v1, v0, v3, p3}, Lcom/google/android/exoplayer/ExoPlayer;->b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 606
    monitor-exit v2

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    const-string v0, "error set surface"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "is videoRenderer null? "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " hashcode is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 451
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "is audioRenderer null? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashcode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 455
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of the renderers map? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v2, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 456
    return-void

    :cond_0
    move v0, v2

    .line 447
    goto :goto_0

    :cond_1
    move v1, v2

    .line 451
    goto :goto_1
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Z)V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string v0, "enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " renderer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 548
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    .line 550
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v1, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;

    .line 551
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 552
    iget v0, p2, Lcom/facebook/exoplayer/ipc/MediaRenderer;->b:I

    invoke-interface {v1, v0, p3}, Lcom/google/android/exoplayer/ExoPlayer;->a(IZ)V

    .line 553
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :goto_1
    return-void

    .line 545
    :cond_0
    const-string v0, "disable"

    goto :goto_0

    .line 555
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    const-string v0, "error enable renderer"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_1

    .line 555
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;)V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "addListener"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 667
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Z)V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPlayWhenReady to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 486
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 488
    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v0, p2}, Lcom/google/android/exoplayer/ExoPlayer;->a(Z)V

    .line 490
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->j:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    monitor-exit v1

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    const-string v0, "error setPlayWhenReady"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 316
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;)V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "removeListener"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 676
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Z)V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "release"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 530
    if-eqz p2, :cond_0

    .line 531
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-virtual {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 533
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mToBeReleased before remove, size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v3, v3, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 534
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mToBeReleased after remove, size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v3, v3, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 536
    monitor-exit v1

    .line 538
    :cond_0
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)Z
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 474
    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->b()Z

    move-result v0

    monitor-exit v1

    .line 479
    :goto_0
    return v0

    .line 477
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    const-string v0, "error getPlayWhenReady"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 479
    const/4 v0, 0x0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "stop"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 513
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 515
    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->c()V

    .line 518
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->d:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->e:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    monitor-exit v1

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    const-string v0, "error stop"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "getDurationUs"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 653
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 655
    if-eqz v0, :cond_0

    .line 656
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->e()J

    move-result-wide v0

    monitor-exit v2

    .line 660
    :goto_0
    return-wide v0

    .line 658
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    const-string v0, "no available player to getDurationUs"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 660
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 642
    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->f()J

    move-result-wide v0

    monitor-exit v2

    .line 647
    :goto_0
    return-wide v0

    .line 645
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    const-string v0, "no available player to getCurrentPositionUs"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 647
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "getBufferedPositionUs"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 628
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v2, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 630
    if-eqz v0, :cond_0

    .line 631
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->g()J

    move-result-wide v0

    monitor-exit v2

    .line 635
    :goto_0
    return-wide v0

    .line 633
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    const-string v0, "no available player to getBufferedPositionUs"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 635
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)I
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    const-string v1, "getBufferedPercentage"

    invoke-static {v0, v1, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 615
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$2;->a:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 617
    if-eqz v0, :cond_0

    .line 618
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->h()I

    move-result v0

    monitor-exit v1

    .line 622
    :goto_0
    return v0

    .line 620
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    const-string v0, "no available player to getBufferedPercentage"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 622
    const/4 v0, -0x1

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
