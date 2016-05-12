.class Lcom/facebook/video/analytics/TimedMicroStorage$2$1;
.super Ljava/lang/Object;
.source "response_timeout_sec"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/video/analytics/TimedMicroStorage$2;


# direct methods
.method constructor <init>(Lcom/facebook/video/analytics/TimedMicroStorage$2;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2$1;->a:Lcom/facebook/video/analytics/TimedMicroStorage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2$1;->a:Lcom/facebook/video/analytics/TimedMicroStorage$2;

    iget-object v0, v0, Lcom/facebook/video/analytics/TimedMicroStorage$2;->b:Lcom/facebook/video/analytics/TimedMicroStorage;

    iget-object v1, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2$1;->a:Lcom/facebook/video/analytics/TimedMicroStorage$2;

    iget-object v1, v1, Lcom/facebook/video/analytics/TimedMicroStorage$2;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking$3;

    invoke-virtual {v0, v1}, Lcom/facebook/video/analytics/TimedMicroStorage;->c(Lcom/facebook/video/analytics/VideoPerformanceTracking$3;)V

    .line 132
    return-void
.end method
