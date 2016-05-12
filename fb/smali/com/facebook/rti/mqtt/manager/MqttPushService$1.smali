.class Lcom/facebook/rti/mqtt/manager/MqttPushService$1;
.super Ljava/lang/Object;
.source "system_app_wtf"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 130
    const-string v0, "MqttPushService"

    const-string v1, "Screen on"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c()V

    .line 133
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/manager/MqttPushService;Z)V

    .line 134
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/manager/MqttPushService;Z)V

    .line 139
    return-void
.end method
