.class Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "snapshot_network_type"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x7b73f8dd

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 71
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x6c06c719

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 75
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v2, v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a(Landroid/net/NetworkInfo;)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "MqttNetworkManager"

    const-string v2, "Not rebroadcasting initial sticky broadcast"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const v0, 0x3541f103

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->k()V

    .line 83
    const v0, 0x3308dc3a

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0
.end method
