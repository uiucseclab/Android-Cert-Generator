.class public Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "volume_increase"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics/appstatelogger/AppStateLogger;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    .line 196
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 200
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Landroid/app/Activity;I)V

    .line 205
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Landroid/app/Activity;I)V

    .line 230
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Landroid/app/Activity;I)V

    .line 220
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Landroid/app/Activity;I)V

    .line 215
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Landroid/app/Activity;I)V

    .line 210
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Landroid/app/Activity;I)V

    .line 225
    return-void
.end method
