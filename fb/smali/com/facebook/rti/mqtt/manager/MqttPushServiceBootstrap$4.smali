.class public final Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;
.super Ljava/lang/Object;
.source "spherical_video_viewport_change"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field final synthetic b:Lcom/facebook/rti/mqtt/manager/MqttPushService;

.field final synthetic c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field final synthetic d:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

.field final synthetic e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

.field final synthetic f:Lcom/facebook/rti/common/util/NonInjectProvider;

.field final synthetic g:Lcom/facebook/rti/common/util/NonInjectProvider;

.field final synthetic h:Z

.field final synthetic i:Lcom/facebook/rti/common/util/NonInjectProvider;

.field final synthetic j:Lcom/facebook/rti/common/util/NonInjectProvider;

.field final synthetic k:Lcom/facebook/rti/common/util/NonInjectProvider;

.field final synthetic l:Lcom/facebook/rti/common/util/NonInjectProvider;

.field final synthetic m:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

.field final synthetic n:Ljava/util/concurrent/ExecutorService;

.field final synthetic o:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic p:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

.field final synthetic q:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

.field final synthetic r:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field final synthetic s:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

.field final synthetic t:Lcom/facebook/rti/common/util/NonInjectProvider;

.field final synthetic u:Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;

.field final synthetic v:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

.field final synthetic w:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->b:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->d:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->f:Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object p7, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->g:Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-boolean p8, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->h:Z

    iput-object p9, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->i:Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object p10, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->j:Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object p11, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->k:Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object p12, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->l:Lcom/facebook/rti/common/util/NonInjectProvider;

    iput-object p13, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->m:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    iput-object p14, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->n:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->o:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->p:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->q:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->r:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->s:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->t:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->u:Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->v:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/facebook/rti/mqtt/protocol/MqttClient;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)",
            "Lcom/facebook/rti/mqtt/protocol/MqttClient;"
        }
    .end annotation

    .prologue
    .line 346
    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v18

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->e()V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->c()Ljava/lang/String;

    move-result-object v2

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v3}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->d()Ljava/lang/String;

    move-result-object v3

    .line 350
    const-string v4, "com.facebook.services"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->b:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->c()V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    sget-object v3, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->a:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-interface {v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->d:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    if-eqz v2, :cond_2

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->e()V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->c()Ljava/lang/String;

    move-result-object v2

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v3}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->d()Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->d:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->c()V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    sget-object v3, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->a:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-interface {v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    .line 369
    :cond_2
    const/4 v4, 0x0

    .line 370
    const/4 v3, 0x0

    .line 371
    const/16 v28, 0x0

    .line 372
    const/16 v29, 0x0

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->d:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->f:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v2}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v2, Lcom/facebook/rti/mqtt/capability/MqttCapability;->USER_AND_DEVICE_AUTH:Lcom/facebook/rti/mqtt/capability/MqttCapability;

    invoke-static {v2}, Lcom/facebook/rti/common/util/BitmaskEnumUtil;->a(Ljava/lang/Enum;)J

    move-result-wide v8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_5

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->d:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v2}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->a()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v2

    .line 378
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 379
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 380
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->b()Ljava/lang/String;

    move-result-object v2

    .line 382
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v4}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->c()Ljava/lang/String;

    move-result-object v28

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->e:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v4}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->d()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v27, v2

    move-object/from16 v26, v3

    .line 386
    :goto_1
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->b:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->d:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->e:I

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->y:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v7}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->a()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v8}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->c()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v9}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->d()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v10}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->a()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->t:Lcom/facebook/rti/mqtt/common/config/UserAgent;

    sget-object v12, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->q:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    move-object/from16 v0, v18

    iget v13, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->h:I

    move-object/from16 v0, v18

    iget v14, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->g:I

    move-object/from16 v0, v18

    iget v15, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->f:I

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->z:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->g:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->a(ZLcom/facebook/rti/common/util/NonInjectProvider;)I

    move-result v16

    move-object/from16 v0, v18

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->s:I

    move/from16 v17, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->u:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->f:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->h:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->i:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->j:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->j:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->k:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/facebook/rti/common/thrift/MqttTopic;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->l:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    move-object/from16 v20, p1

    invoke-direct/range {v2 .. v29}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;-><init>(Ljava/lang/String;IIZLcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/config/UserAgent;Lcom/facebook/rti/common/util/NonInjectProvider;IIIIIILcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/List;ZZZLcom/facebook/rti/common/thrift/MqttTopic;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/MqttClient;

    sget-object v4, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->m:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    sget-object v6, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v7, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v9, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->s:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    sget-object v10, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->k:Lcom/facebook/rti/common/time/SystemClock;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->n:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->o:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->p:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->q:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    sget-object v15, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->x:Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    sget-object v16, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->z:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->r:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->s:Lcom/facebook/rti/common/fbtrace/FbTraceLogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->t:Lcom/facebook/rti/common/util/NonInjectProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->u:Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->v:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->w:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v23, v0

    move-object v8, v2

    invoke-direct/range {v3 .. v23}, Lcom/facebook/rti/mqtt/protocol/MqttClient;-><init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/time/SystemClock;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v3

    .line 386
    :cond_3
    const/16 v23, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_0

    :cond_5
    move-object/from16 v27, v3

    move-object/from16 v26, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$4;->a(Ljava/util/List;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    move-result-object v0

    return-object v0
.end method
