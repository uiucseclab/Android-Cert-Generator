.class public abstract Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;
.super Landroid/widget/FrameLayout;
.source "GoogleStyleProgressLayout.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/IGoogleStyleProgressLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static createDefaultLayoutParams(Landroid/content/Context;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    return-object v0
.end method


# virtual methods
.method public createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->createDefaultLayoutParams(Landroid/content/Context;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public setTopMargin(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 40
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 43
    :cond_0
    return-void
.end method
