.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->performDismiss(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;I)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iput p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;->val$originalHeight:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # --operator for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$806(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)I

    .line 1010
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$800(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;->val$originalHeight:I

    # invokes: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->removePendingDismisses(I)V
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$900(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;I)V

    .line 1013
    :cond_0
    return-void
.end method
