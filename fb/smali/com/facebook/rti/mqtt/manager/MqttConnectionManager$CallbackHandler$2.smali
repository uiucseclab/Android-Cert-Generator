.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;
.super Ljava/lang/Object;
.source "target_index"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

.field final synthetic b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->b:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    .line 1238
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_SERVER_SHEDDING_LOAD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_NOT_AUTHORIZED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->h()V

    .line 1243
    :cond_1
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_NOT_AUTHORIZED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1244
    const-string v1, "MqttConnectionManager"

    const-string v2, "MQTT got authorization failure when connecting."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->q()V

    .line 1247
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v1, v2, :cond_4

    .line 1248
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->c()V

    .line 1251
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->e:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    if-eqz v1, :cond_3

    .line 1252
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->e:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->c()V

    .line 1255
    :cond_3
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    sget-object v2, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECT_FAILED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 1257
    :cond_4
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$2;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Ljava/lang/String;)V

    .line 1258
    return-void
.end method
