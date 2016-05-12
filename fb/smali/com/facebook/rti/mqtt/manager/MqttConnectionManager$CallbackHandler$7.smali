.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;
.super Ljava/lang/Object;
.source "target_index"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->d:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->d:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$7;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1383
    return-void
.end method
