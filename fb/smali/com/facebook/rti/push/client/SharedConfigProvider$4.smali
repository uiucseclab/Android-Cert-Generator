.class Lcom/facebook/rti/push/client/SharedConfigProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "subt_err"


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/util/concurrent/ScheduledFuture;

.field final synthetic c:Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;

.field final synthetic d:Lcom/facebook/rti/push/client/SharedConfigProvider;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/client/SharedConfigProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->d:Lcom/facebook/rti/push/client/SharedConfigProvider;

    iput-object p2, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->b:Ljava/util/concurrent/ScheduledFuture;

    iput-object p4, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x4e62c216    # 9.5109261E8f

    invoke-static {v4, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 156
    invoke-virtual {p0, v3}, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 157
    const-string v2, "/settings/mqtt/id/mqtt_device_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$4;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;

    invoke-virtual {v2, v1}, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a(Ljava/lang/String;)V

    .line 160
    :cond_0
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x326c459b

    invoke-static {v4, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
