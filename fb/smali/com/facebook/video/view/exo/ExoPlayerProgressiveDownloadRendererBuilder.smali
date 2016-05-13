.class public Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;
.super Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;
.source "odex must be empty"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I

.field private final h:Lcom/facebook/video/server/VideoServer;

.field private final i:Lcom/facebook/video/abtest/SourceType;

.field private final j:Lcom/facebook/common/eventbus/TypedEventBus;

.field private final k:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Lcom/facebook/video/server/VideoServer;Lcom/facebook/video/abtest/SourceType;II)V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;-><init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    .line 62
    iput-object p6, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->j:Lcom/facebook/common/eventbus/TypedEventBus;

    .line 63
    iput-object p7, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->k:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    .line 64
    iput-object p8, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->h:Lcom/facebook/video/server/VideoServer;

    .line 65
    iput-object p9, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->i:Lcom/facebook/video/abtest/SourceType;

    .line 66
    iput p10, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->a:I

    .line 67
    iput p11, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->b:I

    .line 68
    return-void
.end method

.method private static a(Landroid/net/Uri;)Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;
    .locals 2

    .prologue
    .line 105
    invoke-static {p0}, Lcom/facebook/video/server/VideoServer;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/facebook/video/server/VideoServer;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->a(Landroid/net/Uri;)Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/facebook/common/util/StringLocaleUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    sget-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->MP4:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    goto :goto_0

    .line 112
    :cond_1
    const-string v1, ".webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->WEBM:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->UNKNOWN:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;)Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;
    .locals 9

    .prologue
    .line 138
    new-instance v1, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->f:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

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
    .line 97
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->PROGRESSIVE_DOWNLOAD:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    return-object v0
.end method

.method public final a(Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V
    .locals 10

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->i:Lcom/facebook/video/abtest/SourceType;

    iget-boolean v0, v0, Lcom/facebook/video/abtest/SourceType;->direct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->h:Lcom/facebook/video/server/VideoServer;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->j:Lcom/facebook/common/eventbus/TypedEventBus;

    iget-object v4, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->k:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    iget-object v5, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->i:Lcom/facebook/video/abtest/SourceType;

    invoke-static/range {v0 .. v5}, Lcom/facebook/video/view/exo/DirectDataSourceFactory;->a(Landroid/content/Context;Lcom/facebook/video/server/VideoServer;Landroid/net/Uri;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Lcom/facebook/video/abtest/SourceType;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v2

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->c:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->a(Landroid/net/Uri;)Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    move-result-object v0

    .line 82
    .line 120
    sget-object v8, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 126
    new-instance v8, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;

    invoke-direct {v8}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;-><init>()V

    :goto_1
    move-object v6, v8

    .line 83
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->c:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget v4, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->b:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    iget v4, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->a:I

    iget v5, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->b:I

    mul-int/2addr v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 90
    iget-object v1, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->e:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->a(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;)Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->e:Landroid/os/Handler;

    .line 156
    new-instance v8, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;

    iget-object v9, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->g:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;

    invoke-direct {v8, v0, v2, v9}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V

    move-object v0, v8

    .line 92
    invoke-interface {p1, v1, v0}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;->a(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)V

    .line 93
    return-void

    .line 72
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder;->d:Landroid/content/Context;

    const-string v1, "ExoHttpSource"

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_0
    new-instance v8, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {v8}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>()V

    goto :goto_1

    .line 120
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
