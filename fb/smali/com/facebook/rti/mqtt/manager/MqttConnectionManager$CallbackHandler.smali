.class public Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;
.super Ljava/lang/Object;
.source "target_index"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

.field public final b:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1165
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$5;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$5;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;)V

    const v2, 0x57baba05

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1329
    return-void
.end method

.method public final a(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(ILjava/lang/Throwable;)V

    .line 1390
    return-void
.end method

.method public final a(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 3
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectResult;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1169
    const-string v0, "MqttConnectionManager"

    const-string v1, "connectionEstablished"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    const v2, -0x74e0bf09

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1229
    return-void
.end method

.method public final a(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V
    .locals 4

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V

    const v2, -0x1a0e69cf

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1367
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1264
    const-string v0, "MqttConnectionManager"

    const-string v1, "connectionLost"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1269
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;)V

    const v2, -0x5801c283

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1285
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$4;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Ljava/lang/String;I)V

    const v2, 0x6937810a

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1316
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v2, 0x2b906798

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1385
    return-void
.end method

.method public final a(Ljava/lang/String;[BJ)V
    .locals 1

    .prologue
    .line 1294
    const-string v0, "/send_message_response"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/t_sm_rp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->d()V

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->e()V

    .line 1299
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Ljava/lang/String;[BJ)V

    .line 1300
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->d(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1374
    return-void
.end method

.method public final b(Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 3
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectResult;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1233
    const-string v0, "MqttConnectionManager"

    const-string v1, "connectionFailed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1234
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V

    const v2, 0x5bc5a082

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 1260
    return-void
.end method
