.class Lcom/facebook/rti/mqtt/common/executors/HandlerExecutorServiceImpl$ListenableScheduledRunnableFuture;
.super Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;
.source "setting crash reporting host to "

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl",
        "<TV;>;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;)V

    .line 158
    return-void
.end method
