.class public Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;
.super Ljava/lang/Object;
.source "VideoFeedFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoFeedScrollListener"
.end annotation


# instance fields
.field public lastVisibleItem:I

.field private final onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p2, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 482
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 508
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->lastVisibleItem:I

    .line 510
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->updateVideosForScroll()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    .line 511
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v3, 0x1

    .line 486
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 487
    if-ne p2, v3, :cond_0

    .line 488
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 491
    :cond_0
    if-nez p2, :cond_2

    .line 492
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->updateVideosForScroll()V
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    .line 493
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    move-result-object v0

    .line 494
    .local v0, "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->setShouldAnimate(Z)V

    .line 496
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->lastVisibleItem:I

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 497
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/MoreFeedVideos;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/MoreFeedVideos;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 502
    .end local v0    # "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->setShouldAnimate(Z)V

    goto :goto_0
.end method
