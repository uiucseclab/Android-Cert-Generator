.class Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;
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
    .line 304
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;->a:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->f()V

    .line 309
    return-void
.end method
