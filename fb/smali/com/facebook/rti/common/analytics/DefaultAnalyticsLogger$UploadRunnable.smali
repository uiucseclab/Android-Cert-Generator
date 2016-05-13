.class Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;
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
    .line 312
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->i()V

    .line 317
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    iget-object v0, v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->n:Lcom/facebook/rti/common/analytics/AnalyticsUploader;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUploader;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->h()V

    .line 321
    :cond_0
    return-void
.end method
