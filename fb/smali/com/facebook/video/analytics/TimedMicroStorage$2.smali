.class Lcom/facebook/video/analytics/TimedMicroStorage$2;
.super Ljava/lang/Object;
.source "response_timeout_sec"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/video/analytics/VideoPerformanceTracking$3;

.field final synthetic b:Lcom/facebook/video/analytics/TimedMicroStorage;


# direct methods
.method constructor <init>(Lcom/facebook/video/analytics/TimedMicroStorage;Lcom/facebook/video/analytics/VideoPerformanceTracking$3;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2;->b:Lcom/facebook/video/analytics/TimedMicroStorage;

    iput-object p2, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/facebook/video/analytics/TimedMicroStorage;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2;->b:Lcom/facebook/video/analytics/TimedMicroStorage;

    iget v0, v0, Lcom/facebook/video/analytics/TimedMicroStorage;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking$3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    iget-object v0, p0, Lcom/facebook/video/analytics/TimedMicroStorage$2;->b:Lcom/facebook/video/analytics/TimedMicroStorage;

    iget-object v0, v0, Lcom/facebook/video/analytics/TimedMicroStorage;->d:Lcom/facebook/common/executors/ConstrainedExecutorService;

    new-instance v1, Lcom/facebook/video/analytics/TimedMicroStorage$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/video/analytics/TimedMicroStorage$2$1;-><init>(Lcom/facebook/video/analytics/TimedMicroStorage$2;)V

    const v2, 0x6ecf514d

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 134
    return-void
.end method
