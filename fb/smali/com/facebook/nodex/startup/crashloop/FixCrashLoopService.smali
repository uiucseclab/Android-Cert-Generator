.class public Lcom/facebook/nodex/startup/crashloop/FixCrashLoopService;
.super Landroid/app/IntentService;
.source "page_timeline"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/nodex/startup/crashloop/FixCrashLoopService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/nodex/startup/crashloop/FixCrashLoopService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;->a()V

    .line 35
    return-void
.end method
