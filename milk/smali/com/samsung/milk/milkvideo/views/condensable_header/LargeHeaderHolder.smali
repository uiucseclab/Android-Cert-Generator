.class Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;
.super Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;
.source "LargeHeaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;
    }
.end annotation


# instance fields
.field private final headerTextSizeListener:Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;

.field private largeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;-><init>(Landroid/view/View;)V

    .line 16
    const v0, 0x7f06010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->largeText:Landroid/widget/TextView;

    .line 17
    new-instance v0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->largeText:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;-><init>(Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->headerTextSizeListener:Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;

    .line 18
    return-void
.end method


# virtual methods
.method public getBoundedScrollPositionFor(F)F
    .locals 1
    .param p1, "distanceY"    # F

    .prologue
    .line 22
    neg-float v0, p1

    invoke-super {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->getBoundedScrollPositionFor(F)F

    move-result v0

    return v0
.end method

.method public scrollTo(F)V
    .locals 3
    .param p1, "newY"    # F

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->scrollTo(F)V

    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->header:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->header:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->largeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->headerTextSizeListener:Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;->headerTextSizeListener:Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41
    return-void
.end method

.method public shouldSwitchHeaders(F)Z
    .locals 1
    .param p1, "velocityY"    # F

    .prologue
    .line 45
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
