.class public Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;
.super Ljava/lang/Object;
.source "ScreenResizeHelper.java"


# instance fields
.field private contentView:Landroid/view/View;

.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 26
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->contentView:Landroid/view/View;

    .line 27
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper$1;-><init>(Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->resizeContentView()V

    return-void
.end method

.method private getUsableHeight()I
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .local v0, "displayFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->contentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 50
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private resizeContentView()V
    .locals 5

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->getUsableHeight()I

    move-result v2

    .line 38
    .local v2, "usableHeightCurrent":I
    iget v3, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->usableHeightPrevious:I

    if-eq v2, v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 40
    .local v1, "rootViewHeight":I
    sub-int v0, v1, v2

    .line 41
    .local v0, "heightDifference":I
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v4, v1, 0x4

    if-le v0, v4, :cond_1

    .end local v0    # "heightDifference":I
    :goto_0
    sub-int v4, v1, v0

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 42
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 43
    iput v2, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->usableHeightPrevious:I

    .line 45
    .end local v1    # "rootViewHeight":I
    :cond_0
    return-void

    .line 41
    .restart local v0    # "heightDifference":I
    .restart local v1    # "rootViewHeight":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFullscreenResizable(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;-><init>(Landroid/app/Activity;)V

    .line 17
    return-void
.end method
