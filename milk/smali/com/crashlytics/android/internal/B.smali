.class public final Lcom/crashlytics/android/internal/B;
.super Lcom/crashlytics/android/internal/b;
.source "SourceFile"


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/m;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/m;)V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/B;->b:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/internal/B;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/crashlytics/android/internal/b;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 35
    instance-of v0, p1, Lcom/crashlytics/android/internal/t;

    if-eqz v0, :cond_1

    .line 36
    check-cast p1, Lcom/crashlytics/android/internal/t;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/crashlytics/android/internal/b;->c(Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/B;->b:Landroid/os/Handler;

    new-instance v1, Lcom/crashlytics/android/internal/C;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/internal/C;-><init>(Lcom/crashlytics/android/internal/B;Lcom/crashlytics/android/internal/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 37
    :cond_1
    instance-of v0, p1, Lcom/crashlytics/android/internal/s;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/crashlytics/android/internal/f;

    if-eqz v0, :cond_3

    .line 38
    :cond_2
    invoke-super {p0, p1}, Lcom/crashlytics/android/internal/b;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Posted argument must implement Event interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
