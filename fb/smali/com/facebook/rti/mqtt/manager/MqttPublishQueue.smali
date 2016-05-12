.class public Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;
.super Ljava/lang/Object;
.source "seek_controller"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private final c:Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;

.field private final d:Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    .line 33
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->c:Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;

    .line 34
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->d:Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 69
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    monitor-exit v1

    return-object v2

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)V
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->c:Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$1;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)V

    iget v2, p1, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->e:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;

    move-result-object v0

    .line 48
    iget-object v1, p1, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->a(Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;)V

    .line 50
    new-instance v1, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue$2;-><init>(Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;)V

    .line 60
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->c:Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 61
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    iget v2, v2, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->d:Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 6

    .prologue
    .line 83
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->a:Ljava/lang/String;

    const-string v2, "Dequeue operation id= %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    iget v2, p1, Lcom/facebook/rti/mqtt/manager/MqttOperation;->c:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 86
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->a:Ljava/lang/String;

    const-string v2, "After dequeue size= %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishQueue;->d:Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;->c()V

    .line 90
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
