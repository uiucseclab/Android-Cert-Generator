.class Lcom/facebook/video/analytics/VideoPerformanceTracking$1;
.super Ljava/lang/Object;
.source "restored old ART hack mask"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ui/media/cache/MediaCacheKey;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/facebook/video/analytics/VideoPerformanceTracking;


# direct methods
.method constructor <init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;Lcom/facebook/ui/media/cache/MediaCacheKey;JJIZ)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->f:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iput-object p2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->a:Lcom/facebook/ui/media/cache/MediaCacheKey;

    iput-wide p3, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->b:J

    iput-wide p5, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->c:J

    iput p7, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->d:I

    iput-boolean p8, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->f:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-object v0, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->f:Lcom/facebook/video/analytics/BytesViewedTracking;

    iget-object v1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->a:Lcom/facebook/ui/media/cache/MediaCacheKey;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->b:J

    iget-wide v4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->c:J

    iget v6, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->d:I

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Lcom/facebook/ui/media/cache/MediaCacheKey;JJI)V

    .line 284
    iget-boolean v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->e:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->f:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    iget-object v0, v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;->g:Lcom/facebook/video/analytics/BytesViewedTracking;

    iget-object v1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->a:Lcom/facebook/ui/media/cache/MediaCacheKey;

    iget-wide v2, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->b:J

    iget-wide v4, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->c:J

    iget v6, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->d:I

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Lcom/facebook/ui/media/cache/MediaCacheKey;JJI)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$1;->f:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    invoke-virtual {v0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->e()V

    .line 288
    return-void
.end method
