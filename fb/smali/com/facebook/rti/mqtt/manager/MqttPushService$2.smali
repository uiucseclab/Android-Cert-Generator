.class Lcom/facebook/rti/mqtt/manager/MqttPushService$2;
.super Ljava/lang/Object;
.source "system_app_wtf"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v4, v4, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v4}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(ZJJ)V

    .line 152
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->g:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(JLandroid/net/NetworkInfo;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b()Z

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mqtt/network_state"

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 162
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->f()J

    move-result-wide v2

    .line 164
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-wide v4, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->t:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    .line 69
    iput-wide v2, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->t:J

    .line 166
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttPushService;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    .line 69
    iput-wide v2, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->s:J

    .line 167
    const-string v1, "MqttPushService"

    const-string v2, "Network Connectivity Changed. becameConnected:%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->CONNECTIVITY_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->b(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    goto/16 :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$2;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->f()V

    goto/16 :goto_0
.end method
