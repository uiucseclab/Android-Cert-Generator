.class public abstract Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;
.super Landroid/app/Service;
.source "system_app_crash"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field private b:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->c:Z

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->c()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->c:Z

    .line 148
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract a(Landroid/content/Intent;II)V
.end method

.method protected a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected abstract b()Landroid/os/Looper;
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a()V

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x6c210b7    # 7.299925E-35f

    invoke-static {v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    const-string v1, "MqttBackgroundService"

    const-string v2, "Creating service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->b()Landroid/os/Looper;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 101
    new-instance v2, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-direct {v2, p0, v1}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;-><init>(Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->b:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    .line 102
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->b:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->a()Z

    .line 106
    :goto_0
    const v1, -0x2958358e

    invoke-static {v1, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->d(II)V

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0xa872be7

    invoke-static {v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->b:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->b:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->b()Z

    .line 115
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 116
    const v1, 0x1d3b73e6

    invoke-static {v1, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->d(II)V

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->d()V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->onStartCommand(Landroid/content/Intent;II)I

    .line 131
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x418d1e3e

    invoke-static {v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->b:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->b:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->a(Landroid/content/Intent;II)Z

    .line 125
    :goto_0
    const/4 v1, 0x1

    const v2, -0x1aa87744

    invoke-static {v2, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->d(II)V

    return v1

    .line 123
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->a(Landroid/content/Intent;II)V

    goto :goto_0
.end method
