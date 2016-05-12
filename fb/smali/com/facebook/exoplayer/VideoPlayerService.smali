.class public Lcom/facebook/exoplayer/VideoPlayerService;
.super Landroid/app/Service;
.source "tkhd"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e",
        "BadMethodUse-java.lang.String.length",
        "HardcodedIPAddressUse"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/net/Uri;

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/exoplayer/ipc/MediaRenderer;",
            "Lcom/google/android/exoplayer/MediaCodecTrackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            "Lcom/google/android/exoplayer/ExoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            "Lcom/facebook/exoplayer/ipc/VideoPlayRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/facebook/video/view/exo/PlaybackPreferences;

.field private final m:Z

.field private final n:Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;

.field private final o:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Landroid/net/Uri;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->h:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/facebook/exoplayer/VideoPlayerService$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/facebook/exoplayer/VideoPlayerService$1;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;I)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->j:Landroid/util/LruCache;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    .line 138
    new-instance v0, Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-direct {v0}, Lcom/facebook/video/view/exo/PlaybackPreferences;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->l:Lcom/facebook/video/view/exo/PlaybackPreferences;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->m:Z

    .line 273
    new-instance v0, Lcom/facebook/exoplayer/VideoPlayerService$2;

    invoke-direct {v0, p0}, Lcom/facebook/exoplayer/VideoPlayerService$2;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->n:Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;

    .line 742
    new-instance v0, Lcom/facebook/exoplayer/VideoPlayerService$3;

    invoke-direct {v0, p0}, Lcom/facebook/exoplayer/VideoPlayerService$3;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->o:Ljava/util/TimerTask;

    .line 1166
    return-void
.end method

.method private a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/LoadControl;Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1063
    if-nez p2, :cond_0

    .line 1087
    :goto_0
    return-object v2

    .line 1068
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    .line 1069
    const-string v1, "audio/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1070
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Creating Audio Sample Source "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    new-instance v0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    const-string v4, "ExoService"

    invoke-direct {v1, p0, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1076
    new-instance v4, Lcom/google/android/exoplayer/dash/DashChunkSource;

    new-instance v1, Lcom/google/android/exoplayer/chunk/FormatEvaluator$FixedEvaluator;

    invoke-direct {v1}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$FixedEvaluator;-><init>()V

    new-array v5, v3, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-direct {v4, v0, v1, v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;[Lcom/google/android/exoplayer/dash/mpd/Representation;)V

    .line 1081
    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/facebook/exoplayer/ExperimentationSetting;->a(Ljava/util/Map;)I

    move-result v0

    iget-object v5, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/facebook/exoplayer/ExperimentationSetting;->d(Ljava/util/Map;)I

    move-result v5

    mul-int/2addr v0, v5

    invoke-direct {v1, v4, p3, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V

    .line 1087
    new-instance v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iget-object v4, p0, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    move-object v2, v0

    goto :goto_0

    .line 1095
    :cond_2
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

.method private a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/LoadControl;Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .locals 9

    .prologue
    .line 1103
    iget-object v1, p2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    const/4 v1, 0x0

    .line 1154
    :goto_0
    return-object v1

    .line 1107
    :cond_0
    iget-object v1, p2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/Period;

    .line 1108
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/dash/mpd/Period;->a(I)I

    move-result v3

    .line 1109
    const/4 v2, 0x0

    .line 1110
    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1111
    iget-object v1, v1, Lcom/google/android/exoplayer/dash/mpd/Period;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 1113
    :goto_1
    if-nez v1, :cond_1

    .line 1114
    const/4 v1, 0x0

    goto :goto_0

    .line 1119
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v2, v4, v5}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->a(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1124
    if-eqz v4, :cond_2

    array-length v2, v4

    if-nez v2, :cond_3

    .line 1125
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0

    .line 1128
    :cond_3
    iget-object v1, v1, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v1, v1, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    .line 1129
    const-string v2, "video/avc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1130
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Creating Video Sample Source: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    new-instance v5, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    const-string v2, "ExoService"

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->c:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, p0, v1, v2, v6}, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1136
    new-instance v1, Lcom/google/android/exoplayer/dash/DashChunkSource;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/facebook/exoplayer/ExperimentationSetting;->c(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v6, Lcom/facebook/exoplayer/DashEvaluatorProxy;

    invoke-direct {v6, p0, p1}, Lcom/facebook/exoplayer/DashEvaluatorProxy;-><init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    :goto_2
    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 1145
    new-instance v2, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/facebook/exoplayer/ExperimentationSetting;->b(Ljava/util/Map;)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/facebook/exoplayer/ExperimentationSetting;->d(Ljava/util/Map;)I

    move-result v4

    mul-int v5, v3, v4

    iget-object v6, p0, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    const/4 v8, 0x1

    move-object v3, v1

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 1154
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/facebook/exoplayer/VideoPlayerService;->c:Landroid/os/Handler;

    const/4 v8, -0x1

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    goto/16 :goto_0

    .line 1136
    :cond_5
    new-instance v6, Lcom/facebook/video/view/exo/ManualEvaluator;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService;->l:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-direct {v6, v2}, Lcom/facebook/video/view/exo/ManualEvaluator;-><init>(Lcom/facebook/video/view/exo/PlaybackPreferences;)V

    goto :goto_2

    .line 1163
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected mime type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object v1, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/exoplayer/VideoPlayerService;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method private a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 203
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "hashcode of v: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->d:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v3}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rendererImpl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "hashcode of a: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->e:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v3}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rendererImpl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->d:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->e:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMediaCodecTrackRendererHashMap.size() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mExoPlayerHashMap.size() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->d:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    iget-object v3, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->e:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {p2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer;

    .line 229
    if-nez v1, :cond_3

    .line 230
    monitor-exit v2

    .line 246
    :goto_2
    return-void

    .line 203
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 232
    :cond_3
    if-nez p5, :cond_4

    .line 233
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v3, 0x0

    aput-object p3, v0, v3

    const/4 v3, 0x1

    aput-object p4, v0, v3

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer;->a([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 234
    monitor-exit v2

    goto :goto_2

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 236
    :cond_4
    if-eqz v0, :cond_5

    .line 238
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer;->a()I

    move-result v4

    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer;->h()I

    move-result v1

    invoke-interface {v0, v3, v4, v1}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(ZII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit v2

    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    const-string v0, "error update player state change"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static final b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/Throwable;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 740
    return-void
.end method

.method public static final b(Ljava/lang/Throwable;Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 2

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "session["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz p0, :cond_1

    .line 190
    sget-object v1, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :goto_1
    return-void

    .line 187
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    sget-object v1, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private c(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 2

    .prologue
    .line 698
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;

    .line 705
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 707
    :try_start_0
    iget-object v0, v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->d:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->e:Lcom/facebook/exoplayer/ipc/MediaRenderer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    const-string v0, "ParcelFileDescriptor close fail, nothing we can do"

    invoke-static {v0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;
    .locals 1

    .prologue
    .line 266
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1005
    .line 1006
    iget-object v0, p2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    .line 1011
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v8, v2

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 1012
    iget v1, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1022
    :pswitch_0
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 1023
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Add video representation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1014
    :pswitch_1
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v8

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 1015
    if-nez v1, :cond_4

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Add audio representation "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move-object v1, v0

    .line 1019
    goto :goto_3

    :cond_2
    move-object v8, v1

    .line 1020
    goto :goto_1

    .line 1029
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/facebook/exoplayer/ExperimentationSetting;->d(Ljava/util/Map;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    .line 102
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->i:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 103
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->i:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 105
    :goto_5
    move v4, v10

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    .line 109
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->j:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 110
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->j:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 112
    :goto_6
    move v5, v10

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    .line 116
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->k:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 117
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->k:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 119
    :goto_7
    move v6, v10

    iget-object v3, p0, Lcom/facebook/exoplayer/VideoPlayerService;->k:Ljava/util/HashMap;

    .line 123
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->l:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 124
    sget-object v10, Lcom/facebook/exoplayer/ExperimentationSetting;->l:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 126
    :goto_8
    move v7, v10

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;Landroid/os/Handler;Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;IIFF)V

    .line 1038
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/LoadControl;Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-result-object v3

    .line 1044
    invoke-direct {p0, p1, v8, v0, p3}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/LoadControl;Lcom/facebook/exoplayer/VideoPlayerService$StreamRendererEventListener;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    move-result-object v4

    .line 1050
    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->DASH:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    move-object v0, p0

    move-object v1, p1

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Z)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_4

    .line 1012
    nop

    :cond_5
    const/16 v10, 0x3a98

    goto :goto_5

    :cond_6
    const/16 v10, 0x7530

    goto :goto_6

    :cond_7
    const v10, 0x3e4ccccd    # 0.2f

    goto :goto_7

    nop

    :cond_8
    const v10, 0x3f4ccccd    # 0.8f

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 4

    .prologue
    .line 717
    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    .line 720
    invoke-virtual {p0, p3}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    if-eqz v0, :cond_0

    .line 724
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught exception when sending error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Ljava/lang/String;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 691
    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0, p1}, Lcom/facebook/exoplayer/VideoPlayerService;->c(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    .line 693
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->d()V

    .line 695
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 757
    sget-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bind by intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->n:Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x3b357443

    invoke-static {v7, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v6

    .line 763
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 764
    sget-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    const-string v1, "Video Player service creating"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    .line 768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    .line 770
    new-instance v0, Ljava/util/Timer;

    const-string v1, "VideoPlayerServiceTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    .line 771
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/facebook/exoplayer/VideoPlayerService;->o:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 772
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x5f9ddd9f

    invoke-static {v7, v0, v1, v6}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x632fe6d6

    invoke-static {v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 776
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 777
    sget-object v0, Lcom/facebook/exoplayer/VideoPlayerService;->a:Ljava/lang/String;

    const-string v2, "Video Player Service destroying"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->b:Ljava/util/Timer;

    .line 782
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->j:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 784
    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    monitor-enter v2

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    .line 786
    invoke-virtual {p0, v0}, Lcom/facebook/exoplayer/VideoPlayerService;->b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, -0x32755a40    # -2.907648E8f

    invoke-static {v2, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->d(II)V

    throw v0

    .line 788
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 790
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 791
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 793
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 794
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer;

    .line 795
    if-eqz v0, :cond_1

    .line 796
    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->d()V

    goto :goto_1

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 800
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    const v0, 0x5b68884a

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->d(II)V

    return-void
.end method
