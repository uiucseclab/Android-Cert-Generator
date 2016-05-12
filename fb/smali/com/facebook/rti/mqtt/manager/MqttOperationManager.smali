.class public Lcom/facebook/rti/mqtt/manager/MqttOperationManager;
.super Ljava/lang/Object;
.source "sensor"


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

.field private final b:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final c:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field private final d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/rti/mqtt/manager/MqttOperation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    .line 50
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 51
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->c:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 52
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 53
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 5

    .prologue
    .line 246
    const-string v1, "MqttOperationManager"

    const-string v2, "%s: %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    return-void

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 6

    .prologue
    .line 251
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    iget v2, p1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 253
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Ljava/lang/Throwable;)V

    .line 256
    const-string v1, "MqttOperationManager"

    const-string v2, "Unexpected duplicate message ID %d for operation %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_0
    return-void

    .line 253
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/rti/mqtt/manager/MqttOperation;
    .locals 12

    .prologue
    .line 130
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    monitor-enter v3

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    move-object v11, v0

    .line 132
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v11, :cond_1

    .line 135
    const-string v2, "complete"

    invoke-static {v2, v11}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 136
    invoke-virtual {v11}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b()V

    .line 138
    iget-object v2, v11, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 139
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 140
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v6

    .line 141
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v8

    .line 142
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    iget-wide v4, v11, Lcom/facebook/rti/mqtt/manager/MqttOperation;->d:J

    sub-long v4, v2, v4

    .line 143
    iget-object v2, v11, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->c:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v2, v4, v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->e(J)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v3, v11, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v2 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V

    .line 155
    :goto_0
    return-object v11

    .line 132
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 154
    :cond_1
    const-string v2, "MqttOperationManager"

    const-string v3, "Operation %d not found."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/rti/mqtt/manager/MqttOperation;)Lcom/facebook/rti/mqtt/manager/MqttOperation;
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->b(Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 105
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a()Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 115
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 116
    const-string v0, "add"

    invoke-static {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 117
    return-object p1
.end method

.method public final a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/manager/MqttOperation;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;IJZ)V

    .line 77
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->b(Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 79
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;

    invoke-direct {v2, p0, v0, p4}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;I)V

    int-to-long v4, p4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;)V

    .line 93
    const-string v1, "MqttOperationManager"

    const-string v2, "Added a pending operation with type %s and timeout %d seconds"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const-string v1, "add"

    invoke-static {v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 100
    return-object v0
.end method

.method public final a(ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p2}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Ljava/lang/Throwable;)V

    .line 187
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/rti/mqtt/manager/MqttOperation;I)V
    .locals 18

    .prologue
    .line 198
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 199
    move-object/from16 v0, p1

    iget v5, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    .line 200
    const-string v3, "MqttOperationManager"

    const-string v4, "Response %s timed out for operation %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 207
    invoke-virtual {v13}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 208
    invoke-virtual {v13}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v8

    .line 209
    invoke-virtual {v13}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v10

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    monitor-enter v14

    .line 213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p2

    int-to-long v6, v0

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    invoke-virtual/range {v3 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;IJJJLandroid/net/NetworkInfo;)V

    .line 231
    :goto_0
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 235
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Ljava/lang/Throwable;)V

    .line 236
    const-string v4, "timeout"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 238
    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v2, v4}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    :cond_0
    const-string v2, "MqttOperationManager"

    const-string v4, "Disconnecting client %s due to request timeout"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-static {v2, v4, v5}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v13, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Ljava/lang/Exception;)Ljava/util/concurrent/Future;

    .line 243
    :cond_1
    return-void

    .line 224
    :cond_2
    :try_start_1
    const-string v3, "MqttOperationManager"

    const-string v4, "Duplicate operation ID %d for operation %s and client %h."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object v13, v6, v5

    invoke-static {v3, v4, v6}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    const-string v1, "MqttOperationManager"

    const-string v2, "Aborting %d pending operations."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 177
    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abort:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 180
    return-void
.end method
