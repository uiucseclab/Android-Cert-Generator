.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$5;
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
    .line 1321
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$5;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$5;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$5;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v0, v1, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$5;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->p()V

    .line 1327
    :cond_0
    return-void
.end method
