.class Lcom/facebook/rti/mqtt/manager/MqttPushService$5;
.super Landroid/content/BroadcastReceiver;
.source "system_app_wtf"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$5;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x7d6b0539

    invoke-static {v5, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 504
    if-nez p2, :cond_0

    .line 505
    const-string v1, "MqttPushService"

    const-string v2, "null intent"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x1d04dcad

    invoke-static {v5, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 525
    :goto_0
    return-void

    .line 508
    :cond_0
    const-string v1, "MqttPushService"

    const-string v2, "intent received=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    const-string v1, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_OVERRIDE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/rti/common/guavalite/base/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 510
    const-string v1, "device_on_keepalive_s"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 512
    if-lez v1, :cond_2

    .line 513
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$5;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "device_on_keepalive_override"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 525
    :cond_1
    :goto_1
    const v1, 0x4fcac90a

    invoke-static {v1, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$5;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_on_keepalive_override"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1

    .line 521
    :cond_3
    const-string v1, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/rti/common/guavalite/base/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$5;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v1, p2}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method
