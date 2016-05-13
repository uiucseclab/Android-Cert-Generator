.class Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation;

.field private final b:Ljava/lang/Object;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;)V
    .locals 1

    .prologue
    .line 602
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 608
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->d:Z

    .line 610
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 614
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->d:Z

    .line 616
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->c:I

    .line 618
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x32

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 619
    return-void

    .line 616
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 623
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->d:Z

    if-nez v0, :cond_0

    .line 625
    monitor-exit v1

    .line 645
    :goto_0
    return-void

    .line 627
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 629
    iget v1, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->c:I

    if-le v0, v1, :cond_1

    .line 631
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Lcom/facebook/video/view/TextureViewImplementation;I)I

    .line 632
    invoke-virtual {p0}, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a()V

    .line 635
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->f:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    new-instance v1, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck$1;

    invoke-direct {v1, p0}, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck$1;-><init>(Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/executors/DefaultAndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x32

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
