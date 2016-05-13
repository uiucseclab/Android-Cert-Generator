.class Lcom/facebook/rti/mqtt/protocol/MqttClient$4;
.super Ljava/lang/Object;
.source "s_svc_ms"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

.field final synthetic d:I

.field final synthetic e:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 479
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->h:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->b:[B

    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    iput p5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->d:I

    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->e:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

    iput-wide p7, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->f:J

    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->h:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->b:[B

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    iget v3, v3, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->mValue:I

    iget v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->d:I

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->e:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

    iget-wide v6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->f:J

    iget-object v8, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->a(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->h:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->h:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/MqttClient;->n:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_WRITE:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0
.end method
