.class public Lcom/samsung/milk/milkvideo/views/FacepileLayout;
.super Landroid/widget/RelativeLayout;
.source "FacepileLayout.java"


# static fields
.field public static final REPOSTER_COUNT_VIEW_INDEX:I = 0x3


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private facepileExpandClickListener:Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

.field private facepileGradient:Landroid/view/View;

.field private facepileStack:Landroid/widget/RelativeLayout;

.field private multipleReposterHalo:Landroid/widget/ImageView;

.field private repostAvatarLayout:Landroid/widget/FrameLayout;

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/FacepileLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileGradient:Landroid/view/View;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030058

    invoke-static {v0, v1, p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    new-instance v0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout$1;-><init>(Lcom/samsung/milk/milkvideo/views/FacepileLayout;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileExpandClickListener:Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

    .line 68
    const v0, 0x7f060114

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    .line 69
    const v0, 0x7f060110

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileGradient:Landroid/view/View;

    .line 70
    const v0, 0x7f060112

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->multipleReposterHalo:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f060111

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->repostAvatarLayout:Landroid/widget/FrameLayout;

    .line 72
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->multipleReposterHalo:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    if-le v5, v9, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, "facePile":Landroid/view/View;
    const-string v5, "translationX"

    new-array v7, v9, [F

    aput v10, v7, v6

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 144
    .local v4, "translationX":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileGradient:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v9, [F

    aput v10, v8, v6

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 147
    .local v0, "alphaOutGradient":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 150
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 151
    const-wide/16 v7, 0x96

    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 152
    new-instance v5, Lcom/samsung/milk/milkvideo/views/FacepileLayout$3;

    invoke-direct {v5, p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout$3;-><init>(Lcom/samsung/milk/milkvideo/views/FacepileLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "alphaOutGradient":Landroid/animation/ObjectAnimator;
    .end local v1    # "facePile":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v4    # "translationX":Landroid/animation/ObjectAnimator;
    :cond_2
    const/16 v5, 0x8

    goto :goto_0
.end method

.method public expand()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 114
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v7, Lcom/samsung/milk/milkvideo/events/FacepileOpenedEvent;

    invoke-direct {v7}, Lcom/samsung/milk/milkvideo/events/FacepileOpenedEvent;-><init>()V

    invoke-virtual {v6, v7}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 115
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileGradient:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->multipleReposterHalo:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_0

    .line 118
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "facePile":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v7, 0x36

    invoke-static {v6, v7}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v6

    int-to-float v1, v6

    .line 121
    .local v1, "dp54":F
    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    neg-float v8, v1

    add-int/lit8 v9, v3, 0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    aput v8, v7, v12

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 122
    .local v5, "translationX":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    const v7, 0x3f99999a    # 1.2f

    invoke-direct {v6, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileGradient:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v12, [F

    aput v11, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 125
    .local v0, "alphaInGradient":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 128
    .local v4, "translationSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 129
    const-wide/16 v6, 0x1c2

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 130
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "alphaInGradient":Landroid/animation/ObjectAnimator;
    .end local v1    # "dp54":F
    .end local v2    # "facePile":Landroid/view/View;
    .end local v4    # "translationSet":Landroid/animation/AnimatorSet;
    .end local v5    # "translationX":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method isOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 163
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public reset(Ljava/lang/String;Ljava/util/List;I)V
    .locals 10
    .param p1, "embedCode"    # Ljava/lang/String;
    .param p3, "totalRepostCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FacepileReposter;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "followedReposters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/FacepileReposter;>;"
    const/16 v9, 0xb

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 75
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->repostAvatarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 83
    new-instance v0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/milk/milkvideo/models/FacepileReposter;

    iget-object v8, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileExpandClickListener:Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

    invoke-direct {v0, v7, v4, v8}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;-><init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/models/FacepileReposter;Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;)V

    .line 84
    .local v0, "facepileItemView":Lcom/samsung/milk/milkvideo/views/FacepileItemView;
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 90
    .end local v0    # "facepileItemView":Lcom/samsung/milk/milkvideo/views/FacepileItemView;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, p3, v4

    if-lez v4, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f03005e

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "facepileMoreView":Landroid/view/View;
    new-instance v4, Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;

    invoke-direct {v4, p0, p1}, Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;-><init>(Lcom/samsung/milk/milkvideo/views/FacepileLayout;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    const/4 v7, 0x3

    invoke-virtual {v4, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    .end local v1    # "facepileMoreView":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->multipleReposterHalo:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileStack:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->repostAvatarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v4, v6

    .line 109
    goto :goto_2
.end method
