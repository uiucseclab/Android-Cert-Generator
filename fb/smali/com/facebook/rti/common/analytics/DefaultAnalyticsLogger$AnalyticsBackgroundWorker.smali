.class Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;
.super Ljava/lang/Object;
.source "sidx"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method
