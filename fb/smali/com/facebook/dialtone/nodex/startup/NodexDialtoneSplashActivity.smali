.class public Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;
.super Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;
.source "pipe"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "dialtone_splash"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "progress_bar"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "login_fb_logo"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "progress_message"

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "nodex_upgrading_message_string"

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "nodex_main_app_loading_message_string"

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->b:Landroid/net/Uri;

    return-object v0
.end method

.method protected final i()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.facebook.katana.activity.FbMainTabActivity"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final j()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.HashSet._Constructor"
        }
    .end annotation

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
    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected final k()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->e:Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;->a()Z

    .line 74
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k()V

    .line 75
    return-void
.end method

.method protected final m()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m()Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "start"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const-string v1, "ref"

    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "follow_up_intent"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_1

    .line 101
    const-string v2, "follow_up_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_1
    return-object v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_to_dialtone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "switch_to_dialtone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v1, "ref"

    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_to_full_fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "switch_to_full_fb"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected final n()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->m()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/facebook/dialtone/nodex/startup/NodexDialtoneSplashActivity;->finish()V

    .line 111
    return-void
.end method
