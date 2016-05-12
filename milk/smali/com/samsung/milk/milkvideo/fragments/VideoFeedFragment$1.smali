.class Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;
.super Ljava/lang/Object;
.source "VideoFeedFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
        "<",
        "Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed(Ljava/lang/Boolean;Z)V

    .line 98
    return-void
.end method
