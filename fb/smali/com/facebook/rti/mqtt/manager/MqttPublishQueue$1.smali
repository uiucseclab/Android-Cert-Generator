.class Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$1;
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
    .line 40
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$1;->b:Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$1;->a:Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$1;->a:Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 94
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 95
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Ljava/lang/Throwable;)V

    .line 96
    .line 44
    return-void
.end method
