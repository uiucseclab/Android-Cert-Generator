.class Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides$1;
.super Landroid/content/BroadcastReceiver;
.source "smhd"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides$1;->a:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x59a691cb

    invoke-static {v7, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 46
    if-eqz p2, :cond_0

    const-string v1, "com.facebook.rti.mqtt.ACTION_ZR_SWITCH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "extra_mqtt_endpoint"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "extra_analytics_endpoint"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "ZeroRatingConnectionConfigOverrides"

    const-string v4, "broadcast received %s, %s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides$1;->a:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    .line 19
    iput-object v1, v3, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->d:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides$1;->a:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    .line 19
    iput-object v2, v1, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->e:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides$1;->a:Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->b:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->c()V

    .line 59
    :cond_0
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x2ffac15b

    invoke-static {v7, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
