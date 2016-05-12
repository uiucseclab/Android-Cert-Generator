.class final Lcom/crashlytics/android/internal/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/F;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->a(Landroid/app/Activity;)V

    .line 24
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->b(Landroid/app/Activity;)V

    .line 29
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->c(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->d(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->e(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->f(Landroid/app/Activity;)V

    .line 49
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->g(Landroid/app/Activity;)V

    .line 54
    return-void
.end method
