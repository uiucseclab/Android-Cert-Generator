.class public Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;
.super Ljava/lang/Object;
.source "vp9"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;

.field private static final b:[Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;


# instance fields
.field private final c:Landroid/app/Application;

.field private final d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/nobreak/CrashCounterRemedy;

    invoke-direct {v2}, Lcom/facebook/nobreak/CrashCounterRemedy;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;

    invoke-direct {v2}, Lcom/facebook/nobreak/FrameworkSharedPreferencesExceptionRemedy;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/facebook/nobreak/DiskFullExceptionRemedy;

    invoke-direct {v2}, Lcom/facebook/nobreak/DiskFullExceptionRemedy;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/facebook/nobreak/VerifyErrorRemedy;

    invoke-direct {v2}, Lcom/facebook/nobreak/VerifyErrorRemedy;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->b:[Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->c:Landroid/app/Application;

    .line 35
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 36
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 37
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->a:Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;

    invoke-direct {v0, p0}, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->a:Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;

    .line 44
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 49
    sget-object v1, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->b:[Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 50
    iget-object v4, p0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->c:Landroid/app/Application;

    invoke-interface {v3, v4, p2}, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;->a(Landroid/app/Application;Ljava/lang/Throwable;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
