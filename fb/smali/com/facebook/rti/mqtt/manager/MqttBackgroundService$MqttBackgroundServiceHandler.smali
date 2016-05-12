.class Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;
.super Landroid/os/Handler;
.source "system_app_crash"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    .line 35
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->b:Z

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 84
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Intent;II)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a()V

    .line 54
    :goto_0
    return-void

    .line 49
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a(Landroid/content/Intent;II)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->d()V

    .line 53
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->c()V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
