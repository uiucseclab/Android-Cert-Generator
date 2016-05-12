.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;
.super Ljava/lang/Object;
.source "target_index"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 525
    const-string v0, "MqttConnectionManager"

    const-string v1, "trySendKeepAliveOrDisconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c()V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i()V

    .line 538
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->KEEPALIVE:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    goto :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$2;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->KEEPALIVE_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
