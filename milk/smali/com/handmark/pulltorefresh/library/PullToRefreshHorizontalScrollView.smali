.class public Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
        "<",
        "Landroid/widget/HorizontalScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 41
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
    .line 44
    .local p3, "loadingLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 57
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    .local v0, "scrollView":Landroid/widget/HorizontalScrollView;
    :goto_0
    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->scrollview:I

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setId(I)V

    .line 63
    return-object v0

    .line 59
    .end local v0    # "scrollView":Landroid/widget/HorizontalScrollView;
    :cond_0
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "scrollView":Landroid/widget/HorizontalScrollView;
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "scrollViewChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    .line 77
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
