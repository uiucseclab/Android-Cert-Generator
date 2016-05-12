.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;
.super Ljava/lang/Object;
.source "pitch"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 400
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v1, "InitRunnable.run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 403
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v3, v3, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    const v6, 0x3091437a

    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v3, v3, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    const v6, -0x5ed4abd6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v3}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Ljava/lang/String;)V

    .line 413
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-virtual {v2}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v2

    .line 414
    if-eqz v2, :cond_2

    .line 415
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Lcom/facebook/nodex/startup/splashscreen/NodexError;)V

    .line 458
    :goto_0
    return-void

    .line 419
    :cond_2
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v3}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    invoke-virtual {v2}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    invoke-virtual {v2}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    :cond_3
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    invoke-virtual {v2}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;->b()V

    .line 446
    :cond_4
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    sget-object v3, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->WaitForInit:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    invoke-virtual {v2, v3}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;)V

    .line 449
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;J)V

    const v0, 0xf2d55ce

    invoke-static {v2, v3, v0}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method
