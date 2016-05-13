.class Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;
.super Ljava/lang/Object;
.source "sensor"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttOperation;

.field final synthetic b:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;->b:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;->b:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Lcom/facebook/rti/mqtt/manager/MqttOperation;I)V

    .line 113
    :cond_0
    return-void
.end method
