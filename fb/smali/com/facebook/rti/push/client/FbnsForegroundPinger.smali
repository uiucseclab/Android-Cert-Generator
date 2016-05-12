.class public Lcom/facebook/rti/push/client/FbnsForegroundPinger;
.super Ljava/lang/Object;
.source "surface_updated"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final c:Ljava/lang/Runnable;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/facebook/rti/push/client/FbnsClientWrapper;

.field private f:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/push/client/FbnsClientWrapper;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->d:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->e:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    .line 37
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 38
    new-instance v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/push/client/FbnsForegroundPinger$1;-><init>(Lcom/facebook/rti/push/client/FbnsForegroundPinger;)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->c:Ljava/lang/Runnable;

    .line 52
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->a:Ljava/lang/String;

    const-string v1, "start foreground ping."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->b()V

    .line 58
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 68
    sget-object v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->a:Ljava/lang/String;

    const-string v1, "stop foreground ping."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
