.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;
.super Ljava/lang/Object;
.source "target_index"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1273
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v0, v1, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 1282
    return-void

    .line 1281
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->o:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_DISCONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method
