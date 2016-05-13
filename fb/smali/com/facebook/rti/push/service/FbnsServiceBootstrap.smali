.class public Lcom/facebook/rti/push/service/FbnsServiceBootstrap;
.super Ljava/lang/Object;
.source "stall_count"


# static fields
.field public static a:Lcom/facebook/rti/push/service/RegistrationState;

.field public static b:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

.field public static c:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

.field public static d:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

.field public static e:Lcom/facebook/rti/push/service/FbnsServiceIdManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/push/service/FbnsServiceIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/common/util/NonInjectProvider;ZLandroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Ljava/util/concurrent/atomic/AtomicReference;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V
    .locals 28
    .param p3    # Lcom/facebook/rti/push/service/FbnsServiceIdManager;
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
            "Lcom/facebook/rti/push/service/FbnsService;",
            "Lcom/facebook/rti/mqtt/manager/MqttIdManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/push/service/FbnsServiceIdManager;",
            "Lcom/facebook/rti/mqtt/credentials/MqttCredentials;",
            "Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;",
            "Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;",
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
            "Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;",
            "Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/rti/common/fbtrace/FbTraceLogger;",
            "Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlParameter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    sput-object p3, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->e:Lcom/facebook/rti/push/service/FbnsServiceIdManager;

    .line 65
    if-eqz p4, :cond_0

    move-object/from16 v5, p3

    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v6, p4

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p5

    move-object/from16 v10, p19

    move/from16 v11, p20

    move-object/from16 v12, p7

    move-object/from16 v13, p21

    move-object/from16 v14, p22

    move-object/from16 v15, p23

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v23, p16

    move-object/from16 v24, p17

    move-object/from16 v25, p18

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    invoke-static/range {v2 .. v27}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->a(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/common/util/NonInjectProvider;Landroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Ljava/util/concurrent/atomic/AtomicReference;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V

    .line 92
    new-instance v2, Lcom/facebook/rti/push/service/RegistrationState;

    sget-object v3, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v4, "rti.mqtt.registrations"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v5, "rti.mqtt.fbns_state"

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->k:Lcom/facebook/rti/common/time/SystemClock;

    new-instance v6, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rti/push/service/RegistrationState;-><init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Lcom/facebook/rti/common/time/SystemClock;Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;)V

    sput-object v2, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->a:Lcom/facebook/rti/push/service/RegistrationState;

    .line 102
    new-instance v2, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->u:Landroid/app/AlarmManager;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;)V

    sput-object v2, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->b:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    .line 108
    new-instance v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v3, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v5, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->d:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;)V

    sput-object v2, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->c:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    .line 114
    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->E:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    sput-object v2, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->d:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 115
    return-void

    .line 65
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
