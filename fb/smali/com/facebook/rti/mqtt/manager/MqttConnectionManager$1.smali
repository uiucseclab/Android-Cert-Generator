.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$1;
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
    .line 138
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$1;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    const-string v0, "MqttConnectionManager"

    const-string v1, "kick runnable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$1;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$1;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a()V

    .line 144
    return-void
.end method
