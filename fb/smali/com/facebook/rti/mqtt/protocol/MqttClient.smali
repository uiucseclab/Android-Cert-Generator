.class public Lcom/facebook/rti/mqtt/protocol/MqttClient;
.super Ljava/lang/Object;
.source "s_svc_ms"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:J

.field private G:Ljava/net/Socket;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private H:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private J:Ljava/lang/Thread;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private volatile K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public volatile L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

.field private final b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final c:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

.field private final d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field private final f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

.field private final g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field private final h:Lcom/facebook/rti/common/time/SystemClock;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private final j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

.field private final k:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

.field private final l:Ljava/util/concurrent/ScheduledExecutorService;

.field private final m:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

.field public final n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

.field private final o:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field private final p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

.field private final q:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field private final r:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

.field private final u:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final v:J

.field private w:Ljava/net/InetAddress;

.field private x:Ljava/net/InetAddress;

.field private volatile y:Landroid/net/NetworkInfo;

.field private volatile z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->PROCESSING_LASTACTIVE_PRESENCEINFO:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/time/SystemClock;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 6
    .param p20    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;",
            "Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;",
            "Lcom/facebook/rti/mqtt/protocol/MqttParameters;",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Lcom/facebook/rti/common/time/Clock;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/facebook/rti/mqtt/protocol/AddressResolver;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;",
            "Lcom/facebook/rti/common/fbtrace/FbTraceLogger;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlParameter;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->B:J

    .line 208
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->C:J

    .line 213
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->D:J

    .line 218
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->E:J

    .line 224
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->F:J

    .line 236
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->INIT:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    .line 262
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 263
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    .line 264
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 265
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 266
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 267
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 268
    iput-object p7, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h:Lcom/facebook/rti/common/time/SystemClock;

    .line 269
    iput-object p8, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i:Ljava/util/concurrent/ExecutorService;

    .line 270
    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->l:Ljava/util/concurrent/ScheduledExecutorService;

    .line 271
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    .line 272
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->o:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 273
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->n()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->v:J

    .line 274
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->k:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    .line 275
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->m:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    .line 276
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    .line 277
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    .line 278
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->q:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    .line 279
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->r:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 280
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->s:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 281
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->t:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    .line 282
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u:Ljava/util/concurrent/atomic/AtomicReference;

    .line 283
    return-void
.end method

.method private static a(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;",
            ")",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1638
    if-eqz p0, :cond_0

    .line 1639
    instance-of v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    if-eqz v0, :cond_0

    .line 1640
    check-cast p0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1643
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;Z)Lcom/facebook/rti/mqtt/protocol/ConnectResult;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 748
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->c(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 761
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->a()Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 779
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 782
    invoke-virtual {v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->CONNACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    if-eq v0, v1, :cond_0

    .line 783
    const-string v0, "MqttClient"

    const-string v1, "Received unexpected message type %s"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_INVALID_CONACK:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V

    .line 834
    :goto_0
    return-object v0

    .line 751
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 752
    const-string v0, "MqttClient"

    const-string v2, "Failed to send connect message"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECT_MESSAGE:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 762
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 763
    :try_start_2
    const-string v0, "MqttClient"

    const-string v2, "Read CONACK timeout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_MQTT_CONACK_TIMEOUT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    .line 765
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 766
    :try_start_3
    const-string v0, "MqttClient"

    const-string v2, "Failed to read connack message"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNACK_READ:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 779
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    .line 768
    :catch_3
    move-exception v0

    move-object v1, v0

    .line 769
    :try_start_4
    const-string v0, "MqttClient"

    const-string v2, "Failed to deserialize message"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNACK_READ:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 779
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    .line 771
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 772
    :try_start_5
    const-string v0, "MqttClient"

    const-string v2, "Got compression error on connect which doesn\'t use compression"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNACK_READ:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 779
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->CONNECT:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v4}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V

    move-object v0, v9

    .line 794
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    .line 795
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v1

    iget-byte v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    .line 796
    if-eqz v1, :cond_5

    .line 797
    const-string v0, "MqttClient"

    const-string v2, "MQTT Connection refused:%s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    const/16 v0, 0x11

    if-ne v1, v0, :cond_1

    .line 800
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_SERVER_SHEDDING_LOAD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 802
    :cond_1
    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    .line 803
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_NOT_AUTHORIZED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 805
    :cond_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    .line 808
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 811
    :cond_3
    const/16 v0, 0x13

    if-ne v1, v0, :cond_4

    .line 812
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_UNKNOWN_CONNECT_HASH:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 815
    :cond_4
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 818
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v2

    .line 819
    const-string v0, "MqttClient"

    const-string v1, "Connack payload: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    iget-object v0, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 823
    :cond_6
    sget-object v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->a:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    .line 830
    :goto_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v1, :cond_7

    .line 831
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->e:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 833
    :cond_7
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->f:I

    invoke-virtual {v1, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(I)V

    .line 834
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 825
    :cond_8
    new-instance v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    iget-object v1, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v4}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private a(Z)Lcom/facebook/rti/mqtt/protocol/ConnectResult;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 850
    const-string v0, "MqttClient"

    const-string v1, "Connecting"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a()Ljava/lang/String;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    .line 859
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->y:Landroid/net/NetworkInfo;

    .line 865
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 878
    :try_start_1
    invoke-direct {p0, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 891
    if-nez v3, :cond_0

    .line 892
    const-string v0, "MqttClient"

    const-string v1, "Socket Connection Failed."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 898
    :cond_0
    invoke-static {v3}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :try_start_2
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    new-instance v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;-><init>()V

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->o()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->k:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;ILcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;)V

    .line 907
    new-instance v4, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->o()I

    move-result v0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->k:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->o:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    invoke-direct {v4, v0, v5, v6}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;-><init>(ILcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 913
    :try_start_3
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v5, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->t:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-direct {v5, v6, v7}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;-><init>(Ljava/io/InputStream;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->a(Ljava/io/DataInputStream;)V

    .line 918
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->t:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-direct {v6, v7, v8}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/io/DataOutputStream;)V

    .line 926
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->l()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 928
    invoke-direct {p0, v4, v1, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;Z)Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    move-result-object v0

    .line 930
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 936
    :try_start_4
    iget-boolean v5, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v5, :cond_4

    .line 950
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 951
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 961
    :goto_0
    return-object v0

    .line 866
    :catch_0
    move-exception v1

    .line 867
    const-string v0, "MqttClient"

    const-string v2, "DNS Unresolved %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;->a()Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    sget-object v0, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->TimedOut:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;->a()Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_DNS_RESOLVE_TIMEOUT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 871
    :cond_1
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_DNS_UNRESOLVED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 879
    :catch_1
    move-exception v1

    .line 880
    :try_start_5
    instance-of v0, v1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_2

    .line 881
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_TIMEOUT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v3, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 892
    :goto_1
    const-string v1, "MqttClient"

    const-string v3, "Socket Connection Failed."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto :goto_0

    .line 882
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_ERROR_SSL_CLOCK_SKEW:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v3, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 891
    :catchall_0
    move-exception v0

    .line 892
    const-string v1, "MqttClient"

    const-string v3, "Socket Connection Failed."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    throw v0

    .line 887
    :cond_3
    :try_start_7
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_ERROR:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v3, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 931
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 932
    :try_start_8
    const-string v0, "MqttClient"

    const-string v4, "Failed to create IO stream"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CREATE_IOSTREAM:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v4, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 950
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 951
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto/16 :goto_0

    .line 938
    :cond_4
    :try_start_9
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 939
    :try_start_a
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 940
    const-string v0, "MqttClient"

    const-string v1, "Client is disconnected when setting up the connection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_UNEXPECTED_DISCONNECT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 950
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 951
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto/16 :goto_0

    .line 943
    :cond_5
    :try_start_b
    invoke-direct {p0, v3, v1, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Ljava/net/Socket;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;)V

    .line 944
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 953
    const-string v1, "MqttClient"

    const-string v3, "connectInternal final onConackReceived %s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->A:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

    aput-object v5, v4, v9

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->A:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->y()Z

    move-result v1

    if-nez v1, :cond_6

    .line 955
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->A:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

    invoke-virtual {v1}, Lcom/facebook/mqttlite/SyncQueueTrackerImpl;->b()V

    .line 957
    :cond_6
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->b(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto/16 :goto_0

    .line 944
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 947
    :catchall_2
    move-exception v0

    .line 950
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 951
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 957
    throw v0
.end method

.method private a(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    .locals 9
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    .line 734
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->v:J

    invoke-virtual {v0, p1, v4, v5}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Ljava/lang/String;J)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v4}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(JJJLandroid/net/NetworkInfo;)V

    .line 740
    return-object v0
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1678
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->a:Ljava/lang/String;

    .line 1679
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->x()Lcom/facebook/rti/common/thrift/MqttTopic;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/rti/common/thrift/MqttTopic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1680
    if-nez v1, :cond_1

    .line 1682
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1683
    if-eqz v1, :cond_0

    .line 1684
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    const-string v2, "mqtt_enum_topic"

    const-string v3, "Failed to decode topic %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1691
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(IILjava/net/InetAddress;Ljava/net/InetAddress;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;)Ljava/net/Socket;
    .locals 8

    .prologue
    .line 1127
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->l:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->p()I

    move-result v7

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IILcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    .line 1135
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->a()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Ljava/net/Socket;
    .locals 3
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->c()I

    move-result v1

    .line 1014
    invoke-direct {p0, p1, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;I)Ljava/net/Socket;

    move-result-object v0

    .line 1015
    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->d()Z

    move-result v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(ZLjava/lang/String;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;I)Ljava/net/Socket;

    move-result-object v0

    .line 1022
    :cond_0
    return-object v0
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;I)Ljava/net/Socket;
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->b()I

    move-result v0

    .line 1028
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq p2, v0, :cond_0

    if-lez v0, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->d()Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(ZLjava/lang/String;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;I)Ljava/net/Socket;

    move-result-object v0

    .line 1037
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;I)Ljava/net/Socket;
    .locals 19
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 1043
    const/4 v9, 0x0

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v16

    .line 1045
    const/4 v13, 0x0

    .line 1046
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;->UNKNOWN:Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;

    .line 1049
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->m()I

    move-result v2

    mul-int/lit16 v4, v2, 0x3e8

    .line 1050
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->f()Ljava/net/InetAddress;

    move-result-object v5

    .line 1051
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->g()Ljava/net/InetAddress;

    move-result-object v6

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v3, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->c(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1056
    if-eqz p1, :cond_5

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v10

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->a()Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    move-result-object v7

    .line 1060
    if-eqz v6, :cond_2

    move-object/from16 v2, p0

    move/from16 v3, p4

    .line 1061
    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(IILjava/net/InetAddress;Ljava/net/InetAddress;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 1067
    :try_start_1
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1068
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;->HE_PREFERRED:Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v8

    move-object v8, v3

    .line 1081
    :goto_0
    int-to-long v4, v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v3}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v14

    sub-long v10, v14, v10

    sub-long v11, v4, v10

    .line 1082
    const-wide/16 v4, 0x0

    cmp-long v3, v11, v4

    if-gtz v3, :cond_3

    .line 1083
    new-instance v3, Ljava/net/SocketTimeoutException;

    const-string v4, "connectSocket already timeout"

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1095
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v8

    move-object v8, v2

    move-object/from16 v2, v18

    .line 1096
    :goto_1
    :try_start_3
    const-string v4, "MqttClient"

    const-string v5, "Closing socket due to IOException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v2, v5, v6}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1099
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1102
    :catchall_0
    move-exception v4

    move-object v13, v4

    move-object v5, v2

    move-object v14, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v3, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v3}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    sub-long v3, v6, v16

    invoke-virtual {v8}, Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v12

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(JILjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V

    .line 1112
    if-eqz v14, :cond_0

    .line 1113
    invoke-virtual {v14}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->w:Ljava/net/InetAddress;

    .line 1114
    invoke-virtual {v14}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->x:Ljava/net/InetAddress;

    :cond_0
    throw v13

    .line 1070
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1071
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;->HE_NONPREFERRED:Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v2, v8

    move-object v8, v3

    goto/16 :goto_0

    .line 1075
    :cond_2
    :try_start_6
    move/from16 v0, p4

    invoke-static {v5, v0, v4, v7}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->a(Ljava/net/InetAddress;IILcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;)Ljava/net/Socket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 1077
    :try_start_7
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1078
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;->DEFAULT:Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v2, v8

    move-object v8, v3

    goto/16 :goto_0

    :cond_3
    move-object/from16 v9, p2

    move/from16 v10, p4

    .line 1085
    :try_start_8
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->a(Ljava/net/Socket;Ljava/lang/String;IJ)Ljava/net/Socket;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v3

    move-object v5, v2

    move-object v13, v3

    .line 1102
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v3, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v3}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    sub-long v3, v6, v16

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient$HappyEyeballsState;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v12

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(JILjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V

    .line 1112
    if-eqz v13, :cond_4

    .line 1113
    invoke-virtual {v13}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->w:Ljava/net/InetAddress;

    .line 1114
    invoke-virtual {v13}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->x:Ljava/net/InetAddress;

    .line 1118
    :cond_4
    return-object v13

    .line 1091
    :cond_5
    :try_start_9
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1092
    :try_start_a
    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->a(Ljava/net/Socket;)V

    .line 1093
    new-instance v3, Ljava/net/InetSocketAddress;

    move/from16 v0, p4

    invoke-direct {v3, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v5, v8

    move-object v13, v2

    goto :goto_3

    .line 1102
    :catchall_1
    move-exception v2

    move-object v5, v13

    move-object v14, v9

    move-object v13, v2

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    move-object v5, v13

    move-object v14, v3

    move-object v13, v2

    goto/16 :goto_2

    :catchall_3
    move-exception v3

    move-object v5, v13

    move-object v14, v8

    move-object v13, v3

    move-object v8, v2

    goto/16 :goto_2

    :catchall_4
    move-exception v3

    move-object v5, v13

    move-object v14, v2

    move-object v13, v3

    goto/16 :goto_2

    :catchall_5
    move-exception v2

    move-object v5, v13

    move-object v14, v3

    move-object v13, v2

    goto/16 :goto_2

    .line 1095
    :catch_1
    move-exception v2

    move-object v3, v9

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_1

    :catch_3
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_1

    :cond_6
    move-object v2, v8

    move-object v8, v3

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    .locals 3
    .param p3    # Ljava/lang/Throwable;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 543
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V

    const v2, -0x57d69a01

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 558
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->a:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 1366
    const-string v0, "MqttClient"

    const-string v1, "Acknowledging %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;ILjava/lang/Object;)V

    const v2, 0x47b90b1c

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1375
    return-void
.end method

.method static synthetic a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p8}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1549
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGREQ:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 1550
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {v1, v0, v2, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1551
    invoke-direct {p0, p1, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1553
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1554
    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a()V

    .line 1557
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;I)V
    .locals 3

    .prologue
    .line 1560
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 1561
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    .line 1563
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    invoke-direct {v2, v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;)V

    .line 1564
    invoke-direct {p0, p1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1566
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1567
    if-eqz v0, :cond_0

    .line 1568
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;I)V

    .line 1570
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Z)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x14

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1401
    const-string v0, "MqttClient"

    const-string v1, "Sending connect message with keepalive interval at %d seconds"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 1408
    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1413
    :cond_0
    if-eqz p3, :cond_4

    .line 1414
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->j()Lcom/facebook/rti/mqtt/common/config/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v6

    .line 1420
    :goto_1
    new-instance v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    invoke-direct {v4}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->f()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->b(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->v()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v1

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->b(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->u()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->b(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->c(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->d(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->c(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->s()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->c(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->q:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->e(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->f(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a(Ljava/util/List;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->d(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->z()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->d(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->i(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->j(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->k(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a(I)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v1

    .line 1441
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->r:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1442
    if-eqz v0, :cond_1

    .line 1443
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1445
    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->h(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 1449
    :cond_1
    if-eqz p3, :cond_2

    .line 1450
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->g(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 1453
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1454
    if-eqz v0, :cond_3

    .line 1455
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a(Ljava/lang/Integer;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 1456
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->b(Ljava/lang/Integer;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    .line 1459
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1460
    const-string v0, "MqttClient"

    const-string v1, "Connecting with %s"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v8, v3, v7

    invoke-static {v0, v1, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1462
    new-instance v9, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->CONNECT:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v9, v0}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 1463
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    const/4 v1, 0x3

    if-nez p3, :cond_5

    move v3, v2

    .line 172
    :goto_2
    const/4 v11, 0x1

    move v4, v11

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->k()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;-><init>(IZZZI)V

    .line 1470
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1473
    :goto_3
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    if-eqz p3, :cond_7

    :goto_4
    invoke-direct {v2, v1, v8, v6}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    invoke-direct {v1, v9, v0, v2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;)V

    .line 1480
    invoke-direct {p0, p1, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1481
    return-void

    .line 1417
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->j()Lcom/facebook/rti/mqtt/common/config/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a()Ljava/lang/String;

    move-result-object v1

    .line 1418
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move v3, v7

    .line 1463
    goto :goto_2

    .line 1470
    :cond_6
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1473
    :cond_7
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->f()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 7

    .prologue
    .line 1618
    if-nez p1, :cond_0

    .line 1621
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No message encoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1624
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1625
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->D:J

    .line 1626
    invoke-static {p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1627
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->m:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    const-string v2, "O %s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->b(Ljava/lang/String;)V

    .line 1633
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->D:J

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->F:J

    .line 1634
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->g()V

    .line 1635
    return-void

    .line 1627
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Ljava/lang/String;[BIIJ)V
    .locals 6

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->x()Lcom/facebook/rti/common/thrift/MqttTopic;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/rti/common/thrift/MqttTopic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    if-nez v0, :cond_3

    .line 1524
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1525
    if-eqz v0, :cond_0

    .line 1526
    const-string v1, "mqtt_enum_topic"

    const-string v2, "Failed to encode topic %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1532
    :cond_0
    :goto_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1, p4}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;I)V

    .line 1533
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    invoke-direct {v1, p2, p5}, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;-><init>(Ljava/lang/String;I)V

    .line 1534
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    invoke-direct {v2, v0, v1, p3}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;[B)V

    .line 1535
    invoke-direct {p0, p1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1537
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    sub-long/2addr v0, p6

    .line 1539
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f(J)V

    .line 1542
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1543
    if-eqz v0, :cond_2

    .line 1544
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;I)V

    .line 1546
    :cond_2
    return-void

    :cond_3
    move-object p2, v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1485
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 1487
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, p3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    .line 1488
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    invoke-direct {v2, p2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    .line 1489
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;)V

    .line 1491
    invoke-direct {p0, p1, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1493
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1494
    if-eqz v0, :cond_0

    .line 1495
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;I)V

    .line 1497
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V
    .locals 12
    .param p5    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1271
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    invoke-interface {v2, p1, p2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->b(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v10

    .line 1273
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u()V

    .line 1274
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1275
    if-eqz p5, :cond_0

    .line 1276
    invoke-interface/range {p5 .. p5}, Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;->b()V

    .line 1277
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v3, 0x0

    const-string v4, "not_connected"

    invoke-interface {v2, v10, v3, v4}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->b(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    const-string v2, "/t_sm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v2, :cond_4

    .line 1283
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1284
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    :goto_1
    move-object/from16 v0, p8

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1286
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1287
    if-eqz v2, :cond_0

    .line 1288
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->REF_CODE_EXPIRED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v3, v4}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    move/from16 v0, p4

    invoke-virtual {v2, v0, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1302
    :catch_0
    move-exception v2

    .line 1303
    const-string v3, "MqttClient"

    const-string v4, "Caught exception trying to publish"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    invoke-static {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    move-result-object v3

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {p0, v3, v4, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V

    .line 1308
    if-eqz p5, :cond_2

    .line 1309
    invoke-interface/range {p5 .. p5}, Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;->b()V

    .line 1311
    :cond_2
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "publish_exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v10, v4, v2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->b(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_0

    .line 1284
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1296
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Ljava/lang/String;[BIIJ)V

    .line 1298
    if-eqz p5, :cond_5

    .line 1299
    invoke-interface/range {p5 .. p5}, Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;->a()V

    .line 1301
    :cond_5
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v10, v3, v4}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->b(Ljava/lang/Object;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/net/Socket;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->G:Ljava/net/Socket;

    .line 1002
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    .line 1003
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->H:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    .line 1004
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->o()V

    .line 1005
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1006
    return-void
.end method

.method private b(J)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    .line 1223
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1224
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1228
    :goto_0
    return-object v0

    .line 1227
    :cond_0
    sub-long/2addr v0, p1

    .line 1228
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1501
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 1502
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, p3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    .line 1503
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    invoke-direct {v2, p2}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;-><init>(Ljava/util/List;)V

    .line 1504
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;)V

    .line 1506
    invoke-direct {p0, p1, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 1508
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1509
    if-eqz v0, :cond_0

    .line 1510
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;I)V

    .line 1512
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    const-string v0, "MqttClient"

    const-string v1, "Socket disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    .line 348
    instance-of v3, p1, Ljava/util/concurrent/TimeoutException;

    if-nez v3, :cond_0

    instance-of v3, p1, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_2

    .line 349
    :cond_0
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->READ_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    .line 361
    :goto_0
    move-object v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->NETWORK_THREAD_LOOP:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V

    .line 675
    :cond_1
    return-void

    .line 350
    :cond_2
    instance-of v3, p1, Ljava/io/EOFException;

    if-eqz v3, :cond_3

    .line 351
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->READ_EOF:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 352
    :cond_3
    instance-of v3, p1, Ljava/net/SocketException;

    if-eqz v3, :cond_4

    .line 353
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->READ_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 354
    :cond_4
    instance-of v3, p1, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_5

    .line 355
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->READ_SSL:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 356
    :cond_5
    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_6

    .line 357
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->READ_IO:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 358
    :cond_6
    instance-of v3, p1, Ljava/util/zip/DataFormatException;

    if-eqz v3, :cond_7

    .line 359
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->READ_FORMAT:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 361
    :cond_7
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->READ_MISC:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 965
    if-nez p0, :cond_1

    .line 981
    :cond_0
    :goto_0
    return v0

    .line 969
    :cond_1
    const-string v1, "Could not validate certificate: current time"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    const-string v1, "validation time: Thu Aug 28"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "validation time: Wed Aug 27"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1698
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1712
    :goto_0
    return-object v0

    .line 1703
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1707
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->f()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v1, v0

    .line 1709
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 1710
    shl-int/lit8 v1, v1, 0x1

    aget-byte v4, v3, v0

    add-int/2addr v1, v4

    .line 1709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1705
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1712
    :cond_1
    mul-int v0, v2, v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private c(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1668
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1669
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 1671
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1673
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N/A"

    goto :goto_0
.end method

.method private declared-synchronized m()Z
    .locals 2

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->INIT:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

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

.method private declared-synchronized n()V
    .locals 1

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()V
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized p()V
    .locals 1

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 680
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->F:J

    .line 683
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->q:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->d()Ljava/lang/String;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 685
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Z)Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    move-result-object v0

    .line 686
    iget-boolean v1, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->a:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->b:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->b:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_UNKNOWN_CONNECT_HASH:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->b:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    if-ne v1, v2, :cond_1

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->q:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->e()V

    .line 695
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Z)Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    move-result-object v0

    .line 697
    iget-boolean v1, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->a:Z

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->q:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->w()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->a(Ljava/lang/String;)V

    :cond_2
    move-object v13, v0

    .line 702
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-boolean v2, v13, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->a:Z

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v8

    sub-long v3, v8, v6

    iget-object v0, v13, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->b:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v13, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->b:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    iget-object v6, v13, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->c:Lcom/facebook/rti/common/guavalite/base/Optional;

    iget-object v7, v13, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->d:Lcom/facebook/rti/common/guavalite/base/Optional;

    iget-wide v8, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual/range {v1 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(ZJLjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V

    .line 711
    iget-boolean v0, v13, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->a:Z

    if-eqz v0, :cond_5

    .line 712
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->B:J

    .line 719
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 720
    if-eqz v0, :cond_4

    .line 721
    iget-boolean v1, v13, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->a:Z

    if-eqz v1, :cond_6

    .line 722
    invoke-virtual {v0, v13}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    .line 727
    :cond_4
    :goto_2
    return-void

    .line 715
    :cond_5
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->s()V

    goto :goto_1

    .line 724
    :cond_6
    invoke-virtual {v0, v13}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->b(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    goto :goto_2

    :cond_7
    move-object v0, v5

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 986
    const-string v0, "MqttClient"

    const-string v1, "Cleaning up connection failure."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->G:Ljava/net/Socket;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 988
    monitor-enter p0

    .line 989
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->G:Ljava/net/Socket;

    .line 990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->H:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    .line 992
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p()V

    .line 993
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 994
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->l()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(J)V

    .line 1335
    return-void
.end method

.method private v()J
    .locals 5

    .prologue
    .line 1577
    const-wide/16 v0, 0x0

    .line 1578
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 1579
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v0

    or-long/2addr v0, v2

    move-wide v2, v0

    .line 1580
    goto :goto_0

    .line 1582
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->EXACT_KEEPALIVE:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v0

    or-long/2addr v0, v2

    .line 1584
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1585
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->DELTA_SENT_MESSAGE_ENABLED:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 1588
    :cond_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->x()Lcom/facebook/rti/common/thrift/MqttTopic;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/rti/common/thrift/MqttTopic;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1589
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->USE_ENUM_TOPIC:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 1592
    :cond_2
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->y()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1593
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->SUPPRESS_GETDIFF_IN_CONNECT:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->getMask()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 1596
    :cond_3
    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 419
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 420
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient$2;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V

    const v2, 0x59259113

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    monitor-exit p0

    return p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)I
    .locals 12
    .param p5    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 474
    :cond_0
    :try_start_1
    const-string v0, "MqttClient"

    const-string v1, "Publishing on topic %s qos %d id %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget v4, p3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->mValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 478
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V

    const v2, -0x4c4a5a76

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    monitor-exit p0

    return p4
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->x:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "Remote:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->x:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->w:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    .line 292
    const-string v1, "Local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->w:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;
    .locals 2
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
    .line 526
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->DISCONNECT:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Exception;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->OPERATION_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->TIMEOUT:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 7

    .prologue
    .line 1345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    .line 1347
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1349
    sub-long v2, p1, v2

    .line 1351
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 1356
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1358
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/facebook/mqttlite/SyncQueueTrackerImpl;)V
    .locals 4

    .prologue
    .line 406
    const-string v0, "MqttClient"

    const-string v1, "setSyncQueueTracker %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->A:Lcom/facebook/mqttlite/SyncQueueTrackerImpl;

    .line 408
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->o:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    invoke-interface {v0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;->a(Lcom/facebook/mqttlite/SyncQueueTrackerImpl;)V

    .line 409
    return-void
.end method

.method public final a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;)V
    .locals 0
    .param p1    # Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 350
    return-void
.end method

.method public final declared-synchronized a(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 1658
    monitor-enter p0

    :try_start_0
    const-string v0, "MqttClient:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastMessageSent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->D:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastMessageReceived="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->E:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectionEstablished="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->B:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastPing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->C:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "peer="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->G:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->G:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    monitor-exit p0

    return-void

    .line 1664
    :cond_0
    :try_start_1
    const-string v0, "N/A"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1233
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u()V

    .line 1234
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    const-string v1, "MqttClient"

    const-string v2, "Caught exception trying to subscribe"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->SUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized b(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 444
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 445
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V

    const v2, 0x9fc862f

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    monitor-exit p0

    return p1
.end method

.method public final declared-synchronized b()V
    .locals 5

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to connect on used client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n()V

    .line 305
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->h()V

    .line 310
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 311
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    const-string v2, "MqttClient Network Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->J:Ljava/lang/Thread;

    .line 340
    const-string v0, "MqttClient"

    const-string v1, "Set MqttClient thread priority to %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->r()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->J:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 345
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->J:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit p0

    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1379
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v1, 0x0

    const-string v2, "not_connected"

    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 1394
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;I)V

    .line 1384
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->a(Ljava/lang/Object;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1385
    :catch_0
    move-exception v0

    .line 1386
    const-string v1, "MqttClient"

    const-string v2, "Caught exception trying to send PUBACK"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->PUBACK:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V

    .line 1391
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "puback_exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, v4, v0}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V
    .locals 13
    .param p3    # Ljava/lang/Throwable;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1146
    const-string v0, "MqttClient"

    const-string v1, "Disconnecting %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->g()V

    .line 1152
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1153
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1198
    :goto_0
    return-void

    .line 1157
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->G:Ljava/net/Socket;

    .line 1158
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 1159
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->G:Ljava/net/Socket;

    .line 1160
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->J:Ljava/lang/Thread;

    .line 1161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->H:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    .line 1162
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    .line 1163
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p()V

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1165
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1168
    :try_start_3
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)V

    .line 1169
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v3}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->c(J)V

    .line 1171
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 1173
    if-eqz v1, :cond_1

    .line 1174
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;)V

    .line 1177
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->B:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->C:J

    invoke-direct {p0, v4, v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->D:J

    invoke-direct {p0, v4, v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    iget-wide v6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->E:J

    invoke-direct {p0, v6, v7}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(J)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->b(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v7

    iget-wide v8, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->j()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->h()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual/range {v1 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V

    .line 1188
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->B:J

    .line 1189
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->C:J

    .line 1190
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->D:J

    .line 1191
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->E:J

    .line 1192
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->F:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1197
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto/16 :goto_0

    .line 1165
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1197
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method

.method public final b(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1249
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->u()V

    .line 1250
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    const-string v1, "MqttClient"

    const-string v2, "Caught exception trying to unsubscribe"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1256
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->UNSUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 2

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

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

.method public final declared-synchronized e()Z
    .locals 2

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

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

.method public final declared-synchronized f()Z
    .locals 2

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

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

.method public final declared-synchronized g()J
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->F:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->y:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->z:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized k()V
    .locals 3

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttException;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 507
    :cond_0
    :try_start_1
    const-string v0, "MqttClient"

    const-string v1, "Sending ping request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 511
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$5;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient$5;-><init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    const v2, 0x535f92ef

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    monitor-exit p0

    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->s:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 562
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->r()V

    .line 566
    :goto_0
    monitor-enter p0

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    :goto_1
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p()V

    .line 664
    const-string v0, "MqttClient"

    const-string v1, "MQTT network thread exiting"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    return-void

    .line 570
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->H:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    .line 571
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :try_start_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 579
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->a()Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 591
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 594
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    .line 595
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    .line 596
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v5

    .line 597
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->a:[I

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    .line 641
    const-string v0, "MqttClient"

    const-string v2, "MQTT Packet received: %s"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v5, v3, v12

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 647
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->E:J

    invoke-virtual {v4, v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->E:J

    .line 651
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->g()V

    .line 653
    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->m:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    const-string v2, "I %s%s"

    new-array v3, v14, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v3, v13

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->b(Ljava/lang/String;)V

    .line 660
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->E:J

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->F:J

    goto/16 :goto_0

    .line 571
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    :try_start_4
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 591
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto/16 :goto_1

    .line 583
    :catch_1
    move-exception v0

    .line 584
    :try_start_5
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 591
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto/16 :goto_1

    .line 586
    :catch_2
    move-exception v0

    .line 587
    :try_start_6
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 591
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0

    :pswitch_0
    move-object v0, v1

    .line 599
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    .line 600
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)Ljava/lang/String;

    move-result-object v6

    .line 601
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v7

    iget v7, v7, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->b:I

    .line 602
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v8

    iget v8, v8, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    .line 604
    iget-object v9, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->p:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->b()[B

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lcom/facebook/rti/common/fbtrace/FbTraceLogger;->a(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v9

    .line 608
    sget-object v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    iget v10, v10, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->mValue:I

    if-ne v8, v10, :cond_3

    .line 609
    invoke-direct {p0, v7, v9}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(ILjava/lang/Object;)V

    .line 612
    :cond_3
    const-string v9, "MqttClient"

    const-string v10, "MQTT Packet received: %s id:%d qos:%d topic:%s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v14

    const/4 v7, 0x3

    aput-object v6, v11, v7

    invoke-static {v9, v10, v11}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    if-eqz v4, :cond_1

    .line 620
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->b()[B

    move-result-object v0

    invoke-virtual {v4, v6, v0, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/String;[BJ)V

    goto/16 :goto_2

    :pswitch_1
    move-object v0, v1

    .line 630
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    .line 631
    const-string v2, "MqttClient"

    const-string v3, "MQTT Packet received: %s id:%d"

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v5, v6, v12

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v13

    invoke-static {v2, v3, v6}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 654
    :cond_4
    const-string v0, ""

    goto/16 :goto_3

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1318
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    const-string v0, "MqttClient"

    const-string v1, "Client not connected, not sending PINGREQ."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    :goto_0
    return-void

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->I:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;)V

    .line 1323
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->C:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    const-string v1, "MqttClient"

    const-string v2, "Caught exception trying to send PINGREQ"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->PING:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1602
    const-string v1, "[MqttClient ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1606
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    const-string v1, " +ssl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    :cond_0
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->K:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1611
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
