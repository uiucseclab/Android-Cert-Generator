.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/ILoadingLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;
    }
.end annotation


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"


# instance fields
.field protected mHeaderImage:Landroid/widget/ImageView;

.field protected mHeaderProgress:Landroid/widget/ProgressBar;

.field protected mHeaderText:Landroid/widget/TextView;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mInnerLayout:Landroid/widget/FrameLayout;

.field protected final mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field protected final mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field protected mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinsicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 97
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 99
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 105
    sget v1, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_vertical:I

    invoke-direct {p0, p1, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->initInflate(Landroid/content/Context;I)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->initComponents()V

    .line 111
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 121
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_3

    const/16 v1, 0x50

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 126
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_2
    invoke-virtual {p0, p1, p2, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->initProperties(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)V

    .line 129
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 138
    return-void

    .line 101
    :pswitch_0
    sget v1, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_horizontal:I

    invoke-direct {p0, p1, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->initInflate(Landroid/content/Context;I)V

    goto :goto_0

    .line 116
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_2

    const/16 v1, 0x30

    :goto_3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    goto :goto_3

    .line 121
    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;
    .param p5, "inflateId"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 79
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 81
    invoke-direct {p0, p1, p5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->initInflate(Landroid/content/Context;I)V

    .line 82
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->initComponents()V

    .line 83
    invoke-virtual {p0, p1, p2, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->initProperties(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)V

    .line 85
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 92
    return-void
.end method

.method private hideHeaderImage()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    :cond_0
    return-void
.end method

.method private hideHeaderProgress()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 335
    :cond_0
    return-void
.end method

.method private hideHeaderText()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :cond_0
    return-void
.end method

.method private hideSubHeaderText()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :cond_0
    return-void
.end method

.method private initInflate(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflateId"    # I

    .prologue
    .line 149
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 150
    return-void
.end method

.method private loadLoadingLayoutLabels(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->loadPullLabel(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->loadRefreshingLabel(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->loadReleaseLabel(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 232
    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 498
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 517
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 523
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 532
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 541
    :cond_1
    return-void
.end method

.method private showHeaderImage()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :cond_0
    return-void
.end method

.method private showHeaderProgress()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 471
    :cond_0
    return-void
.end method

.method private showHeaderText()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    :cond_0
    return-void
.end method

.method private showSubHeaderText()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 311
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final hideAllViews()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideHeaderText()V

    .line 320
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideHeaderProgress()V

    .line 321
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideHeaderImage()V

    .line 322
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideSubHeaderText()V

    .line 323
    return-void
.end method

.method protected initComponents()V
    .locals 2

    .prologue
    .line 141
    sget v0, Lcom/handmark/pulltorefresh/library/R$id;->fl_inner:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    .line 142
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    .line 144
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 146
    return-void
.end method

.method protected initProperties(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 155
    invoke-direct {p0, p1, p3, p2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->loadLoadingLayoutLabels(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 157
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 164
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 166
    .local v2, "styleID":Landroid/util/TypedValue;
    const/16 v3, 0xa

    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 167
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V

    .line 169
    .end local v2    # "styleID":Landroid/util/TypedValue;
    :cond_1
    const/16 v3, 0xb

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 171
    .restart local v2    # "styleID":Landroid/util/TypedValue;
    const/16 v3, 0xb

    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 172
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V

    .line 176
    .end local v2    # "styleID":Landroid/util/TypedValue;
    :cond_2
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 178
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 179
    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_3
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 184
    .restart local v1    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    .line 185
    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    :cond_5
    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 199
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 200
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    :cond_6
    :goto_0
    return-void

    .line 201
    :cond_7
    const/16 v3, 0x23

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 202
    const-string v3, "ptrDrawableTop"

    const-string v4, "ptrDrawableStart"

    invoke-static {v3, v4}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v3, 0x23

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 208
    :pswitch_0
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 210
    :cond_8
    const/16 v3, 0x24

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    const-string v3, "ptrDrawableBottom"

    const-string v4, "ptrDrawableEnd"

    invoke-static {v3, v4}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v3, 0x24

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected loadPullLabel(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    const/16 v2, 0x10

    .line 246
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .line 250
    :cond_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p3, v1, :cond_1

    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_pull_label:I

    .line 251
    .local v0, "stringId":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 250
    .end local v0    # "stringId":I
    :cond_1
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_pull_label:I

    goto :goto_1
.end method

.method protected loadRefreshingLabel(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    const/16 v2, 0x11

    .line 267
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    .line 271
    :cond_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p3, v1, :cond_1

    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_refreshing_label:I

    .line 272
    .local v0, "stringId":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 271
    .end local v0    # "stringId":I
    :cond_1
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_refreshing_label:I

    goto :goto_1
.end method

.method protected loadReleaseLabel(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    const/16 v2, 0x12

    .line 287
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    :goto_0
    return-object v1

    .line 291
    :cond_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p3, v1, :cond_1

    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_release_label:I

    .line 292
    .local v0, "stringId":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 291
    .end local v0    # "stringId":I
    :cond_1
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_release_label:I

    goto :goto_1
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
    .locals 1
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPullImpl(F)V

    .line 347
    :cond_0
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefreshImpl()V

    .line 356
    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :cond_1
    return-void

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshingImpl()V

    goto :goto_0
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefreshImpl()V

    .line 382
    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showHeaderImage()V

    .line 391
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    :cond_1
    :goto_1
    return-void

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->resetImpl()V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected abstract resetImpl()V
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 298
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 299
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 300
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    .line 432
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V

    .line 433
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 437
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 441
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 445
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    :cond_0
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 304
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 305
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 306
    return-void
.end method

.method public final showInvisibleViews()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showHeaderText()V

    .line 456
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showHeaderProgress()V

    .line 457
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showHeaderImage()V

    .line 458
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showSubHeaderText()V

    .line 459
    return-void
.end method
