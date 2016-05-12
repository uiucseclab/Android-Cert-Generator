.class public Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;
.super Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;
.source "DefaultGoogleStyleViewLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/AbstractDefaultGoogleStyleViewLayout;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 33
    return-void
.end method

.method private initInflate(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflateId"    # I

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    return-void
.end method


# virtual methods
.method protected geSubHeaderTextLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 62
    sget v0, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected getHeaderText(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 69
    sget v0, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_text:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected getInnerLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/FrameLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 76
    sget v0, Lcom/handmark/pulltorefresh/library/R$id;->fl_inner_for_google_style:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getLayoutInflateId()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_google_style:I

    return v0
.end method

.method protected initImpl(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;->getLayoutInflateId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;->initInflate(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method protected initPropertiesImpl(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 82
    return-void
.end method

.method protected onPullImpl(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 107
    return-void
.end method

.method protected pullToRefreshImpl()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected refreshingImpl()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected resetImpl()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
