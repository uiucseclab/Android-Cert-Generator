.class final Lcom/crashlytics/android/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/w;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/w;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;

    iget-object v0, v0, Lcom/crashlytics/android/internal/w;->a:Lcom/crashlytics/android/internal/v;

    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/v;->a(Lcom/crashlytics/android/internal/v;Landroid/app/Activity;)Lcom/crashlytics/android/internal/v;

    .line 310
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;

    iget-object v0, v0, Lcom/crashlytics/android/internal/w;->a:Lcom/crashlytics/android/internal/v;

    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/v;->a(Lcom/crashlytics/android/internal/v;Landroid/app/Activity;)Lcom/crashlytics/android/internal/v;

    .line 320
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;

    iget-object v0, v0, Lcom/crashlytics/android/internal/w;->a:Lcom/crashlytics/android/internal/v;

    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/v;->a(Lcom/crashlytics/android/internal/v;Landroid/app/Activity;)Lcom/crashlytics/android/internal/v;

    .line 315
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method
