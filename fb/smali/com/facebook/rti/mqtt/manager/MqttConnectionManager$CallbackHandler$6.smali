.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;
.super Ljava/lang/Object;
.source "target_index"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

.field final synthetic b:J

.field final synthetic c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;J)V
    .locals 1

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->a:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    iput-wide p3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1336
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v0, v1, :cond_0

    .line 1337
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 1338
    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->c:[I

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->a:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1353
    :goto_0
    const-string v1, "MqttConnectionManager"

    const-string v2, "messageReceived %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->a:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1356
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1364
    :cond_0
    :goto_1
    return-void

    .line 1342
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->a:Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 1347
    :pswitch_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 1359
    :cond_1
    const-string v1, "MqttConnectionManager"

    const-string v2, "operationId %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1362
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$6;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g:Lcom/facebook/rti/mqtt/manager/MqttOperationManager;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttOperationManager;->a(I)Lcom/facebook/rti/mqtt/manager/MqttOperation;

    goto :goto_1

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
