.class final Lcom/google/android/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "nodex_unsupported_android_version_string"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/exoplayer/StandaloneMediaClock;

.field private final e:[Z

.field private final f:J

.field private final g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/TrackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private i:[Lcom/google/android/exoplayer/TrackRenderer;

.field private j:Lcom/google/android/exoplayer/TrackRenderer;

.field private k:Lcom/google/android/exoplayer/MediaClock;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private volatile s:J

.field private volatile t:J

.field private volatile u:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[ZII)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    .line 81
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:I

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    .line 91
    iput-boolean p2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    .line 92
    array-length v1, p3

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    .line 93
    int-to-long v2, p4

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->f:J

    .line 94
    int-to-long v2, p5

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g:J

    .line 95
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aget-boolean v2, p3, v0

    aput-boolean v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    .line 100
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    .line 101
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->u:J

    .line 103
    new-instance v0, Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 245
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    if-eq v0, p1, :cond_0

    .line 246
    iput p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    :cond_0
    return-void
.end method

.method private a(IJJ)V
    .locals 4

    .prologue
    .line 475
    add-long v0, p2, p4

    .line 476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 477
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 565
    :try_start_0
    check-cast p2, Landroid/util/Pair;

    .line 566
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 568
    monitor-enter p0

    .line 569
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:I

    .line 570
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 571
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 577
    :cond_0
    return-void

    .line 571
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 568
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 569
    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:I

    .line 570
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 571
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private a(Lcom/google/android/exoplayer/TrackRenderer;)Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->b()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 341
    goto :goto_0

    .line 343
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->d()J

    move-result-wide v4

    .line 347
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->e()J

    move-result-wide v6

    .line 348
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g:J

    .line 349
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    cmp-long v8, v6, v10

    if-eqz v8, :cond_0

    const-wide/16 v8, -0x3

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gez v2, :cond_0

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    cmp-long v2, v6, v4

    if-gez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 348
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->f:J

    goto :goto_1
.end method

.method private b(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 581
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aget-boolean v1, v1, p1

    if-ne v1, p2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aput-boolean p2, v1, p1

    .line 586
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    if-eq v1, v3, :cond_0

    .line 590
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v1, p1

    .line 591
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->p()I

    move-result v2

    .line 592
    if-eq v2, v0, :cond_2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 598
    :cond_2
    if-eqz p2, :cond_5

    .line 599
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 600
    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer/TrackRenderer;->b(JZ)V

    .line 601
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->q()V

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 599
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 607
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    if-ne v1, v0, :cond_6

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer/MediaClock;

    invoke-interface {v2}, Lcom/google/android/exoplayer/MediaClock;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/StandaloneMediaClock;->a(J)V

    .line 612
    :cond_6
    invoke-static {v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->s()V

    goto :goto_0
.end method

.method private b(J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:Z

    .line 486
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    .line 487
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->b()V

    .line 488
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/StandaloneMediaClock;->a(J)V

    .line 489
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    .line 492
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    .line 494
    invoke-static {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 495
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/TrackRenderer;->b(J)V

    .line 492
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 497
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    .prologue
    .line 536
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 537
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 538
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->s()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 542
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 543
    :catch_1
    move-exception v0

    .line 545
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 360
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:Z

    .line 361
    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    .line 362
    if-nez p1, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h()V

    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 375
    return-void

    .line 366
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 367
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g()V

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    .line 369
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    if-ne v0, v2, :cond_0

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private b([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m()V

    .line 253
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    move v0, v1

    .line 254
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 255
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer/TrackRenderer;->f()Lcom/google/android/exoplayer/MediaClock;

    move-result-object v3

    .line 256
    if-eqz v3, :cond_0

    .line 257
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer/MediaClock;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 258
    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer/MediaClock;

    .line 259
    aget-object v2, p1, v0

    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 257
    goto :goto_1

    .line 262
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->f()V

    .line 264
    return-void
.end method

.method private static c(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    .prologue
    .line 551
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->t()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 554
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 555
    :catch_1
    move-exception v0

    .line 557
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static d(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->p()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->r()V

    .line 622
    :cond_0
    return-void
.end method

.method private f()V
    .locals 12

    .prologue
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 268
    const/4 v1, 0x1

    .line 269
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v4, v4, v0

    .line 271
    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->p()I

    move-result v5

    if-nez v5, :cond_0

    .line 272
    iget-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer/TrackRenderer;->c(J)I

    move-result v5

    .line 273
    if-nez v5, :cond_0

    .line 274
    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->bN_()V

    .line 275
    const/4 v1, 0x0

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    if-nez v1, :cond_2

    .line 282
    const/4 v1, 0x2

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IJJ)V

    .line 334
    :goto_1
    return-void

    .line 286
    :cond_2
    const-wide/16 v2, 0x0

    .line 287
    const/4 v4, 0x1

    .line 288
    const/4 v1, 0x1

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v0, v0

    new-array v6, v0, [Z

    .line 290
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v5, v5

    if-ge v0, v5, :cond_9

    .line 291
    iget-object v5, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v7, v5, v0

    .line 292
    invoke-virtual {v7}, Lcom/google/android/exoplayer/TrackRenderer;->p()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    const/4 v5, 0x1

    :goto_3
    aput-boolean v5, v6, v0

    .line 293
    aget-boolean v5, v6, v0

    if-eqz v5, :cond_4

    .line 294
    const-wide/16 v8, -0x1

    cmp-long v5, v2, v8

    if-eqz v5, :cond_3

    .line 298
    invoke-virtual {v7}, Lcom/google/android/exoplayer/TrackRenderer;->d()J

    move-result-wide v8

    .line 299
    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    .line 300
    const-wide/16 v2, -0x1

    .line 307
    :cond_3
    :goto_4
    iget-object v5, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_4

    .line 308
    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    const/4 v5, 0x0

    invoke-virtual {v7, v8, v9, v5}, Lcom/google/android/exoplayer/TrackRenderer;->b(JZ)V

    .line 309
    iget-object v5, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    if-eqz v4, :cond_7

    invoke-virtual {v7}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    .line 311
    :goto_5
    if-eqz v1, :cond_8

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 290
    :cond_4
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 292
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 301
    :cond_6
    const-wide/16 v10, -0x2

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    .line 304
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_4

    .line 310
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 311
    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 315
    :cond_9
    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    .line 317
    if-eqz v4, :cond_c

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    iget-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_c

    .line 320
    :cond_a
    const/4 v0, 0x5

    move-object v1, p0

    .line 322
    :goto_7
    iput v0, v1, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 330
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 331
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g()V

    .line 333
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 322
    :cond_c
    if-eqz v1, :cond_d

    const/4 v0, 0x4

    move-object v1, p0

    goto :goto_7

    :cond_d
    const/4 v0, 0x3

    move-object v1, p0

    goto :goto_7
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:Z

    .line 380
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->a()V

    move v1, v0

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->q()V

    .line 381
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;->b()V

    .line 388
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 388
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/MediaClock;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/StandaloneMediaClock;->a(J)V

    .line 401
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    .line 402
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/StandaloneMediaClock;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    goto :goto_0
.end method

.method private j()V
    .locals 15

    .prologue
    .line 405
    const-string v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 407
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    .line 409
    :goto_0
    const/4 v6, 0x1

    .line 410
    const/4 v5, 0x1

    .line 411
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i()V

    .line 412
    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    move v5, v6

    move-wide v6, v0

    move v1, v14

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    .line 417
    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->r:J

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/android/exoplayer/TrackRenderer;->a(JJ)V

    .line 418
    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 422
    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v8

    .line 423
    if-nez v8, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->bN_()V

    .line 426
    :cond_0
    if-eqz v4, :cond_4

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    .line 428
    :goto_3
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    .line 432
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->d()J

    move-result-wide v8

    .line 433
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->e()J

    move-result-wide v10

    .line 434
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_5

    .line 435
    const-wide/16 v6, -0x1

    .line 412
    :cond_1
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 407
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 418
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 426
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 436
    :cond_5
    const-wide/16 v12, -0x3

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-eqz v0, :cond_6

    const-wide/16 v12, -0x2

    cmp-long v0, v8, v12

    if-eqz v0, :cond_6

    cmp-long v0, v10, v8

    if-gez v0, :cond_1

    .line 442
    :cond_6
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    .line 446
    :cond_7
    iput-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->u:J

    .line 448
    if-eqz v5, :cond_d

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_d

    .line 450
    :cond_8
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 451
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h()V

    .line 463
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 465
    :cond_b
    const/4 v1, 0x7

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IJJ)V

    .line 470
    :cond_c
    :goto_6
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->a()V

    .line 471
    return-void

    .line 452
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    if-eqz v4, :cond_e

    .line 453
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 454
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    if-eqz v0, :cond_9

    .line 455
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->g()V

    goto :goto_5

    .line 457
    :cond_e
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    if-nez v4, :cond_9

    .line 458
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:Z

    .line 459
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 460
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h()V

    goto :goto_5

    .line 466
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 467
    const/4 v1, 0x7

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IJJ)V

    goto :goto_6
.end method

.method private k()V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m()V

    .line 503
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 504
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 507
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->m()V

    .line 508
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(I)V

    .line 509
    monitor-enter p0

    .line 510
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 512
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 516
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->n:Z

    .line 519
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/StandaloneMediaClock;->b()V

    .line 520
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 523
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v1, v0

    .line 525
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 526
    invoke-static {v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->i:[Lcom/google/android/exoplayer/TrackRenderer;

    .line 529
    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer/MediaClock;

    .line 530
    iput-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer/TrackRenderer;

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->t:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(IZ)V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void

    :cond_0
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public final varargs a([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public final b()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 122
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->u:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->u:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public final declared-synchronized b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "ExoPlayerImplInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent message("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") after release. Message ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->p:I

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 164
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_0

    .line 166
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 127
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->s:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 180
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 191
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 240
    :goto_0
    return v0

    .line 193
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b([Lcom/google/android/exoplayer/TrackRenderer;)V

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->f()V

    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(Z)V

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->j()V

    move v0, v1

    .line 206
    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(J)V

    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k()V

    move v0, v1

    .line 214
    goto :goto_0

    .line 217
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->l()V

    move v0, v1

    .line 218
    goto :goto_0

    .line 221
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(ILjava/lang/Object;)V

    move v0, v1

    .line 222
    goto :goto_0

    .line 225
    :pswitch_8
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(IZ)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 226
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal track renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k()V

    move v0, v1

    .line 235
    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->k()V

    move v0, v1

    .line 240
    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
