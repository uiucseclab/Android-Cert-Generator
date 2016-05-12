.class Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$2;
.super Ljava/lang/Object;
.source "seek_controller"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;

.field final synthetic b:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$2;->b:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$2;->b:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b(Lcom/facebook/rti/mqtt/manager/MqttOperation;)V

    .line 58
    return-void
.end method
