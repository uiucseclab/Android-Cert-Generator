.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mIndicatorLayoutClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 84
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 89
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 93
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 94
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    .local p3, "loadingLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Ljava/lang/Class;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 99
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 100
    return-void
.end method

.method private addIndicatorViews()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    .line 385
    .local v0, "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 387
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v3, :cond_2

    .line 389
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorLayoutClazz:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v3, v4, v5}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->createIndicatorLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 390
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->createApplicableHeaderLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 391
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v3, :cond_3

    .line 401
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorLayoutClazz:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v3, v4, v5}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->createIndicatorLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 402
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->createApplicableFooterLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 403
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 393
    :cond_2
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 396
    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v3, :cond_1

    .line 407
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 408
    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_1
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .restart local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 54
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 56
    .restart local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private createSampleList()V
    .locals 5

    .prologue
    .line 366
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Item 1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Item 2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Item 3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Item 4"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Item 5"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Item 6"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Item 7"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, "listItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 368
    .local v1, "sampleAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    return-void
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .prologue
    .line 413
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 417
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 419
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 442
    :goto_0
    return v2

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 435
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 436
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_3
    move v2, v4

    .line 442
    goto :goto_0
.end method

.method private isLastItemVisible()Z
    .locals 9

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 446
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 448
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    .line 478
    :goto_0
    return v5

    .line 454
    :cond_1
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 455
    .local v2, "lastItemPosition":I
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 469
    .local v4, "lastVisiblePosition":I
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_3

    .line 470
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 471
    .local v1, "childIndex":I
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 472
    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 473
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    if-gt v8, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_0

    .end local v1    # "childIndex":I
    .end local v3    # "lastVisibleChild":Landroid/view/View;
    :cond_3
    move v5, v7

    .line 478
    goto :goto_0
.end method

.method private removeIndicatorViews()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 484
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 489
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 491
    :cond_1
    return-void
.end method

.method private updateIndicatorViewsVisibility()V
    .locals 1

    .prologue
    .line 494
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    .line 506
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    .line 517
    :cond_1
    :goto_1
    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_0

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public getShowIndicator()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    const/16 v3, 0xd

    .line 321
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "layoutCode":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->createIndicatorLayoutClazzByLayoutCode(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorLayoutClazz:Ljava/lang/Class;

    .line 333
    return-void

    .line 321
    .end local v0    # "layoutCode":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .prologue
    .line 340
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 353
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onFinishInflate()V

    .line 354
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->createSampleList()V

    .line 358
    :cond_0
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 265
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V

    .line 267
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRefreshing(Z)V
    .locals 1
    .param p1, "doScroll"    # Z

    .prologue
    .line 283
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V

    .line 285
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 288
    :cond_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 292
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V

    .line 294
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReset()V

    .line 313
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 316
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 128
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    .line 129
    if-lez p4, :cond_3

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 141
    :cond_2
    return-void

    .line 129
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 345
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 346
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 349
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 148
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 155
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 166
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 167
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .line 183
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 185
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_1

    .line 188
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 191
    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 192
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 198
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    instance-of v3, v3, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    if-eqz v3, :cond_3

    .line 206
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    .line 210
    :goto_1
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    .line 211
    return-void

    .line 201
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 208
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 222
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    return-void
.end method

.method public final setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 230
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 231
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    .prologue
    .line 226
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    .line 227
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 234
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 235
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    .line 238
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 239
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 1
    .param p1, "showIndicator"    # Z

    .prologue
    .line 250
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 252
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_0
.end method

.method protected updateUIForMode()V
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 376
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_0
.end method
