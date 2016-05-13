.class public Lcom/facebook/nobreak/CrashCounterRemedy;
.super Ljava/lang/Object;
.source "video_player_service_reconnected"

# interfaces
.implements Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/nobreak/CrashCounterRemedy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nobreak/CrashCounterRemedy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->e()I

    move-result v0

    .line 50
    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    const-string v1, "clear_odex"

    invoke-virtual {p1, v1}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    sget-object v0, Lcom/facebook/nobreak/CrashCounterRemedy;->a:Ljava/lang/String;

    const-string v1, "Crash loop detected. Marking odex files as corrupted."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "clear_odex"

    invoke-virtual {p1, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->setRegenerateOnNextLoadHint(Landroid/content/Context;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    const-string v0, "crash_loop"

    invoke-virtual {p1, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/facebook/nobreak/CrashCounterRemedy;->a:Ljava/lang/String;

    const-string v1, "Crash loop detected. Applying CrashLoop fix."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, "crash_loop"

    invoke-virtual {p1, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/facebook/nodex/startup/crashloop/FixCrashLoopService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Application;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;

    invoke-direct {v0, p1}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a()V

    .line 36
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->c()V

    .line 38
    invoke-static {p1, v0}, Lcom/facebook/nobreak/CrashCounterRemedy;->a(Landroid/content/Context;Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;)V

    .line 40
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/facebook/nobreak/CrashCounterRemedy;->a:Ljava/lang/String;

    const-string v2, "Something went wrong while trying to report new crash to crash counter."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
