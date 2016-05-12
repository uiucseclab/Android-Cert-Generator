.class Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;
.super Ljava/lang/Object;
.source "sensor"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttOperation;

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttOperationManager;Lcom/facebook/rti/mqtt/manager/MqttOperation;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->c:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->a:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iput p3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->c:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->a:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperationManager$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(Lcom/facebook/rti/mqtt/manager/MqttOperation;I)V

    .line 87
    return-void
.end method
