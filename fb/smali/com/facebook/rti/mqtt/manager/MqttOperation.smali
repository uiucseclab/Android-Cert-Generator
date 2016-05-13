.class public Lcom/facebook/rti/mqtt/manager/MqttOperation;
.super Ljava/lang/Object;
.source "s263"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field public a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field public final b:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

.field public final c:I

.field public final d:J

.field private e:Ljava/lang/Throwable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;IJZ)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->e:Ljava/lang/Throwable;

    .line 45
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 46
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 47
    iput p3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    .line 48
    iput-wide p4, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->d:J

    .line 49
    iput-boolean p6, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->g:Z

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->f:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->f:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->e:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->f:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->b(Z)V

    .line 74
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->f:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->g:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    monitor-enter p0

    .line 98
    :try_start_0
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->e:Ljava/lang/Throwable;

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b()V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->f:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->f:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    invoke-interface {v0, v3}, Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;->cancel(Z)Z

    .line 86
    :cond_0
    const-string v0, "MqttOperation"

    const-string v1, "Complete operation %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public final declared-synchronized c()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->e:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttOperation{mResponseType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->b:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIgnoreRetriableError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
