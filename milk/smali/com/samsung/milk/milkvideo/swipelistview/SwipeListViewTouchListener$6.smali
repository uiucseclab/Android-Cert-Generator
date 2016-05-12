.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

.field final synthetic val$position:I

.field final synthetic val$swap:Z

.field final synthetic val$swapRight:Z


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;ZIZ)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iput-boolean p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$swap:Z

    iput p3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$position:I

    iput-boolean p4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 621
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->resetScrolling()V

    .line 622
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$swap:Z

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$400(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 624
    .local v0, "aux":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$400(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$position:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 625
    if-eqz v0, :cond_2

    .line 626
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v1

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$position:I

    iget-boolean v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-virtual {v1, v3, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onOpened(IZ)V

    .line 627
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$500(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$position:I

    iget-boolean v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 632
    .end local v0    # "aux":Z
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # invokes: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetCell()V
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$200(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    .line 633
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # setter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z
    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$302(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Z)Z

    .line 634
    return-void

    :cond_1
    move v0, v2

    .line 623
    goto :goto_0

    .line 629
    .restart local v0    # "aux":Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$position:I

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$500(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;->val$position:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onClosed(IZ)V

    goto :goto_1
.end method
