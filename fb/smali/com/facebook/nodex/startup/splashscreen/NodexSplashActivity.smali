.class public Lcom/facebook/nodex/startup/splashscreen/NodexSplashActivity;
.super Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;
.source "output_shutdown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "nodex_splashscreen"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "progress_bar"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "login_fb_logo"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "progress_message"

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "nodex_upgrading_message_string"

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "nodex_main_app_loading_message_string"

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->b:Landroid/net/Uri;

    return-object v0
.end method

.method protected final i()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.facebook.katana.activity.FbMainTabActivity"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->Ping:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    invoke-super {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x5454f3f5

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 69
    invoke-static {}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a()Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexSplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->b(Landroid/content/Context;)V

    .line 71
    invoke-super {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x444ad7f9

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
