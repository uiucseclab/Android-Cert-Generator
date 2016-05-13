.class Lcom/facebook/rti/mqtt/protocol/MqttClient$1;
.super Ljava/lang/Object;
.source "s_svc_ms"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->q()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 333
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 334
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 335
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 336
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->L:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a(Ljava/lang/Throwable;)V

    .line 323
    :cond_0
    const-string v1, "MqttClient"

    const-string v2, "Uncaught exception in networkThreadLoop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->UNKNOWN_RUNTIME:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->NETWORK_THREAD_LOOP:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 333
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 334
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 335
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 333
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_READ:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 334
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 335
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$1;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method
