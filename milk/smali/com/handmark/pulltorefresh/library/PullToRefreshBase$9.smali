.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 1886
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.9;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 7

    .prologue
    .line 1890
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.9;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    # getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I
    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$800(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xe1

    const/4 v6, 0x0

    # invokes: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$900(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1891
    return-void
.end method
