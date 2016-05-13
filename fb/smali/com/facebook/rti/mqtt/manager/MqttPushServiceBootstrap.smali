.class public Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;
.super Ljava/lang/Object;
.source "spherical_video_viewport_change"


# static fields
.field public static A:Landroid/os/Handler;

.field public static B:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

.field public static C:Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

.field public static D:Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;

.field public static E:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

.field public static F:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

.field public static G:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

.field public static H:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

.field public static I:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

.field public static a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field public static b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field public static c:Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;

.field public static d:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

.field public static e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field public static f:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

.field public static g:Landroid/content/Context;

.field public static h:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

.field public static i:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field public static j:Ljava/util/concurrent/ExecutorService;

.field public static k:Lcom/facebook/rti/common/time/SystemClock;

.field public static l:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;
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

.field public static m:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

.field public static n:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

.field public static o:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

.field public static p:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

.field public static q:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

.field public static r:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

.field public static s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field public static t:Lcom/facebook/rti/mqtt/common/config/UserAgent;

.field public static u:Landroid/app/AlarmManager;

.field public static v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

.field public static w:Ljava/util/concurrent/ScheduledExecutorService;

.field public static x:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

.field public static y:Landroid/os/PowerManager;

.field public static z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(ZLcom/facebook/rti/common/util/NonInjectProvider;)I
    .locals 2

    .prologue
    .line 85
    .line 512
    if-eqz p0, :cond_1

    .line 513
    invoke-interface {p1}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 517
    :goto_0
    move v0, v1

    return v0

    .line 513
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 517
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/common/util/NonInjectProvider;Landroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Ljava/util/concurrent/atomic/AtomicReference;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V
    .locals 28
    .param p3    # Lcom/facebook/rti/mqtt/manager/MqttIdManager;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/rti/mqtt/credentials/MqttCredentials;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p25    # Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/manager/MqttPushService;",
            "Lcom/facebook/rti/mqtt/manager/MqttIdManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/manager/MqttIdManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/facebook/rti/common/fbtrace/FbTraceLogger;",
            "Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;",
            "Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Lcom/facebook/rti/common/thrift/MqttTopic;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlParameter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v10, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/facebook/rti/common/log/BLog;->a(I)V

    .line 158
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;)V

    .line 160
    new-instance v2, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->x:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    .line 163
    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 165
    const-string v3, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->u:Landroid/app/AlarmManager;

    .line 166
    const-string v3, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->y:Landroid/os/PowerManager;

    .line 167
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 171
    invoke-static {}, Lcom/facebook/rti/common/time/SystemClock;->b()Lcom/facebook/rti/common/time/SystemClock;

    move-result-object v3

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->k:Lcom/facebook/rti/common/time/SystemClock;

    .line 172
    invoke-static {}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    move-result-object v3

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 173
    new-instance v3, Lcom/facebook/rti/mqtt/common/config/UserAgent;

    invoke-interface/range {p1 .. p1}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v4}, Lcom/facebook/rti/mqtt/common/config/UserAgent;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->t:Lcom/facebook/rti/mqtt/common/config/UserAgent;

    .line 175
    new-instance v3, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->y:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;-><init>(Landroid/content/Context;Landroid/os/PowerManager;)V

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->i:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 176
    sput-object p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->g:Landroid/content/Context;

    .line 177
    invoke-static/range {p0 .. p0}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a(Landroid/content/Context;)Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    move-result-object v3

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->h:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    .line 178
    new-instance v3, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->g:Landroid/content/Context;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-direct {v3, v2, v4, v5}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;-><init>(Landroid/net/ConnectivityManager;Landroid/content/Context;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 182
    new-instance v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->y:Landroid/os/PowerManager;

    invoke-direct {v2, v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;-><init>(Landroid/os/PowerManager;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    .line 183
    new-instance v2, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->G:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    .line 185
    sget-object v2, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v3, "rti.mqtt.analytics"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 190
    sget-object v2, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v3, "rti.mqtt.gk"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 195
    sget-object v3, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v4, "rti.mqtt.stats"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 201
    sput-object p1, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    .line 202
    sput-object p7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 203
    new-instance v4, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)V

    sput-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->B:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    .line 206
    new-instance v4, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->C:Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

    .line 208
    new-instance v4, Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;

    invoke-direct {v4, v2}, Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->D:Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;

    .line 210
    new-instance v2, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->y:Landroid/os/PowerManager;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->G:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    invoke-interface/range {p19 .. p19}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;-><init>(Landroid/content/SharedPreferences;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Landroid/os/PowerManager;Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;Z)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->F:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

    .line 218
    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->B:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->a(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;)V

    .line 219
    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->C:Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->a(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;)V

    .line 220
    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->D:Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->a(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;)V

    .line 221
    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->a()V

    .line 223
    if-eqz p13, :cond_1

    move-object/from16 v5, p13

    .line 227
    :goto_0
    new-instance v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$1;

    invoke-direct {v4}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$1;-><init>()V

    .line 234
    new-instance v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$2;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttIdManager;)V

    .line 242
    new-instance v2, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->t:Lcom/facebook/rti/mqtt/common/config/UserAgent;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->b()Ljava/lang/String;

    move-result-object v10

    const-string v11, "725056107548211"

    const-string v12, "0e20c3123a90c76c02c901b7415ff67f"

    move-object/from16 v3, p0

    move-object v6, v13

    invoke-direct/range {v2 .. v12}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->d:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    .line 253
    new-instance v2, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->G:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    sget-object v8, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->d:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    sget-object v9, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 261
    new-instance v2, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->i:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    sget-object v8, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v9, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->k:Lcom/facebook/rti/common/time/SystemClock;

    move-object/from16 v3, p0

    move-object/from16 v5, v26

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/TelephonyManager;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/time/SystemClock;Lcom/facebook/rti/common/util/NonInjectProvider;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    .line 272
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v16

    .line 276
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 283
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 288
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v17

    .line 291
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v27

    .line 297
    new-instance v2, Lcom/facebook/rti/mqtt/common/executors/SerialExecutorService;

    invoke-direct {v2}, Lcom/facebook/rti/mqtt/common/executors/SerialExecutorService;-><init>()V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->j:Ljava/util/concurrent/ExecutorService;

    .line 301
    sput-object p11, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->A:Landroid/os/Handler;

    .line 310
    new-instance v2, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->A:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->r:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    .line 311
    new-instance v2, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->u:Landroid/app/AlarmManager;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->A:Landroid/os/Handler;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Landroid/app/AlarmManager;Landroid/os/Handler;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->w:Ljava/util/concurrent/ScheduledExecutorService;

    .line 320
    new-instance v2, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v3

    iget v3, v3, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->q:I

    invoke-direct {v2, v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;-><init>(I)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->q:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    .line 323
    new-instance v2, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    new-instance v3, Lcom/facebook/ssl/verification/FbHostnameVerifier;

    invoke-direct {v3}, Lcom/facebook/ssl/verification/FbHostnameVerifier;-><init>()V

    invoke-direct {v2, v3}, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;-><init>(Ljavax/net/ssl/HostnameVerifier;)V

    .line 324
    new-instance v15, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    new-instance v3, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;

    new-instance v4, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;-><init>(Lcom/facebook/ssl/BadVerifyInvocationNotifierImpl;)V

    invoke-direct {v3, v2, v4}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;-><init>(Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    invoke-direct {v15, v9, v3, v2}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;)V

    .line 329
    new-instance v18, Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/DNSResolver;

    invoke-direct {v2}, Lcom/facebook/rti/mqtt/protocol/DNSResolver;-><init>()V

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/protocol/DNSResolver;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;)V

    .line 335
    new-instance v23, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$3;

    invoke-direct/range {v23 .. v23}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$3;-><init>()V

    .line 343
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p10

    move-object/from16 v9, p22

    move/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p8

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v19, p6

    move-object/from16 v20, p5

    move-object/from16 v21, p12

    move-object/from16 v22, p18

    move-object/from16 v24, p25

    move-object/from16 v25, p24

    invoke-direct/range {v2 .. v25}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;-><init>(Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;Ljava/util/concurrent/atomic/AtomicReference;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->l:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;

    .line 437
    new-instance v2, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    if-eqz p8, :cond_2

    move-object/from16 v4, p8

    :goto_1
    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->r:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->w:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;-><init>(Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->m:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    .line 447
    new-instance v3, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->w:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast v2, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;-><init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V

    sput-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->n:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    .line 452
    new-instance v2, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->q:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->u:Landroid/app/AlarmManager;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->A:Landroid/os/Handler;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Landroid/app/AlarmManager;Landroid/os/Handler;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->o:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 459
    new-instance v2, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-direct {v2, v3, v4}, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;-><init>(Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->c:Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;

    .line 462
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->r:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v0}, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;-><init>(Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->H:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    .line 467
    new-instance v2, Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v3, p0

    move-object/from16 v7, v26

    move-object/from16 v8, p23

    move-object/from16 v9, v27

    invoke-direct/range {v2 .. v9}, Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Landroid/telephony/TelephonyManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->I:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    .line 475
    new-instance v2, Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v0, p23

    invoke-direct {v2, v3, v0}, Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;-><init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;)V

    .line 478
    new-instance v18, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->I:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    move-object/from16 v0, v18

    move-object/from16 v1, p23

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;-><init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;)V

    .line 482
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->l:Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->m:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    sget-object v10, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->n:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    sget-object v11, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->o:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    sget-object v12, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->q:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    sget-object v13, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v14, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v15, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->r:Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;

    sget-object v16, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v17, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    sget-object v19, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v22, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->H:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    sget-object v24, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->I:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v20, p5

    move-object/from16 v21, p20

    move-object/from16 v23, p21

    invoke-direct/range {v2 .. v24}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;)V

    sput-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->p:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    .line 506
    sput-object p14, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->E:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 507
    return-void

    .line 223
    :cond_1
    new-instance v5, Lcom/facebook/rti/common/analytics/DefaultAnalyticsSamplePolicy;

    invoke-virtual {v10}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->c()Z

    move-result v2

    invoke-direct {v5, v13, v2}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsSamplePolicy;-><init>(Landroid/content/SharedPreferences;Z)V

    goto/16 :goto_0

    .line 437
    :cond_2
    new-instance v4, Lcom/facebook/rti/mqtt/system/MqttDeviceScreenOnProvider;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->h:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->i:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/rti/mqtt/system/MqttDeviceScreenOnProvider;-><init>(Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V

    goto/16 :goto_1
.end method
