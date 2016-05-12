.class Lcom/facebook/rti/mqtt/protocol/MqttClient$3;
.super Ljava/lang/Object;
.source "s_svc_ms"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->c:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->a:Ljava/util/List;

    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->c:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->a:Ljava/util/List;

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->c:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->c:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method
