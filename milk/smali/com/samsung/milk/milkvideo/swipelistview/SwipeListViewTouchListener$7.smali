.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstItem:Z

.field private isLastItem:Z

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 666
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isFirstItem:Z

    .line 669
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isLastItem:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 695
    iget-boolean v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isFirstItem:Z

    if-eqz v5, :cond_3

    .line 696
    if-ne p2, v4, :cond_2

    move v3, v4

    .line 697
    .local v3, "onSecondItemList":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 698
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isFirstItem:Z

    .line 707
    .end local v3    # "onSecondItemList":Z
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isLastItem:Z

    if-eqz v5, :cond_6

    .line 708
    add-int v5, p2, p3

    add-int/lit8 v6, p4, -0x1

    if-ne v5, v6, :cond_5

    move v0, v4

    .line 709
    .local v0, "onBeforeLastItemList":Z
    :goto_2
    if-eqz v0, :cond_1

    .line 710
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isLastItem:Z

    .line 719
    .end local v0    # "onBeforeLastItemList":Z
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v2

    .line 696
    goto :goto_0

    .line 701
    :cond_3
    if-nez p2, :cond_4

    move v1, v4

    .line 702
    .local v1, "onFirstItemList":Z
    :goto_4
    if-eqz v1, :cond_0

    .line 703
    iput-boolean v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isFirstItem:Z

    .line 704
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onFirstListItem()V

    goto :goto_1

    .end local v1    # "onFirstItemList":Z
    :cond_4
    move v1, v2

    .line 701
    goto :goto_4

    :cond_5
    move v0, v2

    .line 708
    goto :goto_2

    .line 713
    :cond_6
    add-int v5, p2, p3

    if-lt v5, p4, :cond_7

    move v2, v4

    .line 714
    .local v2, "onLastItemList":Z
    :cond_7
    if-eqz v2, :cond_1

    .line 715
    iput-boolean v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->isLastItem:Z

    .line 716
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onLastListItem()V

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 673
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    if-eq p2, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$600(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 677
    :cond_0
    if-ne p2, v1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # setter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->listViewMoving:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$702(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Z)Z

    .line 679
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setEnabled(Z)V

    .line 681
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_2

    .line 682
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # setter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->listViewMoving:Z
    invoke-static {v0, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$702(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Z)Z

    .line 683
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    const/4 v1, -0x1

    # setter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$002(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;I)I

    .line 684
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->resetScrolling()V

    .line 685
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7$1;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 673
    goto :goto_0
.end method
