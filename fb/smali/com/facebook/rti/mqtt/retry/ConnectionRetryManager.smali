.class public Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;
.super Ljava/lang/Object;
.source "sent MSG_OPT_START to service"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field private final d:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field private f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private i:I

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->c:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 52
    iput-object p2, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->d:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 53
    iput-object p3, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->a:Ljava/util/concurrent/ExecutorService;

    .line 54
    iput-object p4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    iput-object p5, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->e:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->i:I

    .line 57
    return-void
.end method

.method private a(Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    const-string v0, "ConnectionRetryManager"

    const-string v1, "set strategy to %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->m()V

    .line 214
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->e:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_TO_BACK:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    if-ne p1, v1, :cond_0

    .line 216
    new-instance v1, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;

    iget v2, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->j:I

    iget v3, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->k:I

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;-><init>(III)V

    iput-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v1, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_OFF:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    if-ne p1, v1, :cond_1

    .line 221
    new-instance v1, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;

    iget v2, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->m:I

    iget v3, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->n:I

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->o:I

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;-><init>(III)V

    iput-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    goto :goto_0

    .line 226
    :cond_1
    const-string v0, "Invalid strategy %s specified"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "ConnectionRetryManager"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized j()Z
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()Z
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->m()V

    .line 203
    sget-object v0, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_TO_BACK:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->a(Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;)V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->i:I

    .line 205
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectionRetryManager"

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->l()V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->b(Z)V

    .line 64
    iput-object p1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->g:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/facebook/rti/mqtt/common/executors/ThreadUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->a:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->g:Ljava/lang/Runnable;

    const v2, 0x31885ce8

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized c()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectionRetryManager"

    const-string v3, "next"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "ConnectionRetryManager"

    const-string v2, "next is called before having a strategy."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 146
    :goto_0
    monitor-exit p0

    return v0

    .line 101
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "ConnectionRetryManager"

    const-string v1, "Retry attempt already scheduled."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->i:I

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->c:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->j:J

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->d:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->j()Z

    move-result v0

    if-nez v0, :cond_4

    move v3, v2

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v0, v3}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->b(Z)Z

    move-result v0

    .line 113
    if-nez v0, :cond_5

    .line 115
    iget-object v4, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v4}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->a()Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    move-result-object v4

    sget-object v5, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_TO_BACK:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    if-ne v4, v5, :cond_3

    .line 116
    const-string v0, "ConnectionRetryManager"

    const-string v4, "Auto switching from B2B to back off retry strategy."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_OFF:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->a(Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;)V

    .line 118
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v0, v3}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->b(Z)Z

    move-result v0

    .line 121
    :cond_3
    if-nez v0, :cond_5

    .line 122
    const-string v0, "ConnectionRetryManager"

    const-string v2, "No more retry!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 123
    goto :goto_0

    :cond_4
    move v3, v1

    .line 111
    goto :goto_1

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-interface {v0, v3}, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;->a(Z)I

    move-result v0

    .line 128
    const-string v1, "ConnectionRetryManager"

    iget-object v3, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->m()V

    .line 131
    if-gtz v0, :cond_6

    .line 133
    const-string v0, "ConnectionRetryManager"

    const-string v1, "Submitting immediate retry"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->b()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;

    .line 145
    :goto_2
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->i:I

    move v0, v2

    .line 146
    goto/16 :goto_0

    .line 137
    :cond_6
    const-string v1, "ConnectionRetryManager"

    const-string v3, "Scheduling retry in %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->g:Ljava/lang/Runnable;

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectionRetryManager"

    const-string v1, "stop retry"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    monitor-enter p0

    :try_start_0
    const-string v1, "ConnectionRetryManager"

    const-string v2, "ensure scheduled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->a()Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    const/4 v0, 0x1

    .line 174
    :cond_0
    monitor-exit p0

    return v0

    .line 170
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->i:I

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->j:J

    return-wide v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
