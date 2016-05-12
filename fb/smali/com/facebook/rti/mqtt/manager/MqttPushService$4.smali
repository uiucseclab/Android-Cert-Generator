.class Lcom/facebook/rti/mqtt/manager/MqttPushService$4;
.super Landroid/content/BroadcastReceiver;
.source "system_app_wtf"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$4;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

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

    const v1, -0xc327081

    invoke-static {v5, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 474
    const-string v0, "MqttPushService"

    const-string v2, "Power Save Mode broadcast has been received"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    if-nez p2, :cond_0

    .line 477
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x28628618

    invoke-static {v5, v0, v2, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 495
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-static {v0, v2}, Lcom/facebook/rti/common/guavalite/base/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    const v0, 0x765e0a2e

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 485
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$4;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttPushService;->y:Landroid/os/PowerManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isPowerSaveMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 486
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$4;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttPushService;->y:Landroid/os/PowerManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$4;->a:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/manager/MqttPushService;->g:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-virtual {v2, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 495
    :goto_1
    const v0, 0x4f421571

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v2, "MqttPushService"

    const-string v3, "Method not found"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 490
    :catch_1
    move-exception v0

    .line 491
    const-string v2, "MqttPushService"

    const-string v3, "Illegal Access"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 492
    :catch_2
    move-exception v0

    .line 493
    const-string v2, "MqttPushService"

    const-string v3, "Invocation Target Exception"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
