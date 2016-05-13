.class Lcom/facebook/rti/mqtt/protocol/MqttClient$6;
.super Ljava/lang/Object;
.source "s_svc_ms"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

.field final synthetic b:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->d:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->a:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->d:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->a:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->d:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->d:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method
