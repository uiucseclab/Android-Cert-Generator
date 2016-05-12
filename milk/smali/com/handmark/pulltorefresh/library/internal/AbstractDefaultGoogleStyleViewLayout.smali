.class public abstract Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;
.super Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
.source "AbstractDefaultGoogleStyleViewLayout.java"


# instance fields
.field private mHeaderText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/widget/FrameLayout;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field private mSubHeaderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->initImpl(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->initComponents(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->initProperties(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 55
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->reset()V

    .line 56
    return-void
.end method

.method private hideHeaderText()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_0
    return-void
.end method

.method private hideSubHeaderText()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method

.method private initComponents(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getInnerLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getHeaderText(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->geSubHeaderTextLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 68
    return-void
.end method

.method private loadLoadingLayoutLabels(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->loadPullLabel(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->loadRefreshingLabel(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->loadReleaseLabel(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 203
    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 385
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 404
    :cond_0
    return-void
.end method

.method private setSubTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 410
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 425
    :cond_1
    return-void
.end method

.method private setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 434
    :cond_1
    return-void
.end method

.method private showHeaderText()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :cond_0
    return-void
.end method

.method private showSubHeaderText()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract geSubHeaderTextLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
.end method

.method public final getContentSize()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getDefaultBackgroundColor(Landroid/content/Context;Landroid/content/res/TypedArray;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 168
    const/4 v0, -0x1

    return v0
.end method

.method protected getDefaultSubTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 188
    const/high16 v0, -0x1000000

    return v0
.end method

.method protected getDefaultTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 178
    const/high16 v0, -0x1000000

    return v0
.end method

.method protected abstract getHeaderText(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
.end method

.method protected abstract getInnerLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/FrameLayout;
.end method

.method public final hideAllViews()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->hideHeaderText()V

    .line 278
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->hideSubHeaderText()V

    .line 279
    return-void
.end method

.method protected abstract initImpl(Landroid/content/Context;Landroid/content/res/TypedArray;)V
.end method

.method protected initProperties(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->loadLoadingLayoutLabels(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 113
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 116
    invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 123
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .local v2, "styleID":Landroid/util/TypedValue;
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 126
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setTextAppearance(I)V

    .line 128
    .end local v2    # "styleID":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 130
    .restart local v2    # "styleID":Landroid/util/TypedValue;
    invoke-virtual {p2, v8, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 131
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setSubTextAppearance(I)V

    .line 135
    .end local v2    # "styleID":Landroid/util/TypedValue;
    :cond_2
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 137
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 138
    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_3
    :goto_1
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 146
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 147
    .restart local v1    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    .line 148
    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 155
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->initPropertiesImpl(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 157
    return-void

    .line 120
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getDefaultBackgroundColor(Landroid/content/Context;Landroid/content/res/TypedArray;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 142
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getDefaultTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setTextColor(I)V

    goto :goto_1

    .line 152
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getDefaultSubTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setSubTextColor(I)V

    goto :goto_2
.end method

.method protected abstract initPropertiesImpl(Landroid/content/Context;Landroid/content/res/TypedArray;)V
.end method

.method protected loadPullLabel(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v2, 0x10

    .line 217
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 221
    :cond_0
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_pull_label:I

    .line 222
    .local v0, "stringId":I
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadRefreshingLabel(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v2, 0x11

    .line 236
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    .line 240
    :cond_0
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_refreshing_label:I

    .line 241
    .local v0, "stringId":I
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadReleaseLabel(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v2, 0x12

    .line 255
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 259
    :cond_0
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_release_label:I

    .line 260
    .local v0, "stringId":I
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPull(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->onPullImpl(F)V

    .line 448
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->pullToRefreshImpl()V

    .line 305
    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->refreshingImpl()V

    .line 318
    return-void
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->releaseToRefreshImpl()V

    .line 327
    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->resetImpl()V

    .line 343
    return-void

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 94
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 95
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 97
    .local v1, "thisLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 98
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->requestLayout()V

    .line 102
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 351
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 355
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 359
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 365
    :cond_0
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 267
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 268
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->requestLayout()V

    .line 269
    return-void
.end method

.method public final showInvisibleViews()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->showHeaderText()V

    .line 369
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;->showSubHeaderText()V

    .line 370
    return-void
.end method
