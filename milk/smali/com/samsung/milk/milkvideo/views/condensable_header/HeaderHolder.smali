.class abstract Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;
.super Ljava/lang/Object;
.source "HeaderHolder.java"


# instance fields
.field protected header:Landroid/view/View;

.field protected showAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    .line 14
    return-void
.end method

.method private createHeaderShowAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 68
    const-string v1, "Y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 69
    .local v0, "headerShowAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    new-instance v1, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$2;-><init>(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    return-object v0
.end method


# virtual methods
.method public getBoundedScrollPositionFor(F)F
    .locals 3
    .param p1, "distanceY"    # F

    .prologue
    .line 20
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float v0, v2, p1

    .line 21
    .local v0, "newY":F
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 22
    .local v1, "topLimited":F
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->showAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->showAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->showAnimator:Landroid/animation/ObjectAnimator;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public hideOnInitialLayout()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$1;-><init>(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 64
    return-void
.end method

.method public isOffScreen()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollBy(F)V
    .locals 1
    .param p1, "distanceY"    # F

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->getBoundedScrollPositionFor(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->scrollTo(F)V

    .line 54
    return-void
.end method

.method public scrollTo(F)V
    .locals 1
    .param p1, "newY"    # F

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 27
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public abstract setTitleText(Ljava/lang/String;)V
.end method

.method public abstract shouldSwitchHeaders(F)Z
.end method

.method public show()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->createHeaderShowAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->showAnimator:Landroid/animation/ObjectAnimator;

    .line 36
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->showAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    return-void
.end method
