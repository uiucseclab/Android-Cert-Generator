.class Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;
.super Landroid/os/Handler;
.source "sidx"


# instance fields
.field final synthetic a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    new-instance v1, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-direct {v1, v2}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;-><init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a(Ljava/lang/Runnable;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    new-instance v1, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-direct {v1, v2}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;-><init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    return-void
.end method
