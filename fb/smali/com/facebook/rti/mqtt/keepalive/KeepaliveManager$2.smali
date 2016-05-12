.class Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;
.super Landroid/content/BroadcastReceiver;
.source "sendMqttHealthStats %s"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x59489262

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/rti/common/guavalite/base/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x27da9fa2

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 150
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v0, "KeepaliveManager"

    const-string v2, "Keepalive alarm wake-up %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v3}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    iget-object v3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-wide v6, v3, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    add-long/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->a(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;J)J

    .line 128
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->n:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget v0, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->h:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 130
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-wide v4, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    const-wide/32 v6, 0xdbba0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-wide v4, v4, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->p:J

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v6, v6, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 148
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 150
    const v0, 0xc6671fa

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 136
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-wide v4, v4, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->p:J

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v6, v6, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v2, -0x4c789882

    invoke-static {v2, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    throw v0

    .line 142
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-wide v4, v4, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->p:J

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v6, v6, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
