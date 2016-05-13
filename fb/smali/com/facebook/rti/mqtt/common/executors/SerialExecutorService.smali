.class public Lcom/facebook/rti/mqtt/common/executors/SerialExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "share.php"


# instance fields
.field a:Lcom/facebook/rti/common/concurrent/SerialExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 13
    invoke-static {}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->a()Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    move-result-object v0

    const-string v1, "MqttService"

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->a(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->b()Lcom/facebook/rti/common/concurrent/SerialExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/SerialExecutorService;->a:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/SerialExecutorService;->a:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    const v1, -0x37cda904

    invoke-static {v0, p1, v1}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 43
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 18
    return-void
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
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
