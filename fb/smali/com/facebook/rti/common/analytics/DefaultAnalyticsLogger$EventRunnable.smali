.class Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;
.super Ljava/lang/Object;
.source "sidx"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

.field private b:Lcom/facebook/rti/common/analytics/AnalyticsEvent;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->b:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    .line 281
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 285
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->b:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->b(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    .line 287
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "New event %s."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->b:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->b:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->a(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->h:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->f()V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->h:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
