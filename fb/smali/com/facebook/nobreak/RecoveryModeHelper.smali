.class public Lcom/facebook/nobreak/RecoveryModeHelper;
.super Ljava/lang/Object;
.source "writing raw dex file %s"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:Lcom/facebook/nobreak/RecoveryModeHelper;


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nobreak/RecoveryModeHelper;->a:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-direct {v0}, Lcom/facebook/nobreak/RecoveryModeHelper;-><init>()V

    sput-object v0, Lcom/facebook/nobreak/RecoveryModeHelper;->d:Lcom/facebook/nobreak/RecoveryModeHelper;

    return-void
.end method

.method constructor <init>()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->b:Z

    .line 52
    iput-boolean v0, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->c:Z

    .line 63
    return-void
.end method

.method public static final a()Lcom/facebook/nobreak/RecoveryModeHelper;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/facebook/nobreak/RecoveryModeHelper;->d:Lcom/facebook/nobreak/RecoveryModeHelper;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 124
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 125
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    const-string v0, "recovery"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "recovery_file"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/facebook/nobreak/RecoveryModeHelper;->a:Ljava/lang/String;

    const-string v1, "Perform recovery, wiping data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/facebook/nobreak/RecoveryModeHelper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/nobreak/RecoveryModeHelper$1;-><init>(Lcom/facebook/nobreak/RecoveryModeHelper;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/facebook/nobreak/RecoveryModeHelper$1;->start()V

    .line 148
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 69
    iget-boolean v0, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->b:Z

    if-eqz v0, :cond_0

    .line 70
    iget-boolean v0, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->c:Z

    .line 84
    :goto_0
    return v0

    .line 73
    :cond_0
    iput-boolean v6, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->b:Z

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/nobreak/RecoveryModeHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 79
    iput-boolean v6, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->c:Z

    .line 84
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->c:Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/facebook/nobreak/RecoveryModeHelper;->a:Ljava/lang/String;

    const-string v1, "Ending RecoveryMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/nobreak/RecoveryModeHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/nobreak/RecoveryModeHelper$MainProcessReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/nobreak/RecoveryModeHelper;->c:Z

    .line 117
    return-void
.end method
