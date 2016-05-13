.class Lcom/facebook/video/analytics/VideoPerformanceTracking$5;
.super Ljava/lang/Object;
.source "restored old ART hack mask"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/video/analytics/VideoPerformanceTracking;


# direct methods
.method constructor <init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;JZ)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iput-wide p2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->a:J

    iput-boolean p4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 473
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->a:J

    invoke-static {v0, v2, v3}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Lcom/facebook/video/analytics/VideoPerformanceTracking;J)J

    .line 474
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->a:J

    .line 35
    iget-wide v4, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->j:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->j:J

    .line 475
    iget-boolean v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->b:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->a:J

    .line 35
    iget-wide v4, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->k:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->k:J

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    invoke-virtual {v0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->e()V

    .line 482
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->a:J

    invoke-static {v0, v2, v3}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b(Lcom/facebook/video/analytics/VideoPerformanceTracking;J)J

    .line 479
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$5;->a:J

    .line 35
    iget-wide v4, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->l:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->l:J

    goto :goto_0
.end method
