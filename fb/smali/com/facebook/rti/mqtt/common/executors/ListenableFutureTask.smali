.class public Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "screenshot.png"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->a:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 43
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->a:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->a:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 84
    return-void
.end method

.method protected done()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ListenableFutureTask;->a:Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->a()V

    .line 92
    return-void
.end method
