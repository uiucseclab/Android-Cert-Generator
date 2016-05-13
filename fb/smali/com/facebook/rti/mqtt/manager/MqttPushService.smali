.class public abstract Lcom/facebook/rti/mqtt/manager/MqttPushService;
.super Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;
.source "system_app_wtf"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private A:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

.field public B:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

.field private C:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;

.field private final D:Landroid/os/IBinder;

.field protected b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

.field protected d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field protected e:Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;

.field protected f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field public g:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field public h:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field protected i:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

.field protected j:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field protected k:Ljava/util/concurrent/ExecutorService;

.field public l:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field protected m:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

.field protected n:J

.field protected o:Z

.field protected p:J

.field public q:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

.field private r:Lcom/facebook/rti/mqtt/manager/ConnectionState;

.field public s:J

.field public t:J

.field private u:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

.field private v:Landroid/content/Context;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Landroid/content/BroadcastReceiver;

.field public y:Landroid/os/PowerManager;

.field private z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->o:Z

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->p:J

    .line 114
    sget-object v0, Lcom/facebook/rti/mqtt/manager/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    .line 126
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->C:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;

    .line 142
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->q:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    .line 446
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushService$3;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService$3;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->D:Landroid/os/IBinder;

    return-void
.end method

.method private static a(Landroid/os/Messenger;)V
    .locals 4
    .param p0    # Landroid/os/Messenger;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 793
    if-nez p0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 797
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 799
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 800
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    const-string v1, "MqttPushService"

    const-string v2, "Failed to send ack back"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Landroid/content/Context;Landroid/os/PowerManager;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;)V
    .locals 1

    .prologue
    .line 267
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    .line 268
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 269
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->e:Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;

    .line 270
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 271
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->g:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 272
    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 273
    iput-object p7, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->i:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    .line 274
    iput-object p8, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->j:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 275
    iput-object p9, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->k:Ljava/util/concurrent/ExecutorService;

    .line 276
    iput-object p10, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->l:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 277
    iput-object p11, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->u:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    .line 278
    iput-object p12, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->v:Landroid/content/Context;

    .line 279
    iput-object p13, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->y:Landroid/os/PowerManager;

    .line 280
    iput-object p14, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    .line 281
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->A:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    .line 282
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->m:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 283
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->B:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

    .line 284
    return-void
.end method

.method static synthetic a(Lcom/facebook/rti/mqtt/manager/MqttPushService;Z)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c(Z)V

    .line 689
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Z)V

    .line 690
    return-void
.end method

.method private c(Z)V
    .locals 5

    .prologue
    .line 693
    const-string v0, "MqttPushService"

    const-string v1, "Screen state changed %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->o:Z

    .line 695
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->p:J

    .line 696
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Z)V

    .line 697
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;
    .locals 4
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
    const/4 v3, 0x0

    .line 547
    const-string v0, "MqttPushService"

    const-string v1, "stop: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->a:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    .line 549
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    const-string v1, "MqttPushService"

    const-string v2, "Attempt to stop connection not active."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    :goto_0
    return-object v0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->l()V

    .line 555
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->f()V

    .line 556
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method protected a(Landroid/content/Intent;II)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v3, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_SERVICE_START:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 332
    const-string v2, "NULL"

    .line 333
    const/4 v3, 0x0

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 337
    const-string v1, "caller"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    const-string v1, "feature_flags"

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 343
    :cond_0
    if-ltz v1, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "features/flags"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "features/flags"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 349
    const-string v1, "MqttPushService"

    const-string v4, "onStart with flag=%d, id=%d, intent=%s, caller=%s, feature=%d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v1, v4, v5}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->g:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    iget-object v8, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v8}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g()J

    move-result-wide v8

    iget-object v10, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V

    .line 373
    if-lez v7, :cond_2

    and-int/lit8 v1, v7, 0x2

    if-nez v1, :cond_2

    .line 374
    const-string v0, "MqttPushService"

    const-string v1, "Ignore Intent. Running as shell service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_SERVICE_START:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 439
    :goto_0
    return-void

    .line 378
    :cond_2
    if-nez p1, :cond_4

    .line 379
    :try_start_1
    const-string v0, "MqttPushService"

    const-string v1, "Resuming connection after process restart."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->SERVICE_RESTART:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_SERVICE_START:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    .line 383
    :cond_4
    :try_start_2
    const-string v1, "Orca.START_IF_REGISTERED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 384
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    const-string v2, "Orca.START"

    move v1, v0

    .line 397
    :goto_2
    const-string v0, "Orca.STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "features/flags"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 401
    const-string v0, "MESSENGER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 402
    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SERVICE_STOP:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-virtual {p0, v2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 403
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->stopSelf()V

    .line 404
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Landroid/os/Messenger;)V

    .line 405
    if-eqz v1, :cond_3

    .line 406
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_SERVICE_START:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0

    .line 393
    :cond_5
    :try_start_3
    const-string v2, "Orca.STOP"

    move v1, v11

    goto :goto_2

    .line 408
    :cond_6
    const-string v0, "Orca.START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 409
    const-string v0, "MESSENGER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 410
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->SERVICE_START:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 411
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Landroid/os/Messenger;)V

    goto :goto_1

    .line 412
    :cond_7
    const-string v0, "Orca.PERSISTENT_KICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 415
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 417
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b()V

    goto/16 :goto_1

    .line 418
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 421
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->PERSISTENT_KICK:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    goto/16 :goto_1

    .line 425
    :cond_9
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->PERSISTENT_KICK:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    goto/16 :goto_1

    .line 427
    :cond_a
    const-string v0, "Orca.EXPIRE_CONNECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 428
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    const-string v1, "EXPIRED_SESSION"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b(J)V

    goto/16 :goto_1

    .line 429
    :cond_b
    const-string v0, "Orca.PING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 430
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c()V

    goto/16 :goto_1

    .line 432
    :cond_c
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_d
    move v1, v0

    goto/16 :goto_2
.end method

.method final a(Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    const-string v0, "MqttPushService"

    const-string v1, "Connection lost, Changing from %s to DISCONNECTED."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V

    .line 648
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/manager/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/manager/ConnectionState;)Z

    .line 649
    return-void
.end method

.method protected a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 459
    const-string v0, "MqttPushService"

    const-string v1, "start: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->k()V

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 466
    return-void
.end method

.method protected a(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V
    .locals 0
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 655
    return-void
.end method

.method protected final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 785
    const-string v0, "persistence=true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->s:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "networkChangedTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 790
    return-void

    .line 786
    :cond_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->s:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 808
    return-void
.end method

.method protected a(Ljava/lang/String;[BJ)V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j()I

    move-result v0

    .line 702
    invoke-virtual {p0, p1, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(ZI)V

    .line 703
    return-void
.end method

.method protected a(ZI)V
    .locals 5

    .prologue
    .line 708
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->a(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->a(Ljava/lang/Integer;)Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

    move-result-object v0

    .line 714
    const-string v1, "MqttPushService"

    const-string v2, "Publishing /foreground_state with payload:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;Z)V

    const v0, -0x55288915

    invoke-static {v1, v2, v0}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 744
    return-void
.end method

.method protected a(Lcom/facebook/rti/mqtt/manager/ConnectionState;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 752
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    if-ne p1, v1, :cond_0

    .line 775
    :goto_0
    return v0

    .line 756
    :cond_0
    const-string v1, "MqttPushService"

    const-string v3, "MQTT state transition from %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    aput-object v5, v4, v0

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    .line 758
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->u:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/ConnectionState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a(Ljava/lang/String;)V

    .line 761
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttPushService$7;->a:[I

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 770
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    neg-long v0, v0

    .line 773
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "mqtt/connect_state"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    move v0, v2

    .line 775
    goto :goto_0

    .line 763
    :pswitch_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->n:J

    goto :goto_1

    .line 766
    :pswitch_1
    const-wide/16 v0, 0x0

    .line 767
    goto :goto_1

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;
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
    .line 606
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 607
    sget-object v1, Lcom/facebook/rti/mqtt/manager/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    invoke-virtual {p0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/manager/ConnectionState;)Z

    .line 608
    return-object v0
.end method

.method protected final b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 578
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->d()V

    .line 580
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const-string v0, "MqttPushService"

    const-string v1, "kickConnection - Shouldn\'t be connected"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->KICK_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 600
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->s:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 588
    const-string v0, "MqttPushService"

    const-string v1, "kickConnection - Will reconnect because network changed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    :cond_1
    const-string v0, "MqttPushService"

    const-string v1, "kickConnection - connect"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 590
    :cond_2
    const-string v0, "MqttPushService"

    const-string v1, "kickConnection - Already connected"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    const-string v0, "MqttPushService"

    const-string v1, "kickConnection - Already connecting"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f()V

    .line 212
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->g()V

    .line 213
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->h()V

    .line 214
    return-void
.end method

.method protected final d()V
    .locals 11

    .prologue
    .line 304
    const-string v0, "MqttPushService"

    const-string v1, "Service destroyed (started=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->g:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    const-string v2, "SERVICE_DESTROY"

    const/4 v3, 0x0

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "features/flags"

    const/4 v8, -0x1

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g()J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V

    .line 316
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SERVICE_DESTROY:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->SERVICE_DESTROY:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    .line 321
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected abstract f()V
.end method

.method protected g()V
    .locals 18

    .prologue
    .line 226
    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->p:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->c:Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->h:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    sget-object v8, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->i:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    sget-object v9, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->j:Ljava/util/concurrent/ExecutorService;

    sget-object v10, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    sget-object v11, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->x:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    sget-object v12, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->g:Landroid/content/Context;

    sget-object v13, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->y:Landroid/os/PowerManager;

    sget-object v14, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v15, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->B:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    sget-object v16, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->E:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    sget-object v17, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->F:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Landroid/content/Context;Landroid/os/PowerManager;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;)V

    .line 244
    return-void
.end method

.method protected h()V
    .locals 6

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b(J)V

    .line 292
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mqtt/connect_state"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    neg-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mqtt/service_created"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v4}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(ZJJ)V

    .line 300
    return-void
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract j()Z
.end method

.method protected k()V
    .locals 4

    .prologue
    .line 471
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushService$4;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService$4;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->w:Landroid/content/BroadcastReceiver;

    .line 497
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->v:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->w:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushService$5;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService$5;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->x:Landroid/content/BroadcastReceiver;

    .line 527
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    const-string v1, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_OVERRIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v1, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->v:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 533
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->j:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c(Z)V

    .line 534
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->j:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->C:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->a(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;)V

    .line 536
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->q:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V

    .line 538
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->A:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->c()V

    .line 540
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mqtt/network_state"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 544
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->j:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->C:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->b(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;)V

    .line 564
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->q:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V

    .line 566
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->w:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->v:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->w:Landroid/content/BroadcastReceiver;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->x:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->v:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->A:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->d()V

    .line 575
    return-void
.end method

.method public m()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 612
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    const-string v1, "MqttPushService"

    const-string v2, "Service not started"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    :goto_0
    return v0

    .line 618
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 619
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->e:Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;

    invoke-virtual {v3, v2}, Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 620
    const-string v3, "MqttPushService"

    const-string v4, "Should not connect to network, reasons: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 624
    goto :goto_0
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 631
    const-string v0, "MqttPushService"

    const-string v1, "Connection established"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->n:J

    .line 633
    sget-object v0, Lcom/facebook/rti/mqtt/manager/ConnectionState;->CONNECTED:Lcom/facebook/rti/mqtt/manager/ConnectionState;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/manager/ConnectionState;)Z

    .line 634
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->m:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const-string v0, "MqttPushService"

    const-string v1, "Not authorize to bind the service intent %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :cond_0
    const-string v0, "MqttPushService"

    const-string v1, "onBind(%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->D:Landroid/os/IBinder;

    return-object v0
.end method

.method public p()V
    .locals 3
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 682
    const-string v0, "MqttPushService"

    const-string v1, "Delivering PushStateEvent.KEEPALIVE_SENT"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    return-void
.end method

.method protected abstract q()V
.end method

.method public final r()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 779
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v1, "rti.mqtt.mqtt_config"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
