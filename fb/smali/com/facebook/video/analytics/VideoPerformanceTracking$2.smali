.class public Lcom/facebook/video/analytics/VideoPerformanceTracking$2;
.super Ljava/lang/Object;
.source "restored old ART hack mask"


# instance fields
.field final synthetic a:Lcom/facebook/video/analytics/VideoPerformanceTracking;


# direct methods
.method constructor <init>(Lcom/facebook/video/analytics/VideoPerformanceTracking;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$2;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$2;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$2;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    invoke-virtual {v0, p1}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a([B)V

    .line 349
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPerformanceTracking$2;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    invoke-virtual {v0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->d()V

    .line 350
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
