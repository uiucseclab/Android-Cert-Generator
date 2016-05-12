.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$6;
.super Ljava/lang/Object;
.source "VideoPlayerContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 428
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    .line 434
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
