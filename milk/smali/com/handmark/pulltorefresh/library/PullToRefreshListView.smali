.class public Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mListViewExtrasEnabled:Z

.field private mLvFooterLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 56
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
    .line 59
    .local p3, "loadingLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Ljava/lang/Class;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 217
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    .local v0, "lv":Landroid/widget/ListView;
    :goto_0
    return-object v0

    .line 219
    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "lv":Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
    .locals 3
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;

    move-result-object v1

    .line 200
    .local v1, "proxy":Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    .line 203
    .local v0, "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 206
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 211
    .end local v0    # "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    .line 229
    .local v0, "lv":Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 230
    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 237
    const/16 v2, 0x17

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z

    .line 238
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->GOOGLE_STYLE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v2, v3, :cond_0

    .line 239
    iput-boolean v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z

    .line 242
    :cond_0
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_1

    .line 243
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 247
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 249
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 250
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 253
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    .line 254
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 255
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V

    .line 266
    .end local v0    # "frame":Landroid/widget/FrameLayout;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 9
    .param p1, "doScroll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 69
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 73
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 74
    const-class v6, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Please set an adapter for PullToRefreshListView"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getShowViewWhileRefreshing()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v6

    sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->GOOGLE_STYLE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_3

    .line 82
    :cond_2
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-super {p0, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    .line 91
    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 102
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    .line 103
    .local v3, "origLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 104
    .local v1, "listViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 105
    .local v2, "oppositeListViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    const/4 v5, 0x0

    .line 106
    .local v5, "selection":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I

    move-result v7

    add-int v4, v6, v7

    .line 111
    .local v4, "scrollToY":I
    :goto_1
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 112
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideAllViews()V

    .line 115
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 118
    invoke-virtual {v1, v8}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 119
    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 121
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->disableLoadingLayoutVisibilityChanges()V

    .line 127
    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V

    .line 131
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 134
    invoke-virtual {p0, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->smoothScrollTo(I)V

    goto :goto_0

    .line 94
    .end local v1    # "listViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v2    # "oppositeListViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v3    # "origLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v4    # "scrollToY":I
    .end local v5    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    .line 95
    .restart local v3    # "origLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 96
    .restart local v1    # "listViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 97
    .restart local v2    # "oppositeListViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 98
    .restart local v5    # "selection":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I

    move-result v7

    sub-int v4, v6, v7

    .line 99
    .restart local v4    # "scrollToY":I
    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onReset()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 143
    iget-boolean v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v5

    sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->GOOGLE_STYLE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v5, v7, :cond_1

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onReset()V

    .line 194
    :goto_0
    return-void

    .line 152
    :cond_1
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 163
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    .line 164
    .local v1, "originalLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 165
    .local v0, "listViewLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I

    move-result v5

    neg-int v3, v5

    .line 166
    .local v3, "scrollToHeight":I
    const/4 v4, 0x0

    .line 167
    .local v4, "selection":I
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_4

    .line 173
    .local v2, "scrollLvToEdge":Z
    :goto_1
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 176
    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showInvisibleViews()V

    .line 179
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 186
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v5

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v5, v6, :cond_2

    .line 187
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V

    .line 193
    :cond_2
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onReset()V

    goto :goto_0

    .line 155
    .end local v0    # "listViewLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v1    # "originalLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v2    # "scrollLvToEdge":Z
    .end local v3    # "scrollToHeight":I
    .end local v4    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    .line 156
    .restart local v1    # "originalLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 157
    .restart local v0    # "listViewLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 158
    .restart local v4    # "selection":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I

    move-result v3

    .line 159
    .restart local v3    # "scrollToHeight":I
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_3

    .line 160
    .restart local v2    # "scrollLvToEdge":Z
    :goto_2
    goto :goto_1

    .end local v2    # "scrollLvToEdge":Z
    :cond_3
    move v2, v6

    .line 159
    goto :goto_2

    :cond_4
    move v2, v6

    .line 167
    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
