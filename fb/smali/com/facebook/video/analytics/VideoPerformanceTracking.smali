.class public Lcom/facebook/video/analytics/VideoPerformanceTracking;
.super Ljava/lang/Object;
.source "restored old ART hack mask"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/video/analytics/VideoCacheCounters;

.field private final c:Lcom/facebook/analytics/logger/AnalyticsLogger;

.field private final d:Lcom/facebook/common/network/FbNetworkManager;

.field private final e:Lcom/facebook/video/analytics/TimedMicroStorage;

.field public final f:Lcom/facebook/video/analytics/BytesViewedTracking;

.field public final g:Lcom/facebook/video/analytics/BytesViewedTracking;

.field private h:J

.field private i:J

.field public j:J

.field public k:J

.field public l:J

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;

    sput-object v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/video/analytics/VideoCacheCounters;Lcom/facebook/analytics/logger/AnalyticsLogger;Lcom/facebook/common/network/FbNetworkManager;Lcom/facebook/video/analytics/TimedMicroStorage;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b:Lcom/facebook/video/analytics/VideoCacheCounters;

    .line 121
    iput-object p2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->c:Lcom/facebook/analytics/logger/AnalyticsLogger;

    .line 122
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->d:Lcom/facebook/common/network/FbNetworkManager;

    .line 123
    iput-object p4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->e:Lcom/facebook/video/analytics/TimedMicroStorage;

    .line 125
    new-instance v0, Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-direct {v0}, Lcom/facebook/video/analytics/BytesViewedTracking;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f:Lcom/facebook/video/analytics/BytesViewedTracking;

    .line 126
    new-instance v0, Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-direct {v0}, Lcom/facebook/video/analytics/BytesViewedTracking;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->g:Lcom/facebook/video/analytics/BytesViewedTracking;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->m:Ljava/util/List;

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/facebook/video/analytics/VideoPerformanceTracking;J)J
    .locals 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->h:J

    return-wide v0
.end method

.method private a(JJ)V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b:Lcom/facebook/video/analytics/VideoCacheCounters;

    const-string v1, "downloaded"

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/analytics/counter/AnalyticsCounters;->a(Ljava/lang/String;J)V

    .line 447
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b:Lcom/facebook/video/analytics/VideoCacheCounters;

    const-string v1, "served"

    invoke-virtual {v0, v1, p3, p4}, Lcom/facebook/analytics/counter/AnalyticsCounters;->a(Ljava/lang/String;J)V

    .line 448
    return-void
.end method

.method private a(JZ)V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;-><init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;JZ)V

    invoke-direct {p0, v0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method private static a(Lcom/facebook/analytics/logger/HoneyClientEvent;Ljava/lang/String;Landroid/net/Uri;IZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 256
    const-string v0, "video_id"

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 257
    const-string v0, "url"

    invoke-virtual {p0, v0, p2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 258
    const-string v0, "session_id"

    invoke-virtual {p0, v0, p3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 259
    const-string v0, "connection_type"

    invoke-virtual {p0, v0, p6}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 260
    const-string v0, "is_partial"

    invoke-virtual {p0, v0, p4}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 261
    const-string v2, "range_from"

    if-eqz p5, :cond_0

    iget-wide v0, p5, Lcom/facebook/ui/media/cache/Range;->a:J

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 262
    const-string v2, "range_to"

    if-eqz p5, :cond_1

    iget-wide v0, p5, Lcom/facebook/ui/media/cache/Range;->b:J

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 263
    return-void

    .line 261
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 262
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 362
    :goto_0
    if-nez v0, :cond_1

    .line 364
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :goto_1
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/video/analytics/VideoPerformanceTracking;J)J
    .locals 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->i:J

    return-wide v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->d:Lcom/facebook/common/network/FbNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/common/network/FbNetworkManager;->j()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 294
    if-nez v0, :cond_0

    const-string v0, "not_available"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(JZ)V
    .locals 1

    .prologue
    .line 469
    new-instance v0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;-><init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;JZ)V

    invoke-direct {p0, v0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method private b(Lcom/facebook/analytics/logger/HoneyClientEvent;)V
    .locals 1

    .prologue
    .line 334
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->c:Lcom/facebook/analytics/logger/AnalyticsLogger;

    invoke-interface {v0, p1}, Lcom/facebook/analytics/logger/AnalyticsLogger;->a(Lcom/facebook/analytics/logger/HoneyClientEvent;)V

    .line 336
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 298
    iget-object v1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->d:Lcom/facebook/common/network/FbNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/common/network/FbNetworkManager;->j()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized f()V
    .locals 2

    .prologue
    .line 434
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->h:J

    .line 435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->i:J

    .line 436
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->j:J

    .line 437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->k:J

    .line 438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->e:Lcom/facebook/video/analytics/TimedMicroStorage;

    new-instance v1, Lcom/facebook/video/analytics/VideoPerformanceTracking$2;

    invoke-direct {v1, p0}, Lcom/facebook/video/analytics/VideoPerformanceTracking$2;-><init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;)V

    invoke-virtual {v0, v1}, Lcom/facebook/video/analytics/TimedMicroStorage;->a(Lcom/facebook/video/analytics/VideoPerformanceTracking$2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/net/Uri;JLjava/util/List;JLjava/lang/Exception;)V
    .locals 12
    .param p7    # Ljava/lang/Exception;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ui/media/cache/Range;",
            ">;J",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Lcom/facebook/analytics/logger/HoneyClientEvent;

    sget-object v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_PREFETCH:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    iget-object v3, v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "bytes_downloaded"

    move-wide/from16 v0, p5

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    move-result-object v2

    .line 312
    const/4 v3, 0x0

    .line 313
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ui/media/cache/Range;

    .line 314
    int-to-long v6, v4

    iget-wide v8, v3, Lcom/facebook/ui/media/cache/Range;->b:J

    iget-wide v10, v3, Lcom/facebook/ui/media/cache/Range;->a:J

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v3, v6

    move v4, v3

    .line 315
    goto :goto_0

    .line 316
    :cond_0
    const-string v3, "bytes_in_cache"

    int-to-long v4, v4

    sub-long v4, p2, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 318
    if-eqz p7, :cond_1

    .line 319
    const-string v3, "exception"

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 321
    :cond_1
    const-string v3, "0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/facebook/ui/media/cache/Range;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9, p2, p3}, Lcom/facebook/ui/media/cache/Range;-><init>(JJ)V

    invoke-direct {p0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b()Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Lcom/facebook/analytics/logger/HoneyClientEvent;Ljava/lang/String;Landroid/net/Uri;IZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v2}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b(Lcom/facebook/analytics/logger/HoneyClientEvent;)V

    .line 330
    invoke-direct {p0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->c()Z

    move-result v2

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b(JZ)V

    .line 331
    return-void
.end method

.method public final declared-synchronized a(Lcom/facebook/analytics/logger/HoneyClientEvent;)V
    .locals 6

    .prologue
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->m:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 488
    :goto_0
    if-nez v0, :cond_1

    .line 515
    :goto_1
    monitor-exit p0

    return-void

    .line 487
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 494
    :cond_1
    :try_start_1
    const-string v0, "bytes_downloaded"

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->h:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 495
    const-string v0, "bytes_downloaded_cell"

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->i:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 497
    const-string v0, "bytes_prefetched"

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->j:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 498
    const-string v0, "bytes_prefetched_wifi"

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->k:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 499
    const-string v0, "bytes_prefetched_cell"

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->l:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 501
    invoke-direct {p0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f()V

    .line 502
    invoke-virtual {p0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->e()V

    .line 505
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v0}, Lcom/facebook/video/analytics/BytesViewedTracking;->b()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 506
    const-string v2, "time_spent"

    invoke-virtual {p1, v2, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;D)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 507
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->g:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v0}, Lcom/facebook/video/analytics/BytesViewedTracking;->b()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 508
    const-string v2, "time_spent_in_cell"

    invoke-virtual {p1, v2, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;D)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 511
    const-string v0, "bytes_watched"

    iget-object v1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v1}, Lcom/facebook/video/analytics/BytesViewedTracking;->a()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 512
    const-string v0, "bytes_watched_in_cell"

    iget-object v1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->g:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v1}, Lcom/facebook/video/analytics/BytesViewedTracking;->a()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/facebook/ui/media/cache/MediaCacheKey;JJIZ)V
    .locals 10

    .prologue
    .line 279
    new-instance v1, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;-><init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;Lcom/facebook/ui/media/cache/MediaCacheKey;JJIZ)V

    invoke-direct {p0, v1}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public final declared-synchronized a(Ljava/io/DataOutputStream;)V
    .locals 2

    .prologue
    .line 423
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 424
    iget-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->h:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 425
    iget-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->i:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 426
    iget-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->j:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 427
    iget-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->k:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 428
    iget-wide v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->l:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 429
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v0, p1}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Ljava/io/DataOutputStream;)V

    .line 430
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->g:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v0, p1}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;IJJZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;ZJJ)V
    .locals 10

    .prologue
    .line 155
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(JJ)V

    .line 158
    move-wide/from16 v0, p6

    move/from16 v2, p11

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(JZ)V

    .line 161
    new-instance v3, Lcom/facebook/analytics/logger/HoneyClientEvent;

    sget-object v4, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_FINISHED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    iget-object v4, v4, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/facebook/analytics/logger/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 163
    invoke-static/range {v3 .. v9}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Lcom/facebook/analytics/logger/HoneyClientEvent;Ljava/lang/String;Landroid/net/Uri;IZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;)V

    .line 171
    const-string v4, "bytes_served"

    invoke-virtual {v3, v4, p4, p5}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 172
    const-string v4, "bytes_downloaded"

    move-wide/from16 v0, p6

    invoke-virtual {v3, v4, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 173
    const-string v4, "first_byte_served_time_ms"

    move-wide/from16 v0, p14

    invoke-virtual {v3, v4, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 174
    const-string v4, "serving_time_ms"

    move-wide/from16 v0, p12

    invoke-virtual {v3, v4, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 175
    invoke-direct {p0, v3}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b(Lcom/facebook/analytics/logger/HoneyClientEvent;)V

    .line 176
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/Throwable;JJZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;ZJJ)V
    .locals 11

    .prologue
    .line 192
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(JJ)V

    .line 199
    move-wide/from16 v0, p7

    move/from16 v2, p12

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(JZ)V

    .line 202
    new-instance v4, Lcom/facebook/analytics/logger/HoneyClientEvent;

    sget-object v5, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_ABORTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    iget-object v5, v5, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/facebook/analytics/logger/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 204
    invoke-static/range {v4 .. v10}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Lcom/facebook/analytics/logger/HoneyClientEvent;Ljava/lang/String;Landroid/net/Uri;IZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;)V

    .line 212
    const-string v5, "first_byte_served_time_ms"

    move-wide/from16 v0, p15

    invoke-virtual {v4, v5, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 213
    const-string v5, "serving_time_ms"

    move-wide/from16 v0, p13

    invoke-virtual {v4, v5, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 214
    const-string v5, "bytes_served"

    move-wide/from16 v0, p5

    invoke-virtual {v4, v5, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 215
    const-string v5, "bytes_downloaded"

    move-wide/from16 v0, p7

    invoke-virtual {v4, v5, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 216
    const-string v5, "exception"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 217
    const-string v5, "reason"

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 218
    invoke-direct {p0, v4}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b(Lcom/facebook/analytics/logger/HoneyClientEvent;)V

    .line 219
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/Throwable;ZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;J)V
    .locals 10

    .prologue
    .line 232
    new-instance v2, Lcom/facebook/analytics/logger/HoneyClientEvent;

    sget-object v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_FAILED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    iget-object v3, v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 234
    invoke-static/range {v2 .. v8}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Lcom/facebook/analytics/logger/HoneyClientEvent;Ljava/lang/String;Landroid/net/Uri;IZLcom/facebook/ui/media/cache/Range;Ljava/lang/String;)V

    .line 242
    const-string v3, "serving_time_ms"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 243
    const-string v3, "exception"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 244
    const-string v3, "reason"

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 245
    invoke-direct {p0, v2}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b(Lcom/facebook/analytics/logger/HoneyClientEvent;)V

    .line 246
    return-void
.end method

.method public final a([B)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 385
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 387
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 388
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 389
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->h:J

    .line 390
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->i:J

    .line 391
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->j:J

    .line 392
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->k:J

    .line 393
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->l:J

    .line 394
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v0, v2}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Ljava/io/DataInputStream;)V

    .line 395
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->g:Lcom/facebook/video/analytics/BytesViewedTracking;

    invoke-virtual {v0, v2}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 388
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    sget-object v2, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a:Ljava/lang/Class;

    const-string v3, "Error reading from storage, clearing accumulated vard"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-direct {p0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f()V

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 376
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 378
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->m:Ljava/util/List;

    .line 379
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->e:Lcom/facebook/video/analytics/TimedMicroStorage;

    new-instance v1, Lcom/facebook/video/analytics/VideoPerformanceTracking$3;

    invoke-direct {v1, p0}, Lcom/facebook/video/analytics/VideoPerformanceTracking$3;-><init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;)V

    invoke-virtual {v0, v1}, Lcom/facebook/video/analytics/TimedMicroStorage;->a(Lcom/facebook/video/analytics/VideoPerformanceTracking$3;)V

    .line 416
    return-void
.end method
