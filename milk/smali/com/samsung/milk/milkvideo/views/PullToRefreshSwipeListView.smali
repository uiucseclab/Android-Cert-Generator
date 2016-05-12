.class public Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshSwipeListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
        "<",
        "Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"


# instance fields
.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 36
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Ljava/lang/Class;)V
    .locals 0
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
    .line 40
    .local p3, "loadingLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Ljava/lang/Class;)V

    .line 41
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 71
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 94
    :goto_0
    return v2

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getTop()I

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

    .line 94
    goto :goto_0
.end method

.method private isLastItemVisible()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 100
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    .line 130
    :goto_0
    return v5

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 107
    .local v2, "lastItemPosition":I
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getLastVisiblePosition()I

    move-result v4

    .line 121
    .local v4, "lastVisiblePosition":I
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 123
    .local v1, "childIndex":I
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v5, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getBottom()I

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

    .line 130
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    return-object v0
.end method

.method public getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;->getPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->isFirstItemVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
