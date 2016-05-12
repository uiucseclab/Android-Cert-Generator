.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateDismissAnimate(Landroid/view/View;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

.field final synthetic val$position:I

.field final synthetic val$swap:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;ZLandroid/view/View;I)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iput-boolean p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->val$swap:Z

    iput-object p3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->val$position:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->val$swap:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 585
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->val$position:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->performDismiss(Landroid/view/View;IZ)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # invokes: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetCell()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$200(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    .line 588
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$302(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Z)Z

    .line 589
    return-void
.end method
