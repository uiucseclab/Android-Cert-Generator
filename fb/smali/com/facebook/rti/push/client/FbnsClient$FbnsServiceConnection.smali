.class Lcom/facebook/rti/push/client/FbnsClient$FbnsServiceConnection;
.super Ljava/lang/Object;
.source "scheduleAlarm %s"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 298
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v1, "onServiceConnected %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 303
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v1, "onServiceDisconnected %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    return-void
.end method
