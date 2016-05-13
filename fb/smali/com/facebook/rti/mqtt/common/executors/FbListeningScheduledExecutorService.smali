.class public interface abstract Lcom/facebook/rti/mqtt/common/executors/FbListeningScheduledExecutorService;
.super Ljava/lang/Object;
.source "setVideoServerBaseUri is "

# interfaces
.implements Lcom/facebook/rti/mqtt/common/executors/ListeningScheduledExecutorService;


# virtual methods
.method public abstract a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFutureImpl;
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
.end method
