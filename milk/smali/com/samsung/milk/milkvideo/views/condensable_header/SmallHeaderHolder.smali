.class Lcom/samsung/milk/milkvideo/views/condensable_header/SmallHeaderHolder;
.super Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;
.source "SmallHeaderHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;-><init>(Landroid/view/View;)V

    .line 9
    return-void
.end method


# virtual methods
.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/SmallHeaderHolder;->header:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method

.method public shouldSwitchHeaders(F)Z
    .locals 1
    .param p1, "velocityY"    # F

    .prologue
    .line 18
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
