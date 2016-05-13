.class public Lcom/facebook/nobreak/DiskFullExceptionRemedy;
.super Ljava/lang/Object;
.source "video_player_pause"

# interfaces
.implements Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/nobreak/DiskFullExceptionRemedy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nobreak/DiskFullExceptionRemedy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 23
    const-class v0, Landroid/database/sqlite/SQLiteException;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexExceptionUtil;->a(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    const-wide v0, 0x7fffffffffffffffL

    .line 26
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 32
    :goto_0
    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 33
    invoke-static {p1}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b(Landroid/content/Context;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    const-string v1, "nodex_cannot_run_fb_app_string"

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    const-string v1, "nodex_not_enough_space_runtime_string"

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->c(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->APP_SETTINGS:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void

    .line 29
    :catch_0
    move-exception v2

    sget-object v2, Lcom/facebook/nobreak/DiskFullExceptionRemedy;->a:Ljava/lang/String;

    const-string v3, "Error in calculating free space"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
