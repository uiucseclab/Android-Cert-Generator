.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;
.super Ljava/lang/Object;
.source "VideoPlayerContainerFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 380
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)I

    move-result v0

    .line 381
    .local v0, "orientation":I
    if-ne v0, v3, :cond_1

    cmpg-float v1, p4, v4

    if-gez v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V
    invoke-static {v1, v3}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;Z)V

    .line 386
    :cond_0
    :goto_0
    return v3

    .line 383
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    cmpg-float v1, p3, v4

    if-gez v1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 392
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hidePlayerControls()V

    .line 394
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showActionContainer()V

    .line 395
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 396
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 405
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 414
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->isVideoBuffering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->resumeVideo()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    goto :goto_0
.end method
