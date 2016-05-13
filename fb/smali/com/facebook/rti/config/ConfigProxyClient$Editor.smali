.class public final Lcom/facebook/rti/config/ConfigProxyClient$Editor;
.super Ljava/lang/Object;
.source "system_server_wtf"


# instance fields
.field final synthetic a:Lcom/facebook/rti/config/ConfigProxyClient;

.field private final b:Landroid/os/Bundle;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/config/ConfigProxyClient;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a:Lcom/facebook/rti/config/ConfigProxyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->b:Landroid/os/Bundle;

    .line 35
    iput-object p2, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->c:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/config/ConfigProxyClient$Editor;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)Lcom/facebook/rti/config/ConfigProxyClient$Editor;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.rti.config.ACTION_MODIFY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a:Lcom/facebook/rti/config/ConfigProxyClient;

    iget-object v2, v2, Lcom/facebook/rti/config/ConfigProxyClient;->b:Landroid/content/Context;

    const-class v3, Lcom/facebook/rti/config/ConfigProxyService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a:Lcom/facebook/rti/config/ConfigProxyClient;

    iget-object v2, v2, Lcom/facebook/rti/config/ConfigProxyClient;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TARGET_CONFIG"

    iget-object v3, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v2, p0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a:Lcom/facebook/rti/config/ConfigProxyClient;

    iget-object v2, v2, Lcom/facebook/rti/config/ConfigProxyClient;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    .line 85
    sget-object v1, Lcom/facebook/rti/config/ConfigProxyClient;->a:Ljava/lang/String;

    const-string v2, "Start service failed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
