.class public Lcom/facebook/video/analytics/StallTimeCalculation;
.super Ljava/lang/Object;
.source "text/vtt"


# instance fields
.field private final a:Lcom/facebook/common/time/MonotonicClock;

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:Z

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/MonotonicClock;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->a:Lcom/facebook/common/time/MonotonicClock;

    .line 60
    invoke-virtual {p0}, Lcom/facebook/video/analytics/StallTimeCalculation;->a()V

    .line 61
    return-void
.end method

.method private j()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 155
    iget-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->a:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J

    sub-long/2addr v0, v4

    .line 157
    const-wide/16 v4, 0x14

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 161
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->b:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->c:J

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->h:J

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->d:J

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->e:J

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->a:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J

    .line 88
    iput-wide p1, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->a:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 97
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/video/analytics/StallTimeCalculation;->j()J

    move-result-wide v0

    .line 98
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 99
    iget v2, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->b:I

    .line 100
    iget-wide v2, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->c:J

    .line 102
    iget-wide v2, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 103
    iget-wide v2, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->h:J

    iput-wide v2, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->d:J

    .line 104
    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->e:J

    .line 107
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->f:Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/video/analytics/StallTimeCalculation;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 4

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/video/analytics/StallTimeCalculation;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()J
    .locals 4

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->c:J

    invoke-direct {p0}, Lcom/facebook/video/analytics/StallTimeCalculation;->j()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()J
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()J
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/video/analytics/StallTimeCalculation;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
