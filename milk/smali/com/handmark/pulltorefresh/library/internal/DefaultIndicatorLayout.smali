.class public Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;
.super Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
.source "DefaultIndicatorLayout.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/IIndicatorLayout;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout$1;
    }
.end annotation


# static fields
.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x96


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mInAnim:Landroid/view/animation/Animation;

.field private mOutAnim:Landroid/view/animation/Animation;

.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->getIconDrawable(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 55
    .local v7, "arrowD":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 58
    .local v12, "padding":I
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 59
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->addView(Landroid/view/View;)V

    .line 62
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    sget v8, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_top:I

    .line 77
    .local v8, "inAnimResId":I
    sget v11, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_top:I

    .line 78
    .local v11, "outAnimResId":I
    sget v0, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_top:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->setBackgroundResource(I)V

    .line 82
    :goto_0
    invoke-static {p1, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    .line 83
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    .line 86
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 88
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 89
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 91
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 95
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 97
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 98
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 101
    return-void

    .line 64
    .end local v8    # "inAnimResId":I
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v11    # "outAnimResId":I
    :pswitch_0
    sget v8, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_bottom:I

    .line 65
    .restart local v8    # "inAnimResId":I
    sget v11, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_bottom:I

    .line 66
    .restart local v11    # "outAnimResId":I
    sget v0, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_bottom:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->setBackgroundResource(I)V

    .line 69
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    .local v10, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 72
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createApplicableFooterLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 186
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 189
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    return-object v0
.end method

.method public createApplicableHeaderLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 176
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 179
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 180
    return-object v0
.end method

.method protected getIconDrawable(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    return-void
.end method

.method public final isVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 116
    .local v0, "currentAnim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 117
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne v3, v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 140
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->setVisibility(I)V

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->clearAnimation()V

    .line 146
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 151
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 133
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    return-void
.end method
