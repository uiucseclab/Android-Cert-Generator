.class public Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;
.super Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;
.source "onBind(%s)"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field protected final a:I

.field private final b:Lcom/google/android/exoplayer/LoadControl;

.field private final h:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final i:Landroid/net/Uri;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/facebook/common/eventbus/TypedEventBus;

.field private final l:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

.field private final m:Lcom/facebook/video/server/VideoServer;

.field private final n:Lcom/facebook/video/view/exo/PlaybackPreferences;

.field private final o:Lcom/facebook/video/abtest/VideoDashConfig;

.field private final p:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

.field private final q:Z

.field private final r:Lcom/facebook/device/DeviceConditionHelper;

.field private final s:Lcom/facebook/common/network/FbDataConnectionManager;

.field private final t:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/video/view/exo/PlaybackPreferences;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Lcom/facebook/video/server/VideoServer;Lcom/facebook/video/abtest/VideoDashConfig;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;Lcom/google/android/exoplayer/upstream/BandwidthMeter;ZLcom/facebook/device/DeviceConditionHelper;Lcom/facebook/common/network/FbDataConnectionManager;Lcom/google/common/util/concurrent/ListeningExecutorService;)V
    .locals 7

    .prologue
    .line 97
    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;-><init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    .line 98
    iput-object p4, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->n:Lcom/facebook/video/view/exo/PlaybackPreferences;

    .line 99
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    .line 100
    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->n:Lcom/facebook/video/view/exo/PlaybackPreferences;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/video/view/exo/PlaybackPreferences;->a(Z)V

    .line 101
    iput-object p2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->i:Landroid/net/Uri;

    .line 102
    iput-object p3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->j:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->k:Lcom/facebook/common/eventbus/TypedEventBus;

    .line 104
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->l:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    .line 105
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->m:Lcom/facebook/video/server/VideoServer;

    .line 106
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->p:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    .line 107
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->h:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 108
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->q:Z

    .line 109
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->r:Lcom/facebook/device/DeviceConditionHelper;

    .line 110
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->s:Lcom/facebook/common/network/FbDataConnectionManager;

    .line 111
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->t:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 112
    move-object/from16 v0, p12

    iget v1, v0, Lcom/facebook/video/abtest/VideoDashConfig;->A:I

    iput v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->a:I

    .line 113
    new-instance v1, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->a:I

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->b:Lcom/google/android/exoplayer/LoadControl;

    .line 114
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->DASH:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    .locals 6

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    .line 163
    const-string v1, "audio/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-boolean v0, v0, Lcom/facebook/video/abtest/VideoDashConfig;->G:Z

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Lcom/facebook/video/view/exo/VideoServerUriDataSource;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->d:Landroid/content/Context;

    const-string v3, "ExoPlayer"

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->n:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v2}, Lcom/facebook/video/view/exo/PlaybackPreferences;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->m:Lcom/facebook/video/server/VideoServer;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/view/exo/VideoServerUriDataSource;-><init>(Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Lcom/facebook/video/server/VideoServer;)V

    .line 180
    :goto_1
    new-instance v1, Lcom/google/android/exoplayer/dash/DashChunkSource;

    new-instance v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$FixedEvaluator;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$FixedEvaluator;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;[Lcom/google/android/exoplayer/dash/mpd/Representation;)V

    .line 185
    new-instance v2, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->b:Lcom/google/android/exoplayer/LoadControl;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    iget v3, v3, Lcom/facebook/video/abtest/VideoDashConfig;->z:I

    iget v4, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->a:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V

    .line 190
    new-instance v0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->g:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Lcom/facebook/video/view/VideoServerDashDataSource;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->m:Lcom/facebook/video/server/VideoServer;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->k:Lcom/facebook/common/eventbus/TypedEventBus;

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->l:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    iget-object v5, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    invoke-virtual {v5}, Lcom/facebook/video/abtest/VideoDashConfig;->d()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/video/view/VideoServerDashDataSource;-><init>(Lcom/facebook/video/server/VideoServer;Landroid/net/Uri;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Z)V

    goto :goto_1

    .line 196
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected mime type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 201
    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 202
    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/mpd/Period;->a(I)I

    move-result v10

    .line 205
    if-eq v10, v12, :cond_8

    .line 206
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->d:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 208
    :goto_1
    if-nez v0, :cond_2

    .line 266
    :cond_0
    :goto_2
    return-object v9

    :cond_1
    move v0, v1

    .line 201
    goto :goto_0

    .line 214
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->d:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->a(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 219
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    invoke-virtual {v2}, Lcom/facebook/video/abtest/VideoDashConfig;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_0

    array-length v2, v8

    if-eqz v2, :cond_0

    .line 224
    :cond_3
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    .line 225
    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "video/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-boolean v0, v0, Lcom/facebook/video/abtest/VideoDashConfig;->G:Z

    if-eqz v0, :cond_5

    .line 232
    new-instance v0, Lcom/facebook/video/view/exo/VideoServerUriDataSource;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->d:Landroid/content/Context;

    const-string v3, "ExoPlayer"

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->n:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v2}, Lcom/facebook/video/view/exo/PlaybackPreferences;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->m:Lcom/facebook/video/server/VideoServer;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/view/exo/VideoServerUriDataSource;-><init>(Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Lcom/facebook/video/server/VideoServer;)V

    move-object v6, v0

    .line 244
    :goto_3
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->n:Lcom/facebook/video/view/exo/PlaybackPreferences;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->h:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    iget-boolean v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->q:Z

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->r:Lcom/facebook/device/DeviceConditionHelper;

    iget-object v5, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->s:Lcom/facebook/common/network/FbDataConnectionManager;

    invoke-static/range {v0 .. v5}, Lcom/facebook/video/view/exo/FormatEvaluatorFactory;->a(Lcom/facebook/video/abtest/VideoDashConfig;Lcom/facebook/video/view/exo/PlaybackPreferences;Lcom/google/android/exoplayer/upstream/BandwidthMeter;ZLcom/facebook/device/DeviceConditionHelper;Lcom/facebook/common/network/FbDataConnectionManager;)Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    move-result-object v5

    .line 251
    new-instance v0, Lcom/google/android/exoplayer/dash/DashChunkSource;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    invoke-virtual {v1}, Lcom/facebook/video/abtest/VideoDashConfig;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v3, v8

    :goto_4
    move-object v1, p1

    move v2, v10

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 258
    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->b:Lcom/google/android/exoplayer/LoadControl;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    iget v2, v2, Lcom/facebook/video/abtest/VideoDashConfig;->y:I

    iget v4, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->a:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->p:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 266
    new-instance v5, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->e:Landroid/os/Handler;

    iget-object v11, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->f:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;I)V

    move-object v9, v5

    goto/16 :goto_2

    .line 237
    :cond_5
    new-instance v0, Lcom/facebook/video/view/VideoServerDashDataSource;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->m:Lcom/facebook/video/server/VideoServer;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->k:Lcom/facebook/common/eventbus/TypedEventBus;

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->l:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    iget-object v5, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    invoke-virtual {v5}, Lcom/facebook/video/abtest/VideoDashConfig;->d()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/video/view/VideoServerDashDataSource;-><init>(Lcom/facebook/video/server/VideoServer;Landroid/net/Uri;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Z)V

    move-object v6, v0

    goto :goto_3

    :cond_6
    move-object v3, v9

    .line 251
    goto :goto_4

    .line 275
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected mime type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_8
    move-object v0, v9

    goto/16 :goto_1
.end method

.method public final a(Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V
    .locals 6

    .prologue
    .line 118
    const-string v0, "ExoPlayerDashStreamRenderBuilder.build"

    const v1, 0x354685f6

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 120
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/common/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->i:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const-string v4, "ExoPlayer_DASH"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;)V

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    .line 129
    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;

    invoke-direct {v2, p0, p1}, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;-><init>(Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ManifestFetcher;->a(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    const v0, 0x4902b793

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 148
    return-void

    .line 132
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/video/view/exo/ManifestContentFetcher;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->i:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->t:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object v5, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->l:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/video/view/exo/ManifestContentFetcher;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;)V

    .line 139
    new-instance v1, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;

    invoke-direct {v1, p0, p1}, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;-><init>(Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V

    .line 140
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->o:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-boolean v2, v2, Lcom/facebook/video/abtest/VideoDashConfig;->F:Z

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v0, v1}, Lcom/facebook/video/view/exo/ManifestContentFetcher;->b(Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    const v1, -0x6630af76

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0

    .line 143
    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/facebook/video/view/exo/ManifestContentFetcher;->a(Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
