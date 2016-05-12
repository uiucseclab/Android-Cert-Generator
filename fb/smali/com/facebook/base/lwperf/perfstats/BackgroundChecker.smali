.class public final Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;
.super Ljava/lang/Object;
.source "vr_cast_button_click"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;


# instance fields
.field private volatile c:J

.field private volatile d:Z

.field private volatile e:Ljava/lang/Boolean;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;-><init>()V

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->b:Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->c:J

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d:Z

    .line 35
    return-void
.end method

.method public static a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->b:Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    return-object v0
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->g()Z

    move-result v0

    .line 84
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->h()J

    move-result-wide v2

    .line 86
    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d:Z

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->f:Z

    .line 91
    :cond_0
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->c:J

    .line 93
    return v0
.end method

.method private static g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cgroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/facebook/base/lwperf/perfstats/ProcReader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    if-nez v1, :cond_0

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    const-string v2, ":cpu:/apps/bg_non_interactive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 108
    sget-object v2, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a:Ljava/lang/String;

    const-string v3, "Runtime Exception reading proc to determine if in the background"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static h()J
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "checkIfStartupWasInTheBackground has already been called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->f()Z

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->e:Ljava/lang/Boolean;

    .line 48
    return v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->f:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->e()Z

    .line 61
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->f:Z

    goto :goto_0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->c:J

    .line 71
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->h()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->f()Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d:Z

    goto :goto_0
.end method
