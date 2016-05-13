.class Lcom/facebook/rti/mqtt/manager/MqttPushService$6;
.super Ljava/lang/Object;
.source "system_app_wtf"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/rti/mqtt/manager/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;Z)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->c:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->a:Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->c:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    const-string v1, "/foreground_state"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->a:Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->b(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->c:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttPushService;->l:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v3

    iget v3, v3, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BJ)Z

    move-result v0

    .line 726
    const-string v1, "MqttPushService"

    const-string v2, "Publish /foreground_state succeed:%b, with payload:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->a:Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->c:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttPushService;->B:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$6;->b:Z

    invoke-virtual {v1, v2, v0}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    .line 742
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    const-string v1, "MqttPushService"

    const-string v2, "failed to publish foreground state"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 735
    :catch_1
    move-exception v0

    .line 736
    const-string v1, "MqttPushService"

    const-string v2, "failed to publish foreground state"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 737
    :catch_2
    move-exception v0

    .line 738
    const-string v1, "MqttPushService"

    const-string v2, "failed to publish foreground state"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 739
    :catch_3
    move-exception v0

    .line 740
    const-string v1, "MqttPushService"

    const-string v2, "failed to publish foreground state"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
