.class Lcom/facebook/rti/push/client/FbnsForegroundPinger$1;
.super Ljava/lang/Object;
.source "surface_updated"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/push/client/FbnsForegroundPinger;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/client/FbnsForegroundPinger;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger$1;->a:Lcom/facebook/rti/push/client/FbnsForegroundPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    sget-object v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->a:Ljava/lang/String;

    const-string v1, "invoke foreground ping."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger$1;->a:Lcom/facebook/rti/push/client/FbnsForegroundPinger;

    iget-object v0, v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->e:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    const-string v1, "Orca.PING"

    const-class v2, Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string v1, "caller"

    const-string v2, "FB_PING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger$1;->a:Lcom/facebook/rti/push/client/FbnsForegroundPinger;

    iget-object v1, v1, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->a:Ljava/lang/String;

    const-string v1, "Missing %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method
