.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$4;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateChoiceAnimate(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$4;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$4;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->resetScrolling()V

    .line 543
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$4;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # invokes: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetCell()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$200(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    .line 544
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$4;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$302(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Z)Z

    .line 545
    return-void
.end method
