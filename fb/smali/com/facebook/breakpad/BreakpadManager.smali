.class public Lcom/facebook/breakpad/BreakpadManager;
.super Ljava/lang/Object;
.source "zh_TW"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Breakpad not installed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 55
    const-class v1, Lcom/facebook/breakpad/BreakpadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "breakpad_static"

    .line 63
    :goto_0
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 64
    sput-object v0, Lcom/facebook/breakpad/BreakpadManager;->a:Ljava/lang/String;

    .line 67
    :cond_0
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->b:Ljava/io/File;

    if-nez v0, :cond_3

    .line 68
    const-string v0, "minidumps"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Breakpad init failed to create crash directory: minidumps"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 60
    :cond_1
    :try_start_1
    const-string v0, "breakpad"

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/breakpad/BreakpadManager;->install(Ljava/lang/String;)V

    .line 75
    sput-object v0, Lcom/facebook/breakpad/BreakpadManager;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_3
    monitor-exit v1

    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native crashThisProcess()V
.end method

.method public static native getMinidumpFlags()J
.end method

.method private static native install(Ljava/lang/String;)V
.end method

.method public static native setMinidumpFlags(J)V
.end method

.method public static native uninstall()V
.end method
