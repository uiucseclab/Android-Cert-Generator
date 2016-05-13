.class public Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "setting crash reporting host to "

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorService;


# instance fields
.field protected final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method private a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private b(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    .line 96
    const v1, 0x6a7783c5

    invoke-static {p0, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const v4, 0x7b5b79ab

    invoke-static {v1, v0, v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 112
    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a:Landroid/os/Handler;

    const v1, 0x39c68d36

    invoke-static {v0, p1, v1}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 85
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl$ListenableScheduledRunnableFuture;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl$ListenableScheduledRunnableFuture;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl$ListenableScheduledRunnableFuture;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl$ListenableScheduledRunnableFuture;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6

    .prologue
    .line 18
    .line 118
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const v4, 0x641ab5fc

    invoke-static {v1, v0, v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 120
    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 18
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 18
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 18
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->b(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->b(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 18
    .line 102
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl;->a(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    .line 104
    const v1, 0x76b391e3

    invoke-static {p0, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 105
    return-object v0
.end method
