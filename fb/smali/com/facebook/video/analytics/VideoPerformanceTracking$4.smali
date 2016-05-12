.class Lcom/facebook/video/analytics/VideoPerformanceTracking$4;
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
    .line 456
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iput-wide p2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->a:J

    iput-boolean p4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->a:J

    invoke-static {v0, v2, v3}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a(Lcom/facebook/video/analytics/VideoPerformanceTracking;J)J

    .line 460
    iget-boolean v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->b:Z

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->a:J

    invoke-static {v0, v2, v3}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->b(Lcom/facebook/video/analytics/VideoPerformanceTracking;J)J

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$4;->c:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    invoke-virtual {v0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->e()V

    .line 464
    return-void
.end method
