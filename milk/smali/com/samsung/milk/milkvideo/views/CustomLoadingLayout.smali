.class public Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;
.super Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.source "CustomLoadingLayout.java"


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private rotationAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;
    .param p5, "inflateId"    # I

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;I)V

    .line 26
    return-void
.end method

.method private setLoadingImage(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 67
    const v0, 0x7f0200e3

    .line 83
    .local v0, "image":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-void

    .line 68
    .end local v0    # "image":I
    :cond_0
    const v1, 0x3f755555

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 69
    const v0, 0x7f0200e4

    .restart local v0    # "image":I
    goto :goto_0

    .line 70
    .end local v0    # "image":I
    :cond_1
    const v1, 0x3f6aaaab

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 71
    const v0, 0x7f0200e5

    .restart local v0    # "image":I
    goto :goto_0

    .line 72
    .end local v0    # "image":I
    :cond_2
    const/high16 v1, 0x3f600000    # 0.875f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    .line 73
    const v0, 0x7f0200e6

    .restart local v0    # "image":I
    goto :goto_0

    .line 74
    .end local v0    # "image":I
    :cond_3
    const v1, 0x3f555555

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_4

    .line 75
    const v0, 0x7f0200e7

    .restart local v0    # "image":I
    goto :goto_0

    .line 76
    .end local v0    # "image":I
    :cond_4
    const v1, 0x3f4aaaab

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    .line 77
    const v0, 0x7f0200e8

    .restart local v0    # "image":I
    goto :goto_0

    .line 78
    .end local v0    # "image":I
    :cond_5
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_6

    .line 79
    const v0, 0x7f0200e9

    .restart local v0    # "image":I
    goto :goto_0

    .line 81
    .end local v0    # "image":I
    :cond_6
    const v0, 0x7f0200e0

    .restart local v0    # "image":I
    goto :goto_0
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x106000d

    return v0
.end method

.method protected initComponents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 36
    const v2, 0x7f0600ef

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    .line 37
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 39
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0600f0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->rotationAnimation:Landroid/view/animation/Animation;

    .line 41
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->rotationAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/samsung/milk/milkvideo/utils/PullToRefreshRotationInterpolator;

    invoke-direct {v3}, Lcom/samsung/milk/milkvideo/utils/PullToRefreshRotationInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 43
    .local v0, "imageParent":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v1, "imageParentLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method protected onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    return-void
.end method

.method protected onPullImpl(F)V
    .locals 3
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->setLoadingImage(F)V

    .line 61
    return-void
.end method

.method protected pullToRefreshImpl()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected refreshingImpl()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->rotationAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->rotationAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->rotationAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 99
    :cond_0
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected resetImpl()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
