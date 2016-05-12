.class public Lcom/samsung/milk/milkvideo/views/CategoryListView;
.super Landroid/widget/FrameLayout;
.source "CategoryListView.java"


# static fields
.field private static final NUMBER_OF_VISIBLE_CATEGORIES:I = 0x8

.field private static final SCROLLING_ANIMATION_DELAY:I = 0xfa


# instance fields
.field private alphaAnimator:Landroid/animation/ObjectAnimator;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesContainer:Landroid/view/ViewGroup;

.field private categoryHeight:I

.field private context:Landroid/content/Context;

.field private currentCategoryIndex:I

.field private previousCategoryIndex:I

.field private screenHeight:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private scrollView:Landroid/widget/ScrollView;

.field private xAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/CategoryListView;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/CategoryListView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private animateAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->alphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_3

    .line 214
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setVisibility(I)V

    .line 217
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 218
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setVisibility(I)V

    .line 248
    :cond_2
    :goto_0
    return-void

    .line 223
    :cond_3
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->alphaAnimator:Landroid/animation/ObjectAnimator;

    .line 224
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->alphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 225
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->alphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;-><init>(Lcom/samsung/milk/milkvideo/views/CategoryListView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private constructCategoryList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 173
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/Category;

    .line 174
    .local v0, "category":Lcom/samsung/milk/milkvideo/models/Category;
    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->constructItemTextView(Lcom/samsung/milk/milkvideo/models/Category;)Lcom/samsung/milk/milkvideo/views/CategoryTextView;

    move-result-object v1

    .line 175
    .local v1, "categoryItem":Lcom/samsung/milk/milkvideo/views/CategoryTextView;
    sget-object v3, Lcom/samsung/milk/milkvideo/models/Category;->SEARCH:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/models/Category;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const v3, 0x7f0200a2

    invoke-virtual {v1, v3, v5, v5, v5}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setCompoundDrawablePadding(I)V

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 181
    .end local v0    # "category":Lcom/samsung/milk/milkvideo/models/Category;
    .end local v1    # "categoryItem":Lcom/samsung/milk/milkvideo/views/CategoryTextView;
    :cond_1
    return-void
.end method

.method private constructItemTextView(Lcom/samsung/milk/milkvideo/models/Category;)Lcom/samsung/milk/milkvideo/views/CategoryTextView;
    .locals 6
    .param p1, "category"    # Lcom/samsung/milk/milkvideo/models/Category;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "text":Ljava/lang/String;
    new-instance v0, Lcom/samsung/milk/milkvideo/views/CategoryTextView;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, "itemView":Lcom/samsung/milk/milkvideo/views/CategoryTextView;
    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setTextColor(I)V

    .line 188
    const/4 v3, 0x1

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v0, v3, v4}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setTextSize(IF)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/helv-lt.otf"

    invoke-static {v3, v4}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Category;->isFeatured()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->feature()V

    .line 195
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoryHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v3, v4}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setGravity(I)V

    .line 204
    const-string v3, "fontHelveticaNeue45Light"

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setTag(Ljava/lang/Object;)V

    .line 205
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->context:Landroid/content/Context;

    .line 150
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    .line 152
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 153
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03002a

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    .line 156
    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    .line 158
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Lcom/samsung/milk/milkvideo/views/CategoryListView$1;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView$1;-><init>(Lcom/samsung/milk/milkvideo/views/CategoryListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    return-void
.end method

.method private smoothScrollTo(II)V
    .locals 9
    .param p1, "positionY"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 251
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 254
    .local v0, "currentScrollPosition":I
    sub-int v1, p1, v0

    .line 255
    .local v1, "scrollDistance":I
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    int-to-float v3, v0

    int-to-float v4, v1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 257
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 279
    :goto_0
    return-void

    .line 264
    :cond_1
    new-array v2, v6, [I

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    aput v3, v2, v7

    aput p1, v2, v8

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 265
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    const-string v4, ""

    new-array v5, v6, [I

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    aput v6, v5, v7

    aput p1, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 266
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/milk/milkvideo/views/CategoryListView$3;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView$3;-><init>(Lcom/samsung/milk/milkvideo/views/CategoryListView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 274
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    if-lez p2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private updateCategoriesStyle()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const v8, 0x3e6147ae    # 0.22f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    .line 282
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->previousCategoryIndex:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v6, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 283
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v4, v5, v6, v6, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 285
    const/high16 v0, 0x3f800000    # 1.0f

    .line 286
    .local v0, "alpha":F
    const v1, 0x3e4ccccd    # 0.2f

    .line 288
    .local v1, "alphaOffset":F
    const v3, 0x3e6147ae    # 0.22f

    .line 290
    .local v3, "minAlpha":F
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 292
    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    add-int/lit8 v2, v4, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 293
    sub-float/2addr v0, v7

    .line 294
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 299
    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 300
    sub-float/2addr v0, v7

    .line 301
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 299
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 303
    :cond_1
    return-void
.end method


# virtual methods
.method public getCategoryByIndex(I)Lcom/samsung/milk/milkvideo/models/Category;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/Category;

    return-object v0
.end method

.method public getCategorySize()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildViewAt(I)Lcom/samsung/milk/milkvideo/views/CategoryTextView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/CategoryTextView;

    return-object v0
.end method

.method public getCurrentCategory()Lcom/samsung/milk/milkvideo/models/Category;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getCurrentCategoryIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/Category;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/milk/milkvideo/models/Category;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/models/Category;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getCurrentCategoryIndex()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    return v0
.end method

.method public getIndexByCategory(Ljava/lang/String;)I
    .locals 2
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    new-instance v1, Lcom/samsung/milk/milkvideo/models/Category;

    invoke-direct {v1, p1}, Lcom/samsung/milk/milkvideo/models/Category;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Category;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v0, "categoriesWithSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/milk/milkvideo/models/Category;>;"
    sget-object v3, Lcom/samsung/milk/milkvideo/models/Category;->SEARCH:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/models/Category;

    .line 75
    .local v1, "category":Lcom/samsung/milk/milkvideo/models/Category;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v1    # "category":Lcom/samsung/milk/milkvideo/models/Category;
    :cond_0
    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    .line 79
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->constructCategoryList()V

    .line 80
    iget v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->screenHeight:I

    if-eqz v3, :cond_1

    .line 81
    iget v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->screenHeight:I

    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setScreenHeight(I)V

    .line 83
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    .line 84
    return-void
.end method

.method public setCurrentCategoryIndex(I)V
    .locals 0
    .param p1, "newCategoryIndex"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    .line 140
    return-void
.end method

.method public setScreenHeight(I)V
    .locals 1
    .param p1, "screenHeight"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->screenHeight:I

    .line 145
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->screenHeight:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoryHeight:I

    .line 146
    return-void
.end method

.method public toggleVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 87
    if-eqz p1, :cond_1

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->animateAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->xAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->xAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoriesContainer:Landroid/view/ViewGroup;

    const-string v1, "x"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->xAnimator:Landroid/animation/ObjectAnimator;

    .line 95
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->xAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->xAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->animateAlpha(F)V

    goto :goto_0

    .line 94
    :array_0
    .array-data 4
        -0x3cea0000    # -150.0f
        0x0
    .end array-data
.end method

.method public update(IIZ)V
    .locals 10
    .param p1, "sidebarPosition"    # I
    .param p2, "sidebarMax"    # I
    .param p3, "startTracking"    # Z

    .prologue
    .line 103
    int-to-double v6, p1

    int-to-double v8, p2

    div-double v1, v6, v8

    .line 104
    .local v1, "progress":D
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v1

    double-to-int v4, v6

    .line 105
    .local v4, "selectedCategoryIndex":I
    iget v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->screenHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v1

    double-to-int v5, v6

    .line 108
    .local v5, "touchOffsetFromTopOfScreen":I
    if-nez v4, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 116
    .local v0, "categoryListViewTargetY":I
    :goto_0
    sub-int v3, v0, v5

    .line 118
    .local v3, "scrollTarget":I
    iget v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    if-eq v4, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 119
    iget v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    iput v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->previousCategoryIndex:I

    .line 120
    iput v4, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->currentCategoryIndex:I

    .line 121
    if-eqz p3, :cond_3

    const/16 v6, 0xfa

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->smoothScrollTo(II)V

    .line 122
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->updateCategoriesStyle()V

    .line 123
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->performHapticFeedback(I)Z

    .line 125
    :cond_0
    return-void

    .line 110
    .end local v0    # "categoryListViewTargetY":I
    .end local v3    # "scrollTarget":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_2

    .line 111
    iget v6, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoryHeight:I

    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int v0, v6, v7

    .restart local v0    # "categoryListViewTargetY":I
    goto :goto_0

    .line 113
    .end local v0    # "categoryListViewTargetY":I
    :cond_2
    int-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    iget v8, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView;->categoryHeight:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .restart local v0    # "categoryListViewTargetY":I
    goto :goto_0

    .line 121
    .restart local v3    # "scrollTarget":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
