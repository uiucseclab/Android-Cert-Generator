.class public final Lcom/facebook/video/view/exo/DashCustomEvaluator;
.super Ljava/lang/Object;
.source "onDomContentLoaded %d"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatEvaluator;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Z

.field private final c:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final d:I

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:F

.field private final i:Z

.field private final j:Lcom/facebook/video/view/exo/PlaybackPreferences;

.field private final k:Lcom/facebook/video/abtest/VideoDashConfig;

.field private final l:Lcom/facebook/device/DeviceConditionHelper;

.field private final m:Lcom/facebook/common/network/FbDataConnectionManager;

.field private n:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/video/view/exo/DashCustomEvaluator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;ZLcom/facebook/video/view/exo/PlaybackPreferences;Lcom/facebook/video/abtest/VideoDashConfig;Lcom/facebook/device/DeviceConditionHelper;Lcom/facebook/common/network/FbDataConnectionManager;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->b:Z

    .line 47
    iput-object p1, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->c:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 48
    iget v0, p4, Lcom/facebook/video/abtest/VideoDashConfig;->r:I

    iput v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->d:I

    .line 49
    iget v0, p4, Lcom/facebook/video/abtest/VideoDashConfig;->s:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->e:J

    .line 51
    iget v0, p4, Lcom/facebook/video/abtest/VideoDashConfig;->t:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->f:J

    .line 52
    iget v0, p4, Lcom/facebook/video/abtest/VideoDashConfig;->u:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->g:J

    .line 54
    iget v0, p4, Lcom/facebook/video/abtest/VideoDashConfig;->v:F

    iput v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->h:F

    .line 55
    iput-boolean p2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->i:Z

    .line 56
    iput-object p3, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    .line 57
    iput-object p4, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    .line 58
    iput-object p5, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->l:Lcom/facebook/device/DeviceConditionHelper;

    .line 59
    iput-object p6, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->m:Lcom/facebook/common/network/FbDataConnectionManager;

    .line 60
    invoke-virtual {p3}, Lcom/facebook/video/view/exo/PlaybackPreferences;->b()Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->n:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 61
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-boolean v0, v0, Lcom/facebook/video/abtest/VideoDashConfig;->I:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer/chunk/Format;->d:I

    iget v1, p1, Lcom/google/android/exoplayer/chunk/Format;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer/chunk/Format;->d:I

    goto :goto_0
.end method

.method private a(Z)J
    .locals 6

    .prologue
    .line 177
    const-wide/16 v0, -0x1

    .line 178
    if-eqz p1, :cond_1

    .line 179
    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->m:Lcom/facebook/common/network/FbDataConnectionManager;

    invoke-virtual {v2}, Lcom/facebook/common/network/FbDataConnectionManager;->f()D

    move-result-wide v2

    .line 180
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 182
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 187
    :cond_0
    :goto_0
    return-wide v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->c:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method private a([Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;JZJ)Lcom/google/android/exoplayer/chunk/Format;
    .locals 7

    .prologue
    .line 199
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->d:I

    int-to-long v0, v0

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v2}, Lcom/facebook/video/view/exo/PlaybackPreferences;->c()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v3

    .line 219
    if-nez p5, :cond_4

    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-boolean v2, v2, Lcom/facebook/video/abtest/VideoDashConfig;->E:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->n:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    iget-object v4, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v4}, Lcom/facebook/video/view/exo/PlaybackPreferences;->b()Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    move-result-object v4

    if-ne v2, v4, :cond_1

    :cond_0
    if-nez p2, :cond_4

    :cond_1
    if-eqz v3, :cond_4

    .line 222
    const/4 v2, 0x0

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 223
    aget-object v4, p1, v2

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, p1, v2

    iget v4, v4, Lcom/google/android/exoplayer/chunk/Format;->c:I

    iget v5, v3, Lcom/google/android/exoplayer/chunk/Format;->c:I

    if-ne v4, v5, :cond_3

    .line 225
    aget-object v0, p1, v2

    .line 254
    :goto_2
    return-object v0

    .line 199
    :cond_2
    long-to-float v0, p3

    iget v1, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->h:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_0

    .line 222
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    :cond_4
    if-nez p5, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_9

    .line 232
    :cond_5
    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-object v3, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->l:Lcom/facebook/device/DeviceConditionHelper;

    iget-object v4, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v4}, Lcom/facebook/video/view/exo/PlaybackPreferences;->f()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/video/abtest/VideoDashConfig;->a(Lcom/facebook/device/DeviceConditionHelper;Z)I

    move-result v4

    .line 234
    const/4 v2, 0x0

    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_9

    .line 235
    aget-object v3, p1, v2

    .line 236
    if-lez v4, :cond_6

    .line 237
    invoke-direct {p0, v3}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v5

    if-gt v5, v4, :cond_8

    move-object v0, v3

    .line 238
    goto :goto_2

    .line 240
    :cond_6
    iget-object v5, v3, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    const-string v6, "vd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v3, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    const-string v6, "ad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move-object v0, v3

    .line 241
    goto :goto_2

    .line 234
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 246
    :cond_9
    const/4 v2, 0x0

    :goto_4
    array-length v3, p1

    if-ge v2, v3, :cond_b

    .line 247
    aget-object v3, p1, v2

    .line 248
    iget v4, v3, Lcom/google/android/exoplayer/chunk/Format;->c:I

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_a

    invoke-direct {p0, v3, p2, p6, p7}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a(Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;J)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v0, v3

    .line 250
    goto :goto_2

    .line 246
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 254
    :cond_b
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    goto :goto_2
.end method

.method private a(Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;J)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    const v0, 0x7fffffff

    .line 262
    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->l:Lcom/facebook/device/DeviceConditionHelper;

    invoke-virtual {v2}, Lcom/facebook/device/DeviceConditionHelper;->c()Z

    move-result v2

    .line 263
    if-nez v2, :cond_3

    .line 264
    iget-object v0, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget v0, v0, Lcom/facebook/video/abtest/VideoDashConfig;->q:I

    .line 270
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v3}, Lcom/facebook/video/view/exo/PlaybackPreferences;->b()Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    move-result-object v3

    sget-object v4, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    if-ne v3, v4, :cond_1

    .line 272
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget v2, v2, Lcom/facebook/video/abtest/VideoDashConfig;->C:I

    .line 274
    :goto_1
    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v3}, Lcom/facebook/video/view/exo/PlaybackPreferences;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 278
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v2

    if-gt v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 265
    :cond_3
    iget-object v3, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v3}, Lcom/facebook/video/view/exo/PlaybackPreferences;->b()Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    move-result-object v3

    sget-object v4, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    if-eq v3, v4, :cond_0

    .line 267
    if-nez p2, :cond_4

    move v0, v1

    .line 268
    :goto_2
    iget-object v3, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget v3, v3, Lcom/facebook/video/abtest/VideoDashConfig;->p:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 267
    :cond_4
    invoke-direct {p0, p2}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v0

    goto :goto_2

    .line 272
    :cond_5
    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget v2, v2, Lcom/facebook/video/abtest/VideoDashConfig;->D:I

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final a(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 80
    new-instance v3, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;

    invoke-direct {v3, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;-><init>(Lcom/google/android/exoplayer/chunk/MediaChunk;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->b(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 84
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final b(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;",
            ">;J[",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v8, 0x0

    .line 93
    :goto_0
    iget-boolean v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->i:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    const/4 v7, 0x1

    .line 94
    :goto_1
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 111
    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->k:Lcom/facebook/video/abtest/VideoDashConfig;

    iget-boolean v2, v2, Lcom/facebook/video/abtest/VideoDashConfig;->w:Z

    invoke-direct {p0, v2}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a(Z)J

    move-result-wide v5

    move-object v2, p0

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v9}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a([Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;JZJ)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v5

    .line 117
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    iget v2, v5, Lcom/google/android/exoplayer/chunk/Format;->c:I

    iget v3, v4, Lcom/google/android/exoplayer/chunk/Format;->c:I

    if-le v2, v3, :cond_3

    const/4 v2, 0x1

    move v6, v2

    .line 118
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    iget v2, v5, Lcom/google/android/exoplayer/chunk/Format;->c:I

    iget v3, v4, Lcom/google/android/exoplayer/chunk/Format;->c:I

    if-ge v2, v3, :cond_4

    const/4 v2, 0x1

    .line 119
    :goto_3
    const/16 v3, 0xa

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v7, v3

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v7, v3

    const/4 v10, 0x2

    if-nez v5, :cond_5

    const/4 v3, -0x1

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v10, 0x3

    if-nez v5, :cond_6

    const/4 v3, -0x1

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v10, 0x4

    if-nez v4, :cond_7

    const/4 v3, -0x1

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v3, 0x5

    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v3

    const/4 v3, 0x6

    iget-object v10, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v10}, Lcom/facebook/video/view/exo/PlaybackPreferences;->b()Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    move-result-object v10

    iget-object v10, v10, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->value:Ljava/lang/String;

    aput-object v10, v7, v3

    const/4 v3, 0x7

    const-wide/16 v10, 0x3e8

    div-long v10, p2, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v3

    const/16 v3, 0x8

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a(Z)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v3

    const/16 v3, 0x9

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/facebook/video/view/exo/DashCustomEvaluator;->a(Z)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v3

    .line 132
    if-eqz v6, :cond_b

    .line 133
    iget-wide v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->e:J

    cmp-long v2, v8, v2

    if-gez v2, :cond_8

    move-object v2, v4

    .line 164
    :goto_7
    if-eqz v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 165
    const/4 v3, 0x3

    move-object/from16 v0, p5

    iput v3, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->b:I

    .line 167
    :cond_0
    move-object/from16 v0, p5

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 168
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p5

    iget v4, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    if-nez v2, :cond_c

    const-string v2, "null"

    :goto_8
    aput-object v2, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    if-nez v2, :cond_d

    const/4 v2, -0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 173
    iget-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->j:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v2}, Lcom/facebook/video/view/exo/PlaybackPreferences;->b()Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->n:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 174
    return-void

    .line 91
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;

    iget-wide v2, v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;->d:J

    sub-long v8, v2, p2

    goto/16 :goto_0

    .line 93
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 117
    :cond_3
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_2

    .line 118
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 119
    :cond_5
    iget v3, v5, Lcom/google/android/exoplayer/chunk/Format;->c:I

    div-int/lit16 v3, v3, 0x3e8

    goto/16 :goto_4

    :cond_6
    iget v3, v5, Lcom/google/android/exoplayer/chunk/Format;->d:I

    goto/16 :goto_5

    :cond_7
    iget v3, v4, Lcom/google/android/exoplayer/chunk/Format;->c:I

    div-int/lit16 v3, v3, 0x3e8

    goto/16 :goto_6

    .line 138
    :cond_8
    iget-wide v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->g:J

    cmp-long v2, v8, v2

    if-ltz v2, :cond_e

    .line 142
    const/4 v2, 0x1

    move v3, v2

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 143
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;

    .line 144
    iget-wide v6, v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;->c:J

    sub-long v6, v6, p2

    .line 145
    iget-wide v8, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->g:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_9

    iget-object v6, v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    iget v6, v6, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->c:I

    iget v7, v5, Lcom/google/android/exoplayer/chunk/Format;->c:I

    if-ge v6, v7, :cond_9

    iget-object v6, v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    iget v6, v6, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->e:I

    iget v7, v5, Lcom/google/android/exoplayer/chunk/Format;->e:I

    if-ge v6, v7, :cond_9

    iget-object v6, v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    iget v6, v6, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->e:I

    const/16 v7, 0x2d0

    if-ge v6, v7, :cond_9

    iget-object v2, v2, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;->b:Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    iget v2, v2, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->d:I

    const/16 v6, 0x500

    if-ge v2, v6, :cond_9

    .line 151
    move-object/from16 v0, p5

    iput v3, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->a:I

    move-object v2, v5

    .line 152
    goto/16 :goto_7

    .line 142
    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    :cond_a
    move-object v2, v5

    .line 155
    goto/16 :goto_7

    .line 157
    :cond_b
    if-eqz v2, :cond_e

    if-eqz v4, :cond_e

    iget-wide v2, p0, Lcom/facebook/video/view/exo/DashCustomEvaluator;->f:J

    cmp-long v2, v8, v2

    if-ltz v2, :cond_e

    move-object v2, v4

    .line 161
    goto/16 :goto_7

    .line 168
    :cond_c
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    goto/16 :goto_8

    :cond_d
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/Format;->c:I

    div-int/lit16 v2, v2, 0x3e8

    goto/16 :goto_9

    :cond_e
    move-object v2, v5

    goto/16 :goto_7
.end method
