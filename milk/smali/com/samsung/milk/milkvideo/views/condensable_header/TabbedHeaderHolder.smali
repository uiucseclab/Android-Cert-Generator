.class Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;
.super Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;
.source "TabbedHeaderHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;-><init>(Landroid/view/View;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getBoundedScrollPositionFor(F)F
    .locals 1
    .param p1, "distanceY"    # F

    .prologue
    .line 12
    neg-float v0, p1

    invoke-super {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->getBoundedScrollPositionFor(F)F

    move-result v0

    return v0
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public shouldSwitchHeaders(F)Z
    .locals 1
    .param p1, "velocityY"    # F

    .prologue
    .line 21
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
