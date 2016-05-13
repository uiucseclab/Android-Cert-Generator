.class public Lcom/facebook/common/gcinitopt/GcOptimizer;
.super Ljava/lang/Object;
.source "writeEntry called with mMatchID = NO_MATCH"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string v0, "GcOptimizer"

    const-string v1, "Attempting to enable with null context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/facebook/common/gcinitopt/GcOptimizer;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const-string v0, "GcOptimizer"

    const-string v1, "Disabled: Not configured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string v0, "GcOptimizer"

    const-string v1, "Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "GcOptimizer"

    const-string v2, "Failed to setTargetHeapUtilization - aborting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-static {p0}, Lcom/facebook/common/gcinitopt/GcOptimizer;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 68
    if-eqz p1, :cond_1

    .line 69
    const-string v1, "GcOptimizer"

    const-string v2, "Configure for next cold start: enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "GcOptimizer"

    const-string v1, "Can\'t create file"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "GcOptimizer"

    const-string v2, "Can\'t create file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    :cond_1
    const-string v1, "GcOptimizer"

    const-string v2, "Configure for next cold start: disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "GcOptimizer"

    const-string v1, "Can\'t delete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "gcinitopt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-static {p0}, Lcom/facebook/common/gcinitopt/GcOptimizer;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
