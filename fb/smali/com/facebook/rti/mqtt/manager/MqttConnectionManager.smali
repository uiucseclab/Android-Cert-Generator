.class public Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;
.super Ljava/lang/Object;
.source "target_index"


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

.field public final D:Ljava/util/concurrent/atomic/AtomicLong;

.field public E:Z

.field private final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            "Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private final G:Ljava/lang/Runnable;

.field private final H:Ljava/lang/Runnable;

.field private final a:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider1",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

.field public final c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field public final d:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field public final e:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field public final f:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field public final g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

.field public final h:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field public final i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field public final l:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

.field private final m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field private final n:Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;

.field public final o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

.field private final p:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field private final q:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

.field private final s:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

.field public volatile u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field public v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

.field private w:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

.field private x:J

.field private y:J

.field public z:J


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/manager/MqttPushService;",
            "Lcom/facebook/rti/common/util/NonInjectProvider1",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;",
            ">;",
            "Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/manager/MqttIdManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/manager/MqttIdManager;",
            "Lcom/facebook/rti/mqtt/manager/MqttOperationManager;",
            "Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;",
            "Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;",
            "Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->D:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->E:Z

    .line 134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    .line 138
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$1;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->G:Ljava/lang/Runnable;

    .line 522
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->H:Ljava/lang/Runnable;

    .line 170
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    .line 171
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;

    .line 172
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    .line 173
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->d:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 174
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 175
    iput-object p7, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->f:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 176
    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->e:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 177
    iput-object p8, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    .line 178
    iput-object p9, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->l:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 179
    iput-object p10, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->C:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    .line 180
    iput-object p11, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 181
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 182
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    .line 183
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 184
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 185
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->n:Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;

    .line 186
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    .line 187
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->p:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 188
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->q:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 189
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->r:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    .line 190
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->s:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 191
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->G:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->a(Ljava/lang/Runnable;)V

    .line 192
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->l:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->H:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->a(Ljava/lang/Runnable;)V

    .line 193
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->t:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    .line 194
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->z:J

    .line 195
    return-void
.end method

.method private a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLjava/lang/String;)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 16
    .param p4    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;",
            "Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;",
            "IJ",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/manager/MqttOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v3, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 721
    move-object/from16 v0, p3

    iget v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->mValue:I

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ASSURED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    iget v3, v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->mValue:I

    if-ge v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 723
    const-string v2, "/send_message2"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/t_sm"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 725
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->c()V

    .line 728
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 729
    const-string v2, "/webrtc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/t_rtc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->s:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v2}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->r:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b()I

    move-result v5

    .line 732
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v6}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/rti/mqtt/manager/MqttOperation;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;IJZ)V

    .line 738
    new-instance v6, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p6

    move-object v14, v2

    invoke-direct/range {v6 .. v14}, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;-><init>(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->r:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    invoke-virtual {v3, v6}, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->a(Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)V

    .line 747
    const-string v3, "MqttConnectionManager"

    const-string v4, "Enqueue rtc message id= %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v3, v4, v7}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 749
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)Z

    .line 751
    :cond_3
    invoke-static {v2}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v4, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    :goto_1
    return-object v2

    .line 721
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 754
    :cond_5
    if-eqz v15, :cond_6

    :try_start_1
    invoke-virtual {v15}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v2

    if-nez v2, :cond_7

    .line 755
    :cond_6
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v4, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_1

    .line 759
    :cond_7
    :try_start_2
    invoke-virtual {v15}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->l()I

    move-result v6

    .line 762
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c(Lcom/facebook/rti/mqtt/protocol/MqttClient;)I

    move-result v2

    add-int v2, v2, p5

    .line 764
    const/4 v11, 0x0

    .line 765
    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v3, v15, v4, v6, v2}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    move-result-object v11

    :cond_8
    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    .line 773
    invoke-virtual/range {v2 .. v10}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)I

    .line 782
    const-string v2, "/mqtt_health_stats"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->z:J

    .line 785
    :cond_9
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_a

    .line 787
    new-instance v3, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-direct/range {v3 .. v9}, Lcom/facebook/rti/mqtt/manager/MqttOperation;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;IJZ)V

    .line 793
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b()V

    .line 796
    :goto_2
    invoke-static {v3}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;
    :try_end_2
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v4, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_1

    .line 797
    :catch_0
    move-exception v2

    .line 798
    :try_start_3
    const-string v3, "MqttConnectionManager"

    const-string v4, "MqttException caught on publish."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    .line 802
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 807
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v4, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v2

    :cond_a
    move-object v3, v11

    goto :goto_2
.end method

.method private a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;",
            "Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 407
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 408
    const/4 v1, 0x0

    .line 409
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->a:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    .line 410
    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f()Z

    move-result v1

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 417
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;)V

    .line 418
    invoke-virtual {v2, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->y:J

    .line 422
    :cond_0
    if-nez v1, :cond_1

    .line 423
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method

.method private a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)V
    .locals 3

    .prologue
    .line 316
    const-string v0, "MqttConnectionManager"

    const-string v1, "Reconnecting..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-direct {p0, v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    .line 320
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->p()V

    .line 321
    return-void
.end method

.method private static a(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    .locals 1

    .prologue
    .line 579
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1437
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    .line 1438
    const-string v1, "MqttConnectionManager"

    const-string v2, "Sending previously queued message id= %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1440
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    if-ne v0, v1, :cond_0

    .line 1441
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    .line 1442
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    iget-object v1, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Lcom/facebook/rti/mqtt/manager/MqttOperation;)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 1446
    :cond_0
    :try_start_0
    iget-object v1, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->b:[B

    iget-object v3, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget v4, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    iget-object v5, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->d:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

    iget-wide v6, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->f:J

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->z:J
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    if-eq v0, v1, :cond_1

    .line 1465
    iget-object v0, p2, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b()V

    :cond_1
    move v0, v9

    .line 1467
    :goto_0
    return v0

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    const-string v1, "MqttConnectionManager"

    const-string v2, "MqttException caught on publish."

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1458
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    move v0, v10

    .line 1461
    goto :goto_0
.end method

.method private a(Ljava/lang/String;[BJLcom/facebook/rti/mqtt/protocol/MqttPublishListener;)Z
    .locals 9
    .param p5    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 898
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BJLcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 588
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/facebook/rti/mqtt/protocol/MqttClient;)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 815
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 822
    :goto_0
    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v4

    iget v4, v4, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->h:I

    int-to-long v4, v4

    mul-long/2addr v4, v8

    .line 826
    sub-long v0, v4, v0

    .line 828
    cmp-long v7, v0, v2

    if-gez v7, :cond_0

    .line 834
    :goto_1
    const-string v0, "MqttConnectionManager"

    const-string v1, "calcExtraTimeoutForConnecting returned %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    div-long v0, v2, v8

    long-to-int v0, v0

    .line 837
    :goto_2
    return v0

    .line 830
    :cond_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    move-wide v2, v4

    .line 831
    goto :goto_1

    :cond_1
    move v0, v6

    .line 837
    goto :goto_2

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;)Lcom/facebook/rti/mqtt/protocol/MqttClient;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    return-object v0
.end method

.method private o()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->CONNECT_NOW:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 215
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->b()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 328
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b()V

    .line 329
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->D:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 332
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->t:I

    .line 333
    const-string v1, "MqttConnectionManager"

    const-string v2, "Set MqttConnectionManager thread priority to %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 337
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i()V

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    monitor-enter v3

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 350
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 353
    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_UNSUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v5, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_SUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-direct {v5, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 362
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->p:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    invoke-interface {v0, v2}, Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 369
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 370
    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->SUBSCRIBED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-direct {v6, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 376
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 379
    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 380
    const-string v1, "MqttConnectionManager"

    const-string v2, "Created mqtt client: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    invoke-direct {v1, p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;)V

    .line 382
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->q:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v2}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->w:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/mqttlite/SyncQueueTrackerImpl;)V

    .line 385
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b()V

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->x:J

    .line 389
    const-string v0, "MqttConnectionManager"

    const-string v1, "Mqtt connecting"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ConnectionState;->CONNECTING:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/manager/ConnectionState;)Z

    .line 391
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    .line 509
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 511
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v4

    iget v4, v4, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 517
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->k()V

    .line 518
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->B:Z

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Z)V

    .line 520
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;)I
    .locals 2

    .prologue
    .line 664
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 705
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    .locals 9
    .param p4    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 681
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v5, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLjava/lang/String;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    const/4 v0, -0x1

    .line 693
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget v0, v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    goto :goto_0
.end method

.method public final a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i()V

    .line 205
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 208
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->d()V

    .line 223
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->BY_REQUEST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 5
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 283
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "MqttConnectionManager"

    const-string v1, "Connection attempt disabled by service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->KICK_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 309
    :goto_0
    return-void

    .line 292
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 294
    if-nez v0, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->p()V

    .line 301
    :cond_1
    :goto_1
    const-string v1, "MqttConnectionManager"

    const-string v2, "kick called when connection exists: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    .line 297
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method

.method public final a(Lcom/facebook/mqttlite/SyncQueueTrackerImpl;)V
    .locals 4

    .prologue
    .line 651
    const-string v0, "MqttConnectionManager"

    const-string v1, "setSyncQueueTracker %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->w:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

    .line 653
    return-void
.end method

.method public final a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;)V
    .locals 5

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    const-string v1, "MqttConnectionManager"

    const-string v2, "sendMqttHealthStats %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    :try_start_0
    const-string v1, "/mqtt_health_stats"

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;)I
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    const-string v0, "MqttConnectionManager"

    const-string v1, "Connection lost with reason %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const-string v0, ""

    .line 235
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 236
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/MqttException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection lost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Ljava/lang/Throwable;)V

    .line 243
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->a:[I

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    const-string v0, "MqttConnectionManager"

    const-string v1, "No more reconnect attempt for %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_ERROR_SSL_CLOCK_SKEW:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    if-ne v0, v1, :cond_1

    .line 266
    iput-boolean v7, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->E:Z

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 272
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->c()Z

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->t:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->z:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;->a(I)V

    .line 250
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 254
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->c()Z

    goto :goto_0

    .line 268
    :cond_1
    iput-boolean v6, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->E:Z

    goto :goto_1

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1102
    const-string v0, "MqttConnectionManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keepAliveIntervalSeconds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->C:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1105
    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {v0, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Ljava/io/PrintWriter;)V

    .line 1110
    :goto_0
    return-void

    .line 1108
    :cond_0
    const-string v0, "mMqttClient=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 947
    const-string v1, "MqttConnectionManager"

    const-string v2, "Subscribing to %s"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v1, v2, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    monitor-enter v4

    .line 950
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 951
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    iget-object v6, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_SUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-direct {v6, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 957
    goto :goto_0

    .line 958
    :cond_1
    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_UNSUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    iget-object v7, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    iget-object v6, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->SUBSCRIBED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-direct {v7, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    if-eqz v2, :cond_3

    .line 969
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->t()V

    .line 971
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 841
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->A:Z

    .line 842
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i()V

    .line 843
    return-void
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 605
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i()V

    .line 611
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_1

    .line 613
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 621
    if-nez v1, :cond_2

    .line 622
    const-string v1, "MqttConnectionManager"

    const-string v2, "Failed to initialize client."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :goto_0
    return v0

    .line 627
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 628
    const/4 v0, 0x1

    goto :goto_0

    .line 632
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(J)V

    .line 633
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v1

    const-string v1, "MqttConnectionManager"

    const-string v2, "Interrupted while waiting for connection establishment."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 638
    :catch_1
    move-exception v1

    .line 639
    const-string v2, "MqttConnectionManager"

    const-string v3, "Failed to connect."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :catch_2
    move-exception v1

    .line 642
    const-string v2, "MqttConnectionManager"

    const-string v3, "Connect call was cancelled."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 644
    :catch_3
    move-exception v1

    .line 645
    const-string v2, "MqttConnectionManager"

    const-string v3, "Connect call was timeout."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[BJ)Z
    .locals 7

    .prologue
    .line 889
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BJLcom/facebook/rti/mqtt/protocol/MqttPublishListener;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;[BJLcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)Z
    .locals 9
    .param p5    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 909
    const-string v0, "MqttConnectionManager"

    const-string v1, "publishAndWait"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v5, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLjava/lang/String;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    const/4 v0, 0x0

    .line 927
    :goto_0
    return v0

    .line 925
    :cond_0
    :try_start_0
    const-string v1, "MqttConnectionManager"

    const-string v2, "operation %s for topic %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(J)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 927
    const/4 v0, 0x1

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 930
    const-string v1, "MqttConnectionManager"

    const-string v2, "Publish failed topicName=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    throw v0

    .line 932
    :catch_1
    move-exception v0

    .line 934
    throw v0
.end method

.method final b()V
    .locals 6

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->x:I

    .line 436
    if-gez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 441
    if-eqz v1, :cond_0

    .line 447
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c()V

    goto :goto_0
.end method

.method final b(J)V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 975
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 977
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 978
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->STALED_CONNECTION:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)V

    .line 982
    :goto_0
    return-void

    .line 980
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a()V

    goto :goto_0
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1071
    const/4 v0, 0x0

    .line 1073
    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    monitor-enter v4

    .line 1074
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1075
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 1079
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    .line 1080
    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->b:[I

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1082
    :pswitch_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_UNSUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-direct {v3, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const/4 v0, 0x1

    move v3, v0

    .line 1088
    goto :goto_0

    .line 1090
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    if-eqz v3, :cond_2

    .line 1097
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u()V

    .line 1099
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 846
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->B:Z

    .line 847
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i()V

    .line 848
    return-void
.end method

.method final c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 457
    const-string v0, "MqttConnectionManager"

    const-string v1, "sendKeepAlive"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 462
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 464
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v0

    .line 466
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    .line 467
    sub-long v0, v2, v0

    .line 468
    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(JJ)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;)V
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 484
    :goto_1
    return-void

    .line 473
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->r()V
    :try_end_1
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    :try_start_2
    const-string v1, "MqttConnectionManager"

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->l:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->a()V

    .line 553
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->f()V

    .line 558
    .line 563
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->l:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->b()V

    .line 564
    .line 559
    return-void
.end method

.method final f()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->l:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->c()V

    .line 571
    return-void
.end method

.method public final g()Z
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v0

    return v0
.end method

.method final i()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->C:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->e()V

    .line 855
    :cond_0
    return-void
.end method

.method public final j()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 865
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->B:Z

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->p:I

    .line 873
    :goto_0
    const-string v1, "MqttConnectionManager"

    const-string v2, "Asking keepalive cycle of %d seconds. isPersistent:%b, isAppFg:%s, isScreenOn:%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->B:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->A:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    return v0

    .line 867
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->A:Z

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->a()I

    move-result v0

    goto :goto_0

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->n:Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 1394
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->x:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 1397
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->y:J

    return-wide v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 1400
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->E:Z

    return v0
.end method

.method public final n()J
    .locals 4

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1409
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v0

    .line 1411
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 1414
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a()Z

    move-result v0

    return v0
.end method

.method public final t()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 989
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 990
    iget-object v11, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    monitor-enter v11

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 992
    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_SUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 996
    :cond_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1059
    :goto_1
    return-void

    .line 1001
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->p:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    invoke-interface {v0, v10}, Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;->a(Ljava/util/List;)[B

    move-result-object v2

    .line 1003
    if-eqz v2, :cond_6

    .line 1005
    const-string v1, "/subscribe"

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v5, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLjava/lang/String;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :goto_2
    move v1, v0

    .line 1020
    :goto_3
    if-nez v1, :cond_5

    .line 1024
    :try_start_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1026
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1027
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    .line 1029
    :try_start_4
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->l()I

    move-result v2

    .line 1030
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v5

    iget v5, v5, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 1035
    invoke-virtual {v0, v2, v10}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(ILjava/util/List;)I
    :try_end_4
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1036
    const/4 v1, 0x1

    move v0, v1

    .line 1047
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1050
    :goto_5
    if-eqz v0, :cond_4

    .line 1051
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 1052
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->SUBSCRIBED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 1019
    :catch_0
    move-exception v0

    move v1, v9

    goto :goto_3

    :catch_1
    move-exception v0

    move v1, v9

    goto :goto_3

    .line 1037
    :catch_2
    move-exception v0

    .line 1038
    :try_start_6
    const-string v2, "MqttConnectionManager"

    const-string v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-direct {p0, v0, v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    move v0, v1

    goto :goto_4

    .line 1047
    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0

    .line 1059
    :cond_4
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v9

    goto/16 :goto_2
.end method

.method public final u()V
    .locals 7

    .prologue
    .line 1117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    monitor-enter v3

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1120
    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_UNSUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1124
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1125
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    :goto_1
    return-void

    .line 1129
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1130
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1131
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 1154
    :try_start_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1135
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->l()I

    move-result v1

    .line 1136
    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->m:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v6}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v6

    iget v6, v6, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    invoke-virtual {v4, v0, v5, v1, v6}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;II)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 1141
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(ILjava/util/List;)I

    .line 1142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1143
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->F:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    :try_start_5
    const-string v1, "MqttConnectionManager"

    const-string v2, "MqttException when unsubscribing"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;)Ljava/util/concurrent/Future;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1154
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1156
    monitor-exit v3

    goto :goto_1

    .line 1154
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final v()V
    .locals 10

    .prologue
    .line 1419
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1421
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1422
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->r:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;

    .line 1423
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget v4, v4, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    iget-object v5, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v5}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget-wide v8, v5, Lcom/facebook/rti/mqtt/manager/MqttOperation;->d:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(IJ)V

    .line 1426
    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1427
    if-nez v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1433
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method
