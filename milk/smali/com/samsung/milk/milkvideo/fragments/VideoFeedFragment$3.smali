.class Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;
.super Ljava/lang/Object;
.source "VideoFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->setUpVideoFeedListListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

.field final synthetic val$finalTouchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;->val$finalTouchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iput-object p3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;->val$finalTouchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;->val$finalTouchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 169
    :cond_0
    if-nez v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v1, p2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->handleExternalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 173
    :cond_1
    return v0
.end method
