.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$4;
.super Ljava/lang/Object;
.source "target_index"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$4;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$4;->a:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$4;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->d(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;)Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 1314
    return-void
.end method
