.class public Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;
.super Ljava/lang/Object;
.source "video_player_service_disconnected"

# interfaces
.implements Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;->a:Ljava/lang/String;

    const-string v1, "attempting to wipe shared preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Lcom/facebook/nobreak/NobreakUtils;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Ljava/io/File;

    const-string v2, "shared_prefs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    :cond_0
    if-nez v0, :cond_2

    .line 51
    sget-object v0, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;->a:Ljava/lang/String;

    const-string v1, "could not find shared preferences directory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-void

    .line 55
    :cond_2
    sget-object v1, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preferencesDir is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy$1;

    invoke-direct {v1, p0}, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy$1;-><init>(Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 68
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 71
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".possiblyCorrupted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 75
    :cond_3
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    sget-object v4, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "renamed file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_4
    sget-object v4, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to rename file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/app/Application;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 29
    instance-of v0, p2, Ljava/lang/NumberFormatException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    invoke-static {p2}, Lcom/facebook/nobreak/NobreakUtils;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.SharedPreferencesImpl.loadFromDiskLocked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;->a(Landroid/content/Context;)V

    .line 36
    :cond_1
    return-void
.end method
