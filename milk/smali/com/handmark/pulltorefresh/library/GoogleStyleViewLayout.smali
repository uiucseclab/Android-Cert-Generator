.class public abstract Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
.super Landroid/widget/FrameLayout;
.source "GoogleStyleViewLayout.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/IGoogleStyleViewLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getContentSize()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 36
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->requestLayout()V

    .line 38
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 42
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->requestLayout()V

    .line 44
    return-void
.end method
