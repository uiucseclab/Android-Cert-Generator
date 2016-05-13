.class public Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;
.super Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture;
.source "setUseSessionTickets"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture",
        "<TV;>;",
        "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
        "<TV;>;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/ScheduledFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

.field private final b:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 337
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture;-><init>()V

    .line 338
    invoke-static {p2, p3}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->b:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    .line 339
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 333
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/ForwardingFuture;-><init>()V

    .line 334
    invoke-static {p2}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->a(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->b:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    .line 335
    return-void
.end method

.method private d()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->b:Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->d()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->d()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 359
    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->d()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->a:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-virtual {v0, p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->a(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;)V

    .line 369
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->d()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 326
    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 1

    .prologue
    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFuture;->d()Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->run()V

    .line 364
    return-void
.end method
